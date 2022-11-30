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

import 'package:amplify_api/src/graphql/web_socket/blocs/ws_subscriptions_bloc.dart';
import 'package:amplify_api/src/graphql/web_socket/services/web_socket_service.dart';
import 'package:amplify_api/src/graphql/web_socket/state/web_socket_state.dart';
import 'package:amplify_api/src/graphql/web_socket/state/ws_subscriptions_state.dart';
import 'package:amplify_api/src/graphql/web_socket/types/web_socket_types.dart';
import 'package:amplify_api/src/graphql/web_socket/types/ws_subscriptions_event.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:async/async.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:meta/meta.dart';

part '../types/web_socket_event.dart';

/// {@template amplify_api.web_socket_bloc}
/// Internal state machine for the web socket connections.
/// Listens for [WebSocketEvent] and maps them to appropriate business logic.
/// {@endtemplate}
@internal
class WebSocketBloc with AWSDebuggable, AmplifyLoggerMixin {
  /// {@macro api.web_socket_bloc}
  WebSocketBloc({
    required AWSApiConfig config,
    required AmplifyAuthProviderRepository authProviderRepo,
    required WebSocketService wsService,
    required GraphQLSubscriptionOptions subscriptionOptions,
    AWSHttpClient? pollClientOverride,
    Connectivity? connectivityOverride,
  }) {
    _pollClientOverride = pollClientOverride;
    _connectivityOverride = connectivityOverride;

    _pollClient = _pollClientOverride ?? AWSHttpClient();

    final subBlocs = <String, WsSubscriptionBloc<Object?>>{};

    _currentState = DisconnectedState(
      config,
      authProviderRepo,
      NetworkState.connected,
      IntendedState.connected,
      wsService,
      subBlocs,
      subscriptionOptions,
    );
    final blocStream = _wsEventStream.asyncExpand(_eventTransformer);
    _networkSubscription = _getConnectivityStream();
    _stateSubscription = blocStream.listen(_emit);
  }

  @override
  String get runtimeTypeName => 'WebSocketBloc';

  /// Default timeout for retry/back off
  final Duration _retryTimeout = const Duration(seconds: 5);

  /// Indicates if the bloc has finished closing
  final done = Completer<void>();

  final StreamController<WebSocketState> _wsStateController =
      StreamController<WebSocketState>.broadcast(sync: true);

  /// The stream of bloc state changes.
  ///
  /// Emits the [currentState] followed by all subsequent state changes.
  Stream<WebSocketState> get stream async* {
    yield _currentState;
    yield* _wsStateController.stream;
  }

  final StreamController<WebSocketEvent> _wsEventController =
      StreamController<WebSocketEvent>.broadcast();

  /// Captures events added to the bloc and forwards them to the [_eventTransformer].
  late final Stream<WebSocketEvent> _wsEventStream = _wsEventController.stream;
  late final StreamSubscription<WebSocketState> _stateSubscription;
  late final StreamSubscription<ConnectivityResult> _networkSubscription;

  /// The underlying event stream, used only in testing.
  @visibleForTesting
  Stream<WebSocketEvent> get wsEventStream => _wsEventStream;

  late WebSocketState _currentState;

  /// OVERRIDES
  ///
  ///
  ///

  /// The underlying Http client used for poll requests
  late final AWSHttpClient _pollClient;

  /// Overrides
  late final AWSHttpClient? _pollClientOverride;
  late final Connectivity? _connectivityOverride;

  /// The current state of the bloc.
  WebSocketState get currentState => _currentState;

  /// WEB SOCKET BLOC FUNCTIONS
  ///
  ///
  ///
  ///

  /// Adds an event to the Bloc.
  void add(WebSocketEvent event) {
    _wsEventController.add(event);
  }

  /// Subscribes to the given GraphQL request.
  ///
  /// If there is an error subscribing to the request, it is added to the stream.
  Stream<GraphQLResponse<T>> subscribe<T>(SubscribeEvent<T> event) {
    assert(
      _currentState is! PendingDisconnect,
      'This bloc is closing, subscribe() should have been called on a new bloc.',
    );

    // Create a [WsSubscriptionBloc<T>] and store in state
    final subBloc = _saveRequest<T>(event);

    // Add subscribe event to [WebSocketBloc]
    add(RegistrationEvent(event.request));

    // Return request subscription stream
    return subBloc.responseStream;
  }

