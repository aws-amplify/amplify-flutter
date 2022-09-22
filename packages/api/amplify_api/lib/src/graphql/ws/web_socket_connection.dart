// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';
import 'dart:convert';

import 'package:amplify_api/src/decorators/web_socket_auth_utils.dart';
import 'package:amplify_api/src/graphql/ws/web_socket_message_stream_transformer.dart';
import 'package:amplify_api/src/graphql/ws/web_socket_types.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:async/async.dart';
import 'package:meta/meta.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';

/// 1001, going away
const _defaultCloseStatus = status.goingAway;

/// {@template amplify_api.ws.web_socket_connection}
/// Manages connection with an AppSync backend and subscription routing.
/// {@endtemplate}
@internal
class WebSocketConnection implements Closeable {
  /// {@macro amplify_api.ws.web_socket_connection}
  WebSocketConnection(
    this._config,
    this._authProviderRepo, {
    required AmplifyLogger logger,
  }) : _logger = logger;

  /// Allowed protocols for this connection.
  static const webSocketProtocols = ['graphql-ws'];
  final AmplifyLogger _logger;

  // Config and auth repo together determine how to authorize connection URLs
  // and subscription registration messages.
  final AmplifyAuthProviderRepository _authProviderRepo;
  final AWSApiConfig _config;

  // Manages all incoming messages from server. Primarily handles messages related
  // to the entire connection. E.g. connection_ack, connection_error, ka, error.
  // Other events (for single subscriptions) rebroadcast to _rebroadcastController.
  WebSocketChannel? _channel;
  StreamSubscription<WebSocketMessage>? _subscription;
  RestartableTimer? _timeoutTimer;

  // Re-broadcasts incoming messages for child streams (single GraphQL subscriptions).
  // start_ack, data, error
  final StreamController<WebSocketMessage> _rebroadcastController =
      StreamController<WebSocketMessage>.broadcast();
  Stream<WebSocketMessage> get _messageStream => _rebroadcastController.stream;

  // Manage initial connection state.
  var _initMemo = AsyncMemoizer<void>();
  Completer<void> _connectionReady = Completer<void>();

  /// Fires when the connection is ready to be listened to after the first
  /// `connection_ack` message.
  Future<void> get ready => _connectionReady.future;

  /// Connects _subscription stream to _onData handler.
  @visibleForTesting
  StreamSubscription<WebSocketMessage> getStreamSubscription(
    Stream<dynamic> stream,
  ) {
    return stream.transform(const WebSocketMessageStreamTransformer()).listen(
      _onData,
      cancelOnError: true,
      onError: (Object e) {
        _connectionError(
          ApiException('Connection failed.', underlyingException: e.toString()),
        );
      },
    );
  }

  /// Connects WebSocket channel to _subscription stream but does not send connection
  /// init message.
  @visibleForTesting
  Future<void> connect(Uri connectionUri) async {
    _channel = WebSocketChannel.connect(
      connectionUri,
      protocols: webSocketProtocols,
    );
    _subscription = getStreamSubscription(_channel!.stream);
  }

  void _connectionError(ApiException exception) {
    _connectionReady.completeError(exception);
    _channel?.sink.close();
    _resetConnectionInit();
  }

  // Reset connection init variables so it can be re-attempted.
  void _resetConnectionInit() {
    _initMemo = AsyncMemoizer<void>();
    _connectionReady = Completer<void>();
  }

  /// Closes the WebSocket connection and cleans up local variables.
  @override
  void close([int closeStatus = _defaultCloseStatus]) {
    _logger.verbose('Closing web socket connection.');
    final reason =
        closeStatus == _defaultCloseStatus ? 'client closed' : 'unknown';
    _subscription?.cancel();
    _channel?.sink.done.whenComplete(() => _channel = null);
    _channel?.sink.close(closeStatus, reason);
    _rebroadcastController.close();
    _timeoutTimer?.cancel();
    _resetConnectionInit();
  }

