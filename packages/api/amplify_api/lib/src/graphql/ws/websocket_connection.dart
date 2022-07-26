import 'dart:async';
import 'dart:convert';

import 'package:amplify_api/src/decorators/authorize_websocket_message.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'websocket_message.dart';
import 'websocket_message_stream_transformer.dart';

/// {@template websocket_connection}
/// Manages connection with an AppSync backend and subscription routing.
/// {@endtemplate}
class WebSocketConnection implements Closeable {
  static const webSocketProtocols = ['graphql-ws'];

  final AmplifyAuthProviderRepository authProviderRepo;

  final AWSApiConfig _config;
  late final WebSocketChannel _channel;
  late final StreamSubscription<WebSocketMessage> _subscription;
  late final RestartableTimer _timeoutTimer;

  // Add connection error variable to throw in `init`.

  Future<void>? _initFuture;
  final Completer<void> _connectionReady = Completer<void>();

  /// Fires when the connection is ready to be listened to, i.e.
  /// after the first `connection_ack` message.
  Future<void> get ready => _connectionReady.future;

  /// Re-broadcasts messages for child streams.
  final StreamController<WebSocketMessage> _rebroadcastController =
      StreamController<WebSocketMessage>.broadcast();

  /// Incoming message stream for all events.
  Stream<WebSocketMessage> get _messageStream => _rebroadcastController.stream;

  /// {@macro websocket_connection}
  WebSocketConnection(this._config, this.authProviderRepo);

  @visibleForTesting
  StreamSubscription<WebSocketMessage> getStreamSubscription(
      Stream<dynamic> stream) {
    return stream
        .transform(const WebSocketMessageStreamTransformer())
        .listen(_onData);
  }

  /// Connects to the real time WebSocket.
  @visibleForTesting
  Future<void> connect(Uri connectionUri) async {
    _channel = WebSocketChannel.connect(
      connectionUri,
      protocols: webSocketProtocols,
    );
    _subscription = getStreamSubscription(_channel.stream);
  }

  /// Closes the WebSocket connection.
  @override
  void close() {
    _subscription.cancel();
    _channel.sink.close();
  }

  /// Initializes the connection.
  Future<void> init() {
    return _initFuture ??= _init();
  }

  Future<void> _init() async {
    // Generate a URI for the connection and all subscriptions.
    // See https://docs.aws.amazon.com/appsync/latest/devguide/real-time-websocket-client.html#handshake-details-to-establish-the-websocket-connection
    final connectionUri = await _getConnectionUri(_config, authProviderRepo);
    await connect(connectionUri);

    if (_connectionReady.isCompleted) return;
    send(WebSocketConnectionInitMessage());
    return ready;
  }

  /// Subscribes to the given GraphQL request. Returns the subscription object,
  /// or throws an [Exception] if there's an error.
  Stream<GraphQLResponse<T>> subscribe<T>(
    GraphQLRequest<T> request,
    void Function()? onEstablished,
  ) {
    if (!_connectionReady.isCompleted) {
      init();
    }
    final subRegistration = WebSocketSubscriptionRegistrationMessage(
      payload:
          SubscriptionRegistrationPayload(request: request, config: _config),
    );
    final subscriptionId = subRegistration.id!;
    return _messageStream
        .where((msg) => msg.id == subscriptionId)
        .transform(
            WebSocketSubscriptionStreamTransformer(request, onEstablished))
        .asBroadcastStream(
          onListen: (_) => send(subRegistration),
          onCancel: (_) => _cancel(subscriptionId),
        );
  }

  /// Cancels a subscription.
  void _cancel(String subscriptionId) {
    send(WebSocketMessage(
      id: subscriptionId,
      messageType: MessageType.stop,
    ));
    // TODO(equartey): if this is the only susbscription, close the connection.
  }

  /// Sends a structured message over the WebSocket.
  @visibleForTesting
  Future<void> send(WebSocketMessage message) async {
    var authorizedMessage = message;
    if (message is WebSocketSubscriptionRegistrationMessage) {
      authorizedMessage =
          await authorizeWebSocketMessage(message, _config, authProviderRepo);
    }
    final msgJson = json.encode(authorizedMessage.toJson());
    _channel.sink.add(msgJson);
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
  void _onData(WebSocketMessage message) {
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
        // print('Registered timer');
        return;
      case MessageType.connectionError:
        final wsError = message.payload as WebSocketError?;
        _connectionReady.completeError(
          wsError ??
              Exception(
                'An unknown error occurred while connecting to the WebSocket',
              ),
        );
        return;
      case MessageType.keepAlive:
        _timeoutTimer.reset();
        // print('Reset timer');
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

    // Re-broadcast unhandled messages
    _rebroadcastController.add(message);
  }
}

Future<Uri> _getConnectionUri(
    AWSApiConfig config, AmplifyAuthProviderRepository authRepo) async {
  const body = '{}';
  final authorizationHeaders = await generateAuthorizationHeaders(config,
      authRepo: authRepo, body: body);
  final encodedAuthHeaders =
      base64.encode(json.encode(authorizationHeaders).codeUnits);
  final endpointUri = Uri.parse(
      config.endpoint.replaceFirst('appsync-api', 'appsync-realtime-api'));
  return Uri(scheme: 'wss', host: endpointUri.host, path: 'graphql')
      .replace(queryParameters: <String, String>{
    'header': encodedAuthHeaders,
    'payload': base64.encode(utf8.encode(body)) // always payload of '{}'
  });
}