  /// Emits a new state to the bloc.
  void _emit(WebSocketState state) {
    logger.debug('Emitting next state: $state');
    _wsStateController.add(state);
    _currentState = state;
  }

  Stream<WebSocketState> _eventTransformer(WebSocketEvent event) async* {
    logger.verbose(event.toString());
    // [WebSocketBloc] Events
    if (event is ConnectionAckMessageEvent) {
      yield* _connectionAck(event);
    } else if (event is ConnectionErrorEvent) {
      yield* _connectionError(event);
    } else if (event is InitEvent) {
      yield* _init(event);
    } else if (event is KeepAliveEvent) {
      yield* _ka();
    } else if (event is NetworkLossEvent) {
      yield* _networkLoss();
    } else if (event is NetworkFoundEvent) {
      yield* _networkFound();
    } else if (event is PollSuccessEvent) {
      yield* _pollSuccess();
    } else if (event is PollFailedEvent) {
      yield* _pollFailure();
    } else if (event is ShutdownEvent) {
      yield* _shutdown();
    } else if (event is ReconnectEvent) {
      yield* _reconnect();
    } else if (event is RegistrationEvent) {
      yield* _registration(event);
    } else if (event is UnsubscribeEvent) {
      yield* _unsubscribe(event);
    }
    // [WsSubscriptionBloc] Events
    else if (event is SubscriptionComplete) {
      yield* _complete(event);
    } else if (event is SubscriptionDataEvent) {
      yield* _sendEventToSubBloc(event);
    } else if (event is SubscriptionErrorEvent) {
      yield* _sendEventToSubBloc(event);
    } else if (event is SubscriptionStartAckEvent) {
      yield* _sendEventToSubBloc(event);
    }
  }

  /// EVENT HANDLERS
  ///
  ///
  ///
  ///

  // Send to sub bloc but also clean up in this bloc
  Stream<WebSocketState> _complete(SubscriptionComplete event) async* {
    yield* _sendEventToSubBloc(event);

    _currentState.subscriptionBlocs.remove(event.subscriptionId);

    if (_currentState.subscriptionBlocs.isEmpty) {
      add(const ShutdownEvent());
    }
  }

  /// Receives connection ack message from ws channel.
  /// Moves ConnectingState => ConnectedState, and registers sub blocs
  Stream<WebSocketState> _connectionAck(
    ConnectionAckMessageEvent event,
  ) async* {
    assert(
      _currentState is ConnectingState,
      'We should never receive an connection ack message while not connecting.',
    );

    final timeoutDuration =
        Duration(milliseconds: event.payload.connectionTimeoutMs);
    final timeoutTimer = RestartableTimer(
      timeoutDuration,
      () => _timeout(timeoutDuration),
    );

    final pollTimer =
        Timer.periodic(_currentState.options.pollInterval, (_) => _poll());

    final connectedState = (_currentState as ConnectingState).connected(
      timeoutTimer,
      pollTimer,
    );

    yield connectedState;

    logger.verbose('Web socket connection established. Registered timer.');

    // register any outstanding subs
    await Future.wait(
      connectedState.subscriptionBlocs.values.map((
        bloc,
      ) async {
        assert(
          bloc.currentState is SubscriptionPendingState,
          'Subscription bloc should be in pending state for registration, but is ${bloc.currentState}',
        );

        try {
          await currentState.service.register(
            connectedState,
            bloc.currentState.request,
          );
        } on Object catch (e, st) {
          bloc.addResponseError(e, st);
        }
      }),
    );
  }

  // handle connection errors on the web socket channel
  Stream<WebSocketState> _connectionError(ConnectionErrorEvent event) async* {
    const exception = ApiException(
      'Error occurred while connecting to the websocket',
    );

    yield _currentState.failed(exception);

    await _shutdownWithException(exception);
  }

  // Init connection and add channel events to the event stream.
  Stream<WebSocketState> _init(InitEvent event) async* {
    assert(
      _currentState is! ConnectedState,
      'Bloc should not be connected state when calling init.',
    );

    _currentState.service.init(_currentState).listen(
      add,
      onError: (Object error, st) {
        _emit(_currentState.failed(error));
      },
    );

    yield _currentState.connecting(networkState: NetworkState.connected);
  }

