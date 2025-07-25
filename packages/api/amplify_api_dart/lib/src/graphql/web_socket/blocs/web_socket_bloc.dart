// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_api_dart/src/graphql/web_socket/blocs/is_windows/is_windows.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/blocs/subscriptions_bloc.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/services/web_socket_service.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/state/web_socket_state.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/state/ws_subscriptions_state.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/types/connectivity_platform.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/types/process_life_cycle.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/types/subscriptions_event.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/types/web_socket_types.dart';
import 'package:amplify_core/amplify_core.dart' hide SubscriptionEvent;
// ignore: implementation_imports
import 'package:amplify_core/src/config/amplify_outputs/api_outputs.dart';
import 'package:async/async.dart';
import 'package:meta/meta.dart';
import 'package:stream_transform/stream_transform.dart';

part '../types/web_socket_event.dart';

/// {@template amplify_api.web_socket_bloc}
/// Internal state machine for the web socket connections.
/// Listens for [WebSocketEvent] and maps them to appropriate business logic.
/// {@endtemplate}
@internal
class WebSocketBloc with AWSDebuggable, AmplifyLoggerMixin {
  /// {@macro api.web_socket_bloc}
  WebSocketBloc({
    required ApiOutputs config,
    required AmplifyAuthProviderRepository authProviderRepo,
    required WebSocketService wsService,
    required GraphQLSubscriptionOptions subscriptionOptions,
    required ConnectivityPlatform connectivity,
    required ProcessLifeCycle processLifeCycle,
    AWSHttpClient? pollClientOverride,
  }) : _connectivity = connectivity,
       _processLifeCycle = processLifeCycle,
       _pollClient = pollClientOverride ?? AWSHttpClient() {
    final subBlocs = <String, SubscriptionBloc<Object?>>{};

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
    _processLifeCycleSubscription = _getProcessLifecycleStream();
    _stateSubscription = blocStream.listen(_emit);
    add(const InitEvent());
  }

  final blocId = uuid();

  @override
  String get runtimeTypeName => 'WebSocketBloc - $blocId';

  /// Default timeout response for polling
  static const Duration _pollResponseTimeout = Duration(seconds: 5);

  /// Indicates if the bloc has finished closing
  final done = Completer<void>();

  final StreamController<WebSocketState> _wsStateController =
      StreamController<WebSocketState>.broadcast(sync: true);

  /// The stream of bloc state changes.
  ///
  /// Emits the [currentState] followed by all subsequent state changes.
  Stream<WebSocketState> get stream {
    return _wsStateController.stream.startWith(_currentState);
  }

  final StreamController<WebSocketEvent> _wsEventController =
      StreamController<WebSocketEvent>.broadcast();

  /// Captures events added to the bloc and forwards them to the [_eventTransformer].
  late final Stream<WebSocketEvent> _wsEventStream = _wsEventController.stream;
  late final StreamSubscription<WebSocketState> _stateSubscription;
  late final StreamSubscription<ConnectivityStatus> _networkSubscription;
  late final StreamSubscription<ProcessStatus> _processLifeCycleSubscription;

  /// Creates a stream representing network connectivity at the hardware level.
  final ConnectivityPlatform _connectivity;

  /// Creates a stream representing the process life cycle state.
  final ProcessLifeCycle _processLifeCycle;

  /// The underlying event stream, used only in testing.
  @visibleForTesting
  Stream<WebSocketEvent> get wsEventStream => _wsEventStream;

  late WebSocketState _currentState;

  /// OVERRIDES
  ///
  ///
  ///

  /// The underlying Http client used for poll requests
  final AWSHttpClient _pollClient;

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
    _registerSubscriptionRequest(event.request);

