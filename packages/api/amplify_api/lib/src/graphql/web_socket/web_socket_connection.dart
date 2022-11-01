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
import 'dart:collection';
import 'dart:convert';

import 'package:amplify_api/src/decorators/web_socket_auth_utils.dart';
import 'package:amplify_api/src/graphql/web_socket/types/web_socket_types.dart';
import 'package:amplify_api/src/graphql/web_socket/web_socket_message_stream_transformer.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:async/async.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:meta/meta.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';

/// 1001, going away
const _defaultCloseStatus = status.normalClosure;
const Duration _defaultPingInterval = Duration(seconds: 30);
const Duration _defaultRetryTimeout = Duration(seconds: 5);

/// Exposed WebSocketChannel hook used in testing.
@visibleForTesting
typedef WebSocketFactory = WebSocketChannel Function(Uri connectionUri);

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
    GraphQLSubscriptionOptions? subscriptionOptions,
  }) {
    _logger = logger;
    _subscriptionOptions = subscriptionOptions;
    _pingUri = Uri.parse(_config.endpoint).replace(path: 'ping');

    // Establish HubEvents Stream
    Amplify.Hub.addChannel(HubChannel.Api, _hubEventsController.stream);
  }

  /// Allowed protocols for this connection.
  static const webSocketProtocols = ['graphql-ws'];
  late final AmplifyLogger _logger;

  // Config and auth repo together determine how to authorize connection URLs
  // and subscription registration messages.
  final AmplifyAuthProviderRepository _authProviderRepo;
  final AWSApiConfig _config;

  /// Manages all incoming messages from server. Primarily handles messages related
  /// to the entire connection. E.g. connection_ack, connection_error, ka, error.
  /// Other events (for single subscriptions) rebroadcast to rebroadcastController.
  WebSocketChannel? _channel;

  /// Expose Channel for testing
  @visibleForTesting
  WebSocketChannel? get channel => _channel;

  @visibleForTesting
  set stateMachine(WebSocketChannel? channel) {
    _isTesting();
    _channel = channel;
  }

  StreamSubscription<WebSocketMessage>? _subscription;
  StreamSubscription<ConnectivityResult>? _network;
  final StreamController<ApiHubEvent> _hubEventsController =
      StreamController<ApiHubEvent>.broadcast();
  RestartableTimer? _timeoutTimer;

  AWSHttpClient? _pingClient = httpClientOverride ?? AWSHttpClient();
  Timer? _pingTimer;
  late Uri _pingUri;
  bool _hasNetwork = true;
  bool _hasConnectionBroken = false;
  final Set<GraphQLRequest<Object?>> _subscriptionRequests = HashSet(
    hashCode: ((p0) => p0.id.hashCode),
    equals: (x, y) => x.id == y.id,
  );

  /// Subscription options
  late final GraphQLSubscriptionOptions? _subscriptionOptions;

  static void _isTesting() {
    if (!zAssertsEnabled) throw StateError('Can only be called in tests');
  }

  /// Overrides
  static AWSHttpClient? _httpClientOverride;
  static Connectivity? _connectivityOverride;
  static WebSocketFactory? _webSocketFactoryOverride;

  /// The underlying connectivity object getter, for use in testing.
  @visibleForTesting
  static AWSHttpClient? get httpClientOverride => _httpClientOverride;

  /// The underlying connectivity object setter, for use in testing.
  @visibleForTesting
  static set httpClientOverride(
    AWSHttpClient? httpClientOverride,
  ) {
    _isTesting();
    _httpClientOverride = httpClientOverride;
  }

  /// The underlying connectivity object getter, for use in testing.
  @visibleForTesting
  static Connectivity? get connectivityOverride => _connectivityOverride;

  /// The underlying connectivity object setter, for use in testing.
  @visibleForTesting
  static set connectivityOverride(
    Connectivity? connectivityOverride,
  ) {
    _isTesting();
    _connectivityOverride = connectivityOverride;
  }

  /// The underlying web socket getter, for use in testing.
  @visibleForTesting
  static WebSocketFactory? get webSocketFactoryOverride =>
      _webSocketFactoryOverride;

  /// The underlying web socket setter, for use in testing.
  @visibleForTesting
  static set webSocketFactoryOverride(
    WebSocketFactory? webSocketFactoryOverride,
  ) {
    _isTesting();
    _webSocketFactoryOverride = webSocketFactoryOverride;
  }

  /// Re-broadcasts incoming messages for child streams (single GraphQL subscriptions).
  /// start_ack, data, error
  @visibleForTesting
  final StreamController<WebSocketMessage> rebroadcastController =
      StreamController<WebSocketMessage>.broadcast();
  Stream<WebSocketMessage> get _messageStream => rebroadcastController.stream;

  // Manage initial connection state.
  var _initMemo = AsyncMemoizer<void>();
  Completer<void> _connectionPending = Completer<void>();
  Completer<void> _connectionReady = Completer<void>();
  Completer<void> _connectionStart = Completer<void>();
  Completer<void> _reconnectPending = Completer<void>();

  /// Fires when connection is waiting for the first `connection_ack` message.
  @visibleForTesting
  Future<void> get connectionPending => _connectionPending.future;

  /// Fires when the connection is ready to be listened to after the first
  /// `connection_ack` message.
  Future<void> get ready => _connectionReady.future;

  /// Fires when connection is waiting for the `start_ack` message.
  @visibleForTesting
  Future<void> get connectionStart => _connectionStart.future;

  /// Fires when reconnection is occurring.
  @visibleForTesting
  Future<void> get reconnectPending => _reconnectPending.future;

  /// Connects _subscription stream to _onData handler.
  @visibleForTesting
  StreamSubscription<WebSocketMessage> getStreamSubscription(
    Stream<dynamic> stream,
  ) {
    return stream.transform(const WebSocketMessageStreamTransformer()).listen(
      _onData,
      onDone: () async {
        _logger.verbose('Web socket connection done.');

        _resetConnectionInit();
        await _resetConnectionVariables();
      },
      onError: (Object e, StackTrace st) {
        if (_hasNetwork && _subscriptionRequests.isNotEmpty) {
          _hubEventsController.add(SubscriptionHubEvent.connecting());
          _reEstablishConnection();
        } else {
          _hubEventsController.add(SubscriptionHubEvent.failed());
          _connectionError(
            Error.throwWithStackTrace(
              ApiException('Connection failed.', underlyingException: e),
              st,
            ),
          );
        }
      },
      // Todo(equartey): investigate why this breaks onDone & onError when an error occurs.
      // cancelOnError: true,
    );
  }

  /// Connects _network stream for connection status.
  @visibleForTesting
  StreamSubscription<ConnectivityResult> getStreamNetwork() {
    return (_connectivityOverride ?? Connectivity())
        .onConnectivityChanged
        .asyncExpand<ConnectivityResult>(
            (ConnectivityResult connectivityResult) async* {
      switch (connectivityResult) {
        case ConnectivityResult.ethernet:
        case ConnectivityResult.mobile:
        case ConnectivityResult.wifi:
          _hasNetwork = true;
          // only reconnect if connection was lost
          if (_hasConnectionBroken) await _reEstablishConnection();
          break;
        case ConnectivityResult.none:
          _hasNetwork = false;
          // Only consider the connection broken if already established.
          // Should be noted there is an issue with ios where ConnectivityResult
          // is `none` despite a valid connection. Relevant issues are:
          // https://github.com/fluttercommunity/plus_plugins/issues/852
          // https://github.com/fluttercommunity/plus_plugins/issues/858
          if (_connectionReady.isCompleted) {
            _hasConnectionBroken = true;
            _hubEventsController.add(SubscriptionHubEvent.connecting());
          }
          break;
        default:
          break;
      }
    }).listen(null);
  }

  /// Connects WebSocket _channel to _subscription stream but does not send connection
  /// init message.
  @visibleForTesting
  Future<void> connect(Uri connectionUri) async {
    _channel = _webSocketFactoryOverride?.call(connectionUri) ??
        WebSocketChannel.connect(
          connectionUri,
          protocols: webSocketProtocols,
        );
    _subscription = getStreamSubscription(_channel!.stream);
    _network = getStreamNetwork();
  }

  void _connectionError(ApiException exception) {
    if (!_connectionReady.isCompleted) {
      _connectionReady.completeError(exception);
    }
    _channel?.sink.close();
    _resetConnectionInit();
    _resetConnectionVariables();
  }

  // Reset connection init variables so it can be re-attempted.
  void _resetConnectionInit() {
    _initMemo = AsyncMemoizer<void>();
    _connectionReady = Completer<void>();
    _connectionPending = Completer<void>();
    _connectionStart = Completer<void>();
  }

  /// Closes the WebSocket connection and cleans up local variables.
  @override
  void close([int closeStatus = _defaultCloseStatus]) {
    _logger.verbose('Closing web socket connection.');
    _hubEventsController.add(SubscriptionHubEvent.disconnected());

    _resetConnectionInit();
    _resetConnectionVariables(closeStatus);

    _subscriptionRequests.clear();
    _pingClient?.close();
  }

  /// Initiate polling
  void _startPolling() {
    final interval = _subscriptionOptions?.pingInterval ?? _defaultPingInterval;

    _pingTimer?.cancel();
    _pingTimer = Timer.periodic(interval, (_) => _poll());
    _poll();
  }

  /// Pings AppSync to verify health of connection. Failed pings trigger
  /// reconnection through retry/back off.
  Future<void> _poll() async {
    try {
      final res = await _getPollRequest();
      final body = await utf8.decodeStream(res.body);
      if (body != 'healthy') {
        throw ApiException(
          'Subscription connection broken. AppSync status check returned "$body", attempting reconnection',
          recoverySuggestion:
              'Unable to ping the configured AppSync URL. Check internet connection or the configured AppSync URL',
        );
      }
    } on Exception catch (e) {
      if (e is ApiException) {
        _logger.warn(e.message, e.recoverySuggestion);
      }
      _pingTimer?.cancel();
      _timeoutTimer?.cancel();

      // flag for reconnection when network returns
      _hasConnectionBroken = true;

      // only try to recover if network is turned on
      if (_hasNetwork) {
        _hubEventsController.add(SubscriptionHubEvent.connecting());
        await _reEstablishConnection();
      }
    }
  }

  /// Attempts to connect to the configured graphql endpoint.
  /// Upon successful ping, a new websocket connection is initialized.
  Future<void> _reEstablishConnection() async {
    final retryStrategy =
        _subscriptionOptions?.retryOptions ?? const RetryOptions();

    try {
      _hasConnectionBroken = false;

      await retryStrategy.retry(
        // Make a GET request
        () => _getPollRequest().timeout(_defaultRetryTimeout),
      );
      _resetConnectionInit();
      await _resetConnectionVariables();
      _reconnectPending.complete();

      // we can reach AppSync, precede with reconnect
      await _init();

      _reconnectPending = Completer<void>();

      return;
    } on Exception catch (e) {
      // no network, can't reconnect
      _hubEventsController.add(SubscriptionHubEvent.disconnected());
      close();
      _connectionError(
        ApiException(
          'Unable to recover network connection, web socket will close.',
          recoverySuggestion: 'Check internet connection.',
          underlyingException: e,
        ),
      );
    }
  }

  /// GET request on the configured AppSync url via the `/ping` endpoint
  Future<AWSBaseHttpResponse> _getPollRequest() {
    return AWSHttpRequest.get(
      _pingUri,
    ).send(client: _pingClient).response;
  }

  /// Clear variables used to track subscriptions and other helper variables
  /// related to web socket connection.
  Future<void> _resetConnectionVariables([
    int closeStatus = _defaultCloseStatus,
  ]) async {
    final reason =
        closeStatus == _defaultCloseStatus ? 'client closed' : 'unknown';

    await _channel?.sink.close(closeStatus, reason);
    await _channel?.sink.done;

    await _network?.cancel();
    await _subscription?.cancel();
    _timeoutTimer?.cancel();
    _pingTimer?.cancel();

    _channel = null;
    _network = null;
    _subscription = null;
    _timeoutTimer = null;
    _pingTimer = null;
  }

  /// Initializes the connection.
  ///
  /// Connects to WebSocket, sends connection message and resolves future once
  /// connection_ack message received from server. If the connection was previously
  /// established then will return previously completed future.
  Future<void> init() => _initMemo.runOnce(
        () {
          _hubEventsController.add(SubscriptionHubEvent.connecting());
          return _init();
        },
      );

  Future<void> _init() async {
    // Prep new connection with a clean slate
    if (_connectionReady.isCompleted || _channel != null) {
      _connectionReady = Completer<void>();
      _connectionPending = Completer<void>();
      await _resetConnectionVariables();
    }

    final connectionUri =
        await generateConnectionUri(_config, _authProviderRepo);
    await connect(connectionUri);

    _connectionPending.complete();

    send(WebSocketConnectionInitMessage());

    await ready;

    _pingClient ??= httpClientOverride ?? AWSHttpClient();

    // connection ready, start polling
    _startPolling();

    // resubscribe to previous subscriptions
    for (final req in _subscriptionRequests) {
      final subscriptionRegistrationMessage =
          await generateSubscriptionRegistrationMessage(
        _config,
        id: req.id,
        authRepo: _authProviderRepo,
        request: req,
      );
      send(subscriptionRegistrationMessage);
    }

    _hubEventsController.add(SubscriptionHubEvent.connected());
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
    _subscriptionRequests.add(request);
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
      (response) {
        // Check if closed to stop messages related to errors after cancel.
        // e.g. Cancel a failed subscription, AppSync sends errors here.
        if (!controller.isClosed) {
          controller.add(response);
        }
      },
      onError: controller.addError,
      onDone: controller.close,
      cancelOnError: true,
    );

    _sendSubscriptionRegistrationMessage(request).catchError((Object e) {
      _logger.error(e.toString());
      controller.addError(e);
      _hubEventsController.add(SubscriptionHubEvent.failed());
    });
    return controller.stream;
  }

  /// Cancels a subscription.
  void _cancel(String subscriptionId) {
    _logger.info('Attempting to cancel Operation $subscriptionId');
    send(WebSocketStopMessage(id: subscriptionId));
    _subscriptionRequests.removeWhere((r) => r.id == subscriptionId);
    if (_subscriptionRequests.isEmpty) close();
  }

  /// Serializes a message as JSON string and sends over WebSocket _channel.
  @visibleForTesting
  void send(WebSocketMessage message) {
    final msgJson = json.encode(message.toJson());
    _channel?.sink.add(msgJson);
  }

  /// Times out the connection (usually if a keep alive has not been received in time).
  void _timeout(Duration timeoutDuration) {
    _timeoutTimer?.cancel();
    _hubEventsController.add(SubscriptionHubEvent.disconnected());
    rebroadcastController.addError(
      TimeoutException(
        'Connection timeout',
        timeoutDuration,
      ),
    );
    close();
  }

  /// Handles incoming data on the WebSocket.
  ///
  /// Here, handle connection-wide messages and pass subscription events to
  /// `rebroadcastController`.
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
        rebroadcastController.addError(
          ApiException(
            'Error in GraphQL subscription.',
            underlyingException: wsError,
          ),
        );
        return;
      default:
        break;
    }

    // Re-broadcast other message types related to single subscriptions.
    rebroadcastController.add(message);
  }
}