  // Resets the timeout when a keep alive [ka] message is received
  Stream<WebSocketState> _ka() async* {
    assert(_currentState is ConnectedState, 'we only time out when connected.');
    (_currentState as ConnectedState).timeoutTimer.reset();
    logger.verbose('Reset timer');
  }

  /// Handles network loss events by triggering reconnection flow.
  Stream<WebSocketState> _networkLoss() async* {
    final state = _currentState;
    if (state is ConnectedState) {
      yield state.reconnecting(networkState: NetworkState.disconnected);
      add(const ReconnectEvent());
    }
  }

  /// Triggers reconnect work flow if not already connected.
  Stream<WebSocketState> _networkFound() async* {
    final state = _currentState;
    if (state is ConnectingState &&
        state.networkState == NetworkState.disconnected) {
      yield state.reconnecting();
      add(const ReconnectEvent());
    }
  }

  /// Handle successful polls
  Stream<WebSocketState> _pollSuccess() async* {
    final state = _currentState;
    if (state is ConnectingState) {
      yield state.reconnecting();
      add(const ReconnectEvent());
    }
  }

  /// Handle unsuccessful polls
  Stream<WebSocketState> _pollFailure() async* {
    final state = _currentState;
    if (state is ConnectedState) {
      yield state.reconnecting(networkState: NetworkState.disconnected);
      add(const ReconnectEvent());
    }
  }

  /// First establishes there is a connection to AppSync
  /// Then clears web socket connection and restarts init workflow
  /// Sends [ApiException] when unable to reach AppSync
  Stream<WebSocketState> _reconnect() async* {
    assert(
      _currentState is ReconnectingState,
      'Bloc should be set to connecting before starting reconnection.',
    );
    final state = _currentState;
    try {
      // Begin reconnection with retry/back off on ping endpoint
      final res = await state.options.retryOptions.retry(
        // Make a GET request
        _sendPollRequest,
      );

      await checkPollResponse(res);

      // **Ping succeeded**

      // Prep new connection
      await state.service.close();
      for (final bloc in state.subscriptionBlocs.values) {
        bloc.add(SubscriptionPendingEvent(bloc.currentState.request.id));
      }

      // Init new connection
      add(const InitEvent());
    } on Exception catch (e) {
      // Ping failed, close down
      await _shutdownWithException(
        ApiException(
          'Unable to recover network connection, web socket will close.',
          recoverySuggestion: 'Check internet connection.',
          underlyingException: e,
        ),
      );
    }
  }

  /// Sends registration message on ws channel when connected
  /// else init's connection
  Stream<WebSocketState> _registration(RegistrationEvent event) async* {
    final currentState = _currentState;

    // Wait for connection to finish establishing
    if (currentState is ConnectingState) {
      return;
    }

    // Establish web socket connection first.
    // Registration will then happen after connection ack is received.
    if (currentState is! ConnectedState) {
      add(const InitEvent());
      return;
    }

    // Send Registration messages over the open connection
    assert(
      currentState.subscriptionBlocs.containsKey(event.request.id),
      'We should always have a matching subscription bloc.',
    );

    final subscriptionBloc = currentState.subscriptionBlocs[event.request.id]!;

    // Check if subscription has already been setup
    if (subscriptionBloc.currentState is SubscriptionListeningState) {
      return;
    }

    try {
      await currentState.service.register(
        currentState,
        event.request,
      );
    } on Object catch (e, st) {
      subscriptionBloc.addResponseError(e, st);
    }
  }

  /// Shut down the bloc & clean up
  Stream<WebSocketState> _shutdown() async* {
    yield _currentState.shutdown();
    yield* const Stream
        .empty(); // TODO(dnys1): Yield broken on web debug build.

    await _close();
  }

  /// Sends stop message
  Stream<WebSocketState> _unsubscribe(UnsubscribeEvent event) async* {
    if (_currentState is! ConnectedState) {
      return;
    }
    await _currentState.service.unsubscribe(event.req.id);
  }

  /// HELPER FUNCTIONS
  ///
  ///
  ///
  ///

  ///
  Future<void> checkPollResponse(AWSBaseHttpResponse res) async {
    final body = await res.decodeBody();
    if (body != 'healthy') {
      throw ApiException(
        'Subscription connection broken. AppSync status check returned "$body"',
        recoverySuggestion:
            'Unable to reach the configured AppSync URL. Check internet connection or the configured AppSync URL',
      );
    }
  }