    // Return request subscription stream
    return subBloc.responseStream;
  }

  /// Emits a new state to the bloc.
  void _emit(WebSocketState state) {
    logger.debug('Emitting next state: $state');
    _wsStateController.add(state);
    _currentState = state;
  }

  /// Only add an event if the bloc is open.
  void _safeAdd(WebSocketEvent event) {
    if (_wsEventController.isClosed ||
        _currentState is DisconnectedState ||
        _currentState is PendingDisconnect) {
      return;
    }
    add(event);
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
    } else if (event is ProcessResumeEvent) {
      yield* _processResumed();
    } else if (event is PollSuccessEvent) {
      yield* _pollSuccess();
    } else if (event is PollFailedEvent) {
      yield* _pollFailure();
    } else if (event is ShutdownEvent) {
      yield* _shutdown();
    } else if (event is ReconnectEvent) {
      yield* _reconnect();
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
    logger.verbose('Closing subscription ${event.subscriptionId}...');
    yield* _sendEventToSubBloc(event);

    _currentState.subscriptionBlocs.remove(event.subscriptionId);

    if (_currentState.subscriptionBlocs.isEmpty) {
      add(const ShutdownEvent());
    }
    logger.verbose('Closed subscription ${event.subscriptionId}...');
  }

  /// Receives connection ack message from ws channel.
  /// Moves ConnectingState => ConnectedState, and registers sub blocs
  Stream<WebSocketState> _connectionAck(
    ConnectionAckMessageEvent event,
  ) async* {
    assert(
      _currentState is ConnectingState,
      'We should never evaluate a connection ack message while not connecting.',
    );

    final timeoutDuration = Duration(
      milliseconds: event.payload.connectionTimeoutMs,
    );
    final timeoutTimer = RestartableTimer(
      timeoutDuration,
      () => _timeout(timeoutDuration),
    );

    final pollTimer = Timer.periodic(
      _currentState.options.pollInterval,
      // ignore: invalid_use_of_internal_member
      (_) => WebSocketOptions.autoReconnect ? _poll() : () {},
    );

    final connectedState = (_currentState as ConnectingState).connected(
      timeoutTimer,
      pollTimer,
    );

    yield connectedState;

    logger.verbose('Web socket connection established. Registered timer.');

    // register any outstanding subs
    await Future.wait(
      connectedState.subscriptionBlocs.values.map((bloc) async {
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
    const exception = NetworkException(
      'Error occurred while connecting to the websocket',
    );

    _shutdownWithException(exception, StackTrace.current);
  }

  // Init connection and add channel events to the event stream.
  Stream<WebSocketState> _init(InitEvent event) async* {
    assert(
      _currentState is DisconnectedState ||
          _currentState is ConnectingState ||
          _currentState is ReconnectingState,
      'Bloc should not be in ${_currentState.runtimeType} when calling init.',
    );

    _currentState.service
        .init(_currentState)
        .listen(
          // In some cases, the service will keep getting messages during/after
          // disconnect. Ignore those messages.
          _safeAdd,
          onError: (Object error, StackTrace st) {
            final exception = NetworkException(
              'Exception from WebSocketService.',
              underlyingException: error.toString(),
            );
            _shutdownWithException(exception, st);
          },
        );

    yield _currentState.connecting(networkState: NetworkState.connected);
  }

  // Resets the timeout when a keep alive [ka] message is received
  Stream<WebSocketState> _ka() async* {
    final state = _currentState;
    if (state is ConnectedState) {
      state.timeoutTimer.reset();
      logger.verbose('Reset timer');
    }
    // TODO(dnys1): Yield broken on web debug build.
    yield* const Stream.empty();
  }

  /// Handles network loss events by triggering reconnection flow.
  Stream<WebSocketState> _networkLoss() async* {
    final state = _currentState;
    if (state is ConnectedState) {
      yield state.reconnecting(networkState: NetworkState.disconnected);
      add(const ReconnectEvent());
    }
    // TODO(dnys1): Yield broken on web debug build.
    yield* const Stream.empty();
  }

  /// Triggers reconnect work flow if not already connected.
  Stream<WebSocketState> _networkFound() async* {
    final state = _currentState;
    if (state is ConnectingState &&
        state.networkState == NetworkState.disconnected) {
      yield state.reconnecting();
      add(const ReconnectEvent());
    }
    // TODO(dnys1): Yield broken on web debug build.
    yield* const Stream.empty();
  }

  Stream<WebSocketState> _processResumed() async* {
    final state = _currentState;
    if (state is ConnectedState) {
      yield state.reconnecting(networkState: NetworkState.disconnected);
      add(const ReconnectEvent());
    }
    // TODO(dnys1): Yield broken on web debug build.
    yield* const Stream.empty();
  }

  /// Handle successful polls
  Stream<WebSocketState> _pollSuccess() async* {
    // TODO(dnys1): Yield broken on web debug build.
    yield* const Stream.empty();
  }

  /// Handle unsuccessful polls
  Stream<WebSocketState> _pollFailure() async* {
    final state = _currentState;
    if (state is ConnectedState) {
      yield state.reconnecting(networkState: NetworkState.disconnected);
      add(const ReconnectEvent());
    }
    // TODO(dnys1): Yield broken on web debug build.
    yield* const Stream.empty();
  }

  /// First establishes there is a connection to AppSync
  /// Then clears web socket connection and restarts init workflow
  /// Sends [NetworkException] when unable to reach AppSync
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
    } on Exception catch (e, st) {
      // Ping failed, close down
      _shutdownWithException(
        NetworkException(
          'Unable to recover network connection, web socket will close.',
          recoverySuggestion: 'Check internet connection.',
          underlyingException: e,
        ),
        st,
      );
    }

    // TODO(dnys1): Yield broken on web debug build.
    yield* const Stream.empty();
  }

  /// Sends registration message on ws channel when connected
  void _registerSubscriptionRequest(GraphQLRequest<Object?> request) {
    final currentState = _currentState;

    // Wait for connection to finish establishing
    if (currentState is! ConnectedState) {
      return;
    }

    // Send Registration messages over the open connection
    assert(
      currentState.subscriptionBlocs.containsKey(request.id),
      'We should always have a matching subscription bloc.',
    );

    final subscriptionBloc = currentState.subscriptionBlocs[request.id]!;

    // Check if subscription has already been setup
    if (subscriptionBloc.currentState is SubscriptionListeningState) {
      return;
    }

    currentState.service
        .register(currentState, request)
        .onError<Object>(subscriptionBloc.addResponseError);
  }

  /// Shut down the bloc & clean up
  Stream<WebSocketState> _shutdown() async* {
    logger.verbose('Shutting down bloc');
    yield _currentState.shutdown();
    // TODO(dnys1): Yield broken on web debug build.
    yield* const Stream.empty();

    await _close();
  }

  /// Sends stop message
  Stream<WebSocketState> _unsubscribe(UnsubscribeEvent event) async* {
    if (_currentState is! ConnectedState) {
      return;
    }
    await _currentState.service.unsubscribe(event.request.id);
    // TODO(dnys1): Yield broken on web debug build.
    yield* const Stream.empty();
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
      throw NetworkException(
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
      // TODO(equartey): https://github.com/fluttercommunity/plus_plugins/issues/1382
      if (!isWindows()) _networkSubscription.cancel(),
      _processLifeCycleSubscription.cancel(),
      Future.value(_pollClient.close()),
      _stateSubscription.cancel(),
      _wsEventController.close(),
      _wsStateController.close(),
    ]);

    done.complete();
    logger.verbose('Successfully shut down bloc');
  }

  /// Connectivity stream monitors network availability on a hardware level.
  StreamSubscription<ConnectivityStatus> _getConnectivityStream() {
    var prev = ConnectivityStatus.disconnected;
    return _connectivity.onConnectivityChanged.listen(
      (status) {
        // ignore: invalid_use_of_internal_member
        if (!WebSocketOptions.autoReconnect) {
          // shutdown the socket when autoReconnect is turned off
          if (status == ConnectivityStatus.disconnected &&
              prev == ConnectivityStatus.connected) {
            _shutdownWithException(
              const NetworkException(
                'Unable to recover network connection, web socket will close.',
                recoverySuggestion: 'Check internet connection.',
              ),
              StackTrace.current,
            );
          }
        } else if (status == ConnectivityStatus.connected) {
          add(const NetworkFoundEvent());
        } else if (status == ConnectivityStatus.disconnected) {
          add(const NetworkLossEvent());
        }
        prev = status;
      },
      onError: (Object e, StackTrace st) =>
          logger.error('Error in connectivity stream $e, $st'),
    );
  }

  /// Process life cycle stream monitors when the process resumes from a paused state.
  StreamSubscription<ProcessStatus> _getProcessLifecycleStream() {
    var prev = ProcessStatus.detached;
    return _processLifeCycle.onStateChanged.listen(
      (state) {
        if (_isResuming(state, prev)) {
          // ignore: invalid_use_of_internal_member
          if (!WebSocketOptions.autoReconnect) {
            _shutdownWithException(
              const NetworkException(
                'Unable to recover network connection, web socket will close.',
                recoverySuggestion: 'Avoid pausing the process.',
              ),
              StackTrace.current,
            );
          } else {
            add(const ProcessResumeEvent());
          }
        }

        prev = state;
      },
      onError: (Object e, StackTrace st) =>
          logger.error('Error in process life cycle stream $e, $st'),
    );
  }

  bool _isResuming(ProcessStatus current, ProcessStatus previous) {
    if (previous != ProcessStatus.paused) return false;

    return current == ProcessStatus.hidden ||
        current == ProcessStatus.inactive ||
        current == ProcessStatus.resumed;
  }

  Future<void> _poll() async {
    try {
      final res = await _sendPollRequest();
      await checkPollResponse(res);
      _safeAdd(const PollSuccessEvent());
    } on Exception catch (e) {
      _safeAdd(PollFailedEvent(e));
    }
  }

  /// Returns a [WsSubscriptionBloc<T>] and stores in state
  SubscriptionBloc<T> _saveRequest<T>(SubscribeEvent<T> event) {
    logger.debug('Subscription event for: ${event.request.id}');
    // Prevent duplicate errors
    if (_currentState.subscriptionBlocs.containsKey(event.request.id)) {
      return _currentState.subscriptionBlocs[event.request.id]
          as SubscriptionBloc<T>;
    }

    final callback = _wrapOnEstablished(event.onEstablished);

    // Init a subscription state machine with <T> and save it in state
    final subState = SubscriptionPendingState<T>(event.request, callback, this);
    final subBloc = SubscriptionBloc(subState);
    _currentState.subscriptionBlocs[event.request.id] = subBloc;

    return subBloc;
  }

  /// Takes a WebSocketEvent and sends it to the corresponding sub bloc
  Stream<WebSocketState> _sendEventToSubBloc(SubscriptionEvent event) async* {
    final id = event.subscriptionId;
    assert(
      _currentState.subscriptionBlocs.containsKey(id),
      'Bloc is missing subscription for $id',
    );
    _currentState.subscriptionBlocs[id]!.add(event);
    // TODO(dnys1): Yield broken on web debug build.
    yield* const Stream.empty();
  }

  /// GET request on the configured AppSync url via the `/poll` endpoint
  Future<AWSBaseHttpResponse> _sendPollRequest() {
    final req = AWSHttpRequest.get(_currentState.pollUri);

    final op = req.send(client: _pollClient);
    return op.response.timeout(
      _pollResponseTimeout,
      onTimeout: () {
        op.cancel();
        throw const NetworkException('Timeout while polling AppSync.');
      },
    );
  }

  /// Sends an exception to all sub blocs and cleans up this bloc
  void _shutdownWithException(Exception e, StackTrace st) {
    _emit(_currentState.failed(e, st));
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

    return _shutdownWithException(exception, StackTrace.current);
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