  /// Initializes the connection.
  ///
  /// Connects to WebSocket, sends connection message and resolves future once
  /// connection_ack message received from server. If the connection was previously
  /// established then will return previously completed future.
  Future<void> init() => _initMemo.runOnce(_init);

  Future<void> _init() async {
    final connectionUri =
        await generateConnectionUri(_config, _authProviderRepo);
    await connect(connectionUri);

    send(WebSocketConnectionInitMessage());

    return ready;
  }

  Future<void> _sendSubscriptionRegistrationMessage<T>(
    GraphQLRequest<T> request,
  ) async {
    await init(); // no-op if already connected
    final subscriptionRegistrationMessage =
        await generateSubscriptionRegistrationMessage(
      _config,
      id: request.id,
      authRepo: _authProviderRepo,
      request: request,
    );
    send(subscriptionRegistrationMessage);
  }

  /// Subscribes to the given GraphQL request. Returns the subscription object,
  /// or throws an [Exception] if there's an error.
  Stream<GraphQLResponse<T>> subscribe<T>(
    GraphQLRequest<T> request,
    void Function()? onEstablished,
  ) {
    // Create controller for this subscription so we can add errors.
    late StreamController<GraphQLResponse<T>> controller;
    controller = StreamController<GraphQLResponse<T>>.broadcast(
      onCancel: () {
        _cancel(request.id);
        controller.close();
      },
    );

    // Filter incoming messages that have the subscription ID and return as new
    // stream with messages converted to GraphQLResponse<T>.
    _messageStream
        .where((msg) => msg.id == request.id)
        .transform(
          WebSocketSubscriptionStreamTransformer(
            request,
            onEstablished,
            logger: _logger,
          ),
        )
        .listen(
          controller.add,
          onError: controller.addError,
          onDone: controller.close,
          cancelOnError: true,
        );

    _sendSubscriptionRegistrationMessage(request)
        .catchError(controller.addError);

    return controller.stream;
  }

  /// Cancels a subscription.
  void _cancel(String subscriptionId) {
    _logger.info('Attempting to cancel Operation $subscriptionId');
    send(WebSocketStopMessage(id: subscriptionId));
    // ignore: todo
    // TODO(equartey): if this is the only subscription, close the connection.
  }

  /// Serializes a message as JSON string and sends over WebSocket channel.
  @visibleForTesting
  void send(WebSocketMessage message) {
    final msgJson = json.encode(message.toJson());
    _channel!.sink.add(msgJson);
  }

  /// Times out the connection (usually if a keep alive has not been received in time).
  void _timeout(Duration timeoutDuration) {
    _rebroadcastController.addError(
      TimeoutException(
        'Connection timeout',
        timeoutDuration,
      ),
    );
  }

  /// Handles incoming data on the WebSocket.
  ///
  /// Here, handle connection-wide messages and pass subscription events to
  /// `_rebroadcastController`.
  void _onData(WebSocketMessage message) {
    _logger.verbose('websocket received message: ${prettyPrintJson(message)}');

    switch (message.messageType) {
      case MessageType.connectionAck:
        final messageAck = message.payload as ConnectionAckMessagePayload;
        final timeoutDuration = Duration(
          milliseconds: messageAck.connectionTimeoutMs,
        );
        _timeoutTimer = RestartableTimer(
          timeoutDuration,
          () => _timeout(timeoutDuration),
        );
        _connectionReady.complete();
        _logger.verbose('Connection established. Registered timer');
        return;
      case MessageType.connectionError:
        _connectionError(
          const ApiException(
            'Error occurred while connecting to the websocket',
          ),
        );
        return;
      case MessageType.keepAlive:
        _timeoutTimer?.reset();
        _logger.verbose('Reset timer');
        return;
      case MessageType.error:
        // Only handle general messages, not subscription-specific ones
        if (message.id != null) {
          break;
        }
        final wsError = message.payload as WebSocketError;
        _rebroadcastController.addError(wsError);
        return;
      default:
        break;
    }

    // Re-broadcast other message types related to single subscriptions.

    _rebroadcastController.add(message);
  }
}