  /// Disconnects the web socket connection and closes streams.
  Future<void> _close() async {
    if (_currentState is! FailureState) {
      _emit(_currentState.disconnect());
    }

    _currentState.service.close();

    await Future.wait<void>([
      _networkSubscription.cancel(),
      _pollClient.close() as Future<void>,
      _stateSubscription.cancel(),
      _wsEventController.close(),
      _wsStateController.close(),
    ]);

    done.complete();
  }

  /// Connectivity stream monitors network availability on a hardware level
  StreamSubscription<ConnectivityResult> _getConnectivityStream() {
    return (_connectivityOverride ?? Connectivity())
        .onConnectivityChanged
        .asyncExpand<ConnectivityResult>(
            (ConnectivityResult connectivityResult) async* {
      switch (connectivityResult) {
        case ConnectivityResult.ethernet:
        case ConnectivityResult.mobile:
        case ConnectivityResult.wifi:
          add(const NetworkFoundEvent());
          break;
        case ConnectivityResult.none:
          add(const NetworkLossEvent());
          break;
        default:
          break;
      }
    }).listen(null);
  }

  Future<void> _poll() async {
    try {
      final res = await _sendPollRequest();
      await checkPollResponse(res);
      add(const PollSuccessEvent());
    } on Exception catch (e) {
      add(PollFailedEvent(e));
    }
  }

  /// Returns a [WsSubscriptionBloc<T>] and stores in state
  WsSubscriptionBloc<T> _saveRequest<T>(SubscribeEvent<T> event) {
    logger.debug('Subscription event for: ${event.request.id}');
    // Prevent duplicate errors
    if (_currentState.subscriptionBlocs.containsKey(event.request.id)) {
      return _currentState.subscriptionBlocs[event.request.id]
          as WsSubscriptionBloc<T>;
    }

    final callback = _wrapOnEstablished(event.onEstablished);

    // Init a subscription state machine with <T> and save it in state
    final subState = SubscriptionPendingState<T>(event.request, callback, this);
    final subBloc = WsSubscriptionBloc(
      subState,
    );
    _currentState.subscriptionBlocs[event.request.id] = subBloc;

    return subBloc;
  }

  /// Takes a WebSocketEvent and sends it to the corresponding sub bloc
  Stream<WebSocketState> _sendEventToSubBloc(WsSubscriptionEvent event) async* {
    final id = event.subscriptionId;
    assert(
      _currentState.subscriptionBlocs.containsKey(id),
      'Bloc is missing subscription for $id',
    );
    _currentState.subscriptionBlocs[id]!.add(event);
  }

  /// GET request on the configured AppSync url via the `/poll` endpoint
  Future<AWSBaseHttpResponse> _sendPollRequest() {
    final req = AWSHttpRequest.get(
      _currentState.pollUri,
    );

    final op = req.send(client: _pollClient);
    return op.response.timeout(
      _retryTimeout,
      onTimeout: () {
        op.cancel();
        throw const ApiException('Timeout while polling AppSync.');
      },
    );
  }

  /// Sends an exception to all sub blocs and cleans up this bloc
  Future<void> _shutdownWithException(Exception e) async {
    _emit(_currentState.failed(e));
    logger.error('Shutting down with exception: $e');

    // create copy of blocs to avoid mutation errors while closing
    final subBlocs = List.of(_currentState.subscriptionBlocs.values);
    _currentState.subscriptionBlocs.clear();

    // Bubble up connection error to outstanding subscription blocs
    for (final bloc in subBlocs) {
      // Add error to bloc response stream
      bloc.addResponseError(e, null);
      // Shut down subscription bloc, we don't care for result/errors
      bloc.close().ignore();
    }

    add(const ShutdownEvent());
  }

  /// Times out the connection (usually if a keep alive has not been received in time).
  Future<void> _timeout(Duration timeoutDuration) async {
    assert(
      _currentState is ConnectedState,
      'Timeout should only occur when connected.',
    );

    final exception = TimeoutException(
      'Web Socket Connection Timeout',
      timeoutDuration,
    );

    return _shutdownWithException(exception);
  }

  /// Ensure onEstablished is only called once
  void Function() _wrapOnEstablished(void Function()? onEstablished) {
    var called = false;
    return () {
      if (called) return;
      called = true;
      onEstablished?.call();
    };
  }
}
