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

part '../types/web_socket_event.dart';

/// {@template amplify_api.web_socket_bloc}
/// Internal state machine for the web socket connections.
/// Listens for [WebSocketEvent] and maps them to appropriate business logic.
/// {@endtemplate}
class WebSocketBloc with AWSDebuggable, AmplifyLoggerMixin {
  /// {@macro api.web_socket_bloc}
  WebSocketBloc({
    required AWSApiConfig config,
    required AmplifyAuthProviderRepository authProviderRepo,
    required WebSocketService wsService,
  }) {
    _config = config;
    _authProviderRepo = authProviderRepo;
    final subBlocs = <String, WsSubscriptionBloc<Object?>>{};

    _currentState = DisconnectedState(
      _config,
      _authProviderRepo,
      NetworkState.connected,
      IntendedState.connected,
      wsService,
      subBlocs,
    );
    final blocStream = _wsEventStream.asyncExpand(_eventTransformer);
    _subscription = blocStream.listen(_emit);
  }

  // Config and auth repo together determine how to authorize connection URLs
  // and subscription registration messages.
  late AmplifyAuthProviderRepository _authProviderRepo;
  late AWSApiConfig _config;

  @override
  String get runtimeTypeName => 'WebSocketStateMachineBloc';

  final StreamController<WebSocketState> _wsStateController =
      StreamController<WebSocketState>.broadcast();

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
  late final StreamSubscription<WebSocketState> _subscription;

  late WebSocketState _currentState;

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
    if (_currentState is PendingDisconnect) {
      const error = ApiException(
        'Unable to perform subscribe. Web socket connection is pending disconnect, try again later.',
      );
      // ignore: close_sinks
      final controller = StreamController<GraphQLResponse<T>>.broadcast()
        ..sink.addError(error);
      return controller.stream;
    }

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
    } else if (event is PingSuccessEvent) {
      yield* _pingSuccess();
    } else if (event is PingFailedEvent) {
      yield* _pingFailure();
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
    } else if (event is WsStartAckEvent) {
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
    _sendEventToSubBloc(event);

    _currentState.subscriptionBlocs.remove(event.subscriptionId);

    if (_currentState.subscriptionBlocs.isEmpty) {
      add(const ShutdownEvent());
    }
  }

  // Receives connection ack message from ws channel.
  // Moves ConnectingState => ConnectedState, and registers sub blocs
  Stream<WebSocketState> _connectionAck(
    ConnectionAckMessageEvent event,
  ) async* {
    assert(
      _currentState is ConnectingState,
      'We should never receive an connection ack message while not connecting.',
    );

    final timeoutDuration =
        Duration(milliseconds: event.payload.connectionTimeoutMs);
    final timer = RestartableTimer(
      timeoutDuration,
      () => _timeout(timeoutDuration),
    );

    final connectedState = (_currentState as ConnectingState).connected(timer);

    yield connectedState;

    logger.verbose('Web socket connection established. Registered timer.');

    // register any outstanding subs
    await Future.wait(
      connectedState.subscriptionBlocs.values.map((
        bloc,
      ) async {
        assert(
          bloc.currentState is SubscriptionPendingState,
          'Subscription bloc should be in init state for registration',
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
  Stream<WebSocketState> _connectionError(
    ConnectionErrorEvent event,
  ) async* {
    yield _currentState.failed();

    const exception = ApiException(
      'Error occurred while connecting to the websocket',
    );

    await _sendExceptionToBlocs(exception);
  }

  // Init connection and add channel events to the event stream.
  Stream<WebSocketState> _init(InitEvent event) async* {
    assert(
      _currentState is DisconnectedState,
      'Bloc should be in a disconnected state before calling init.',
    );

    _currentState.service.init(currentState).listen(add);

    yield ((_currentState as DisconnectedState).connecting());
  }

  // Resets the timeout when a keep alive [ka] message is received
  Stream<WebSocketState> _ka() async* {
    assert(_currentState is ConnectedState, 'we only time out when connected.');
    (_currentState as ConnectedState).timeoutTimer.reset();
    logger.verbose('Reset timer');
  }

  Stream<WebSocketState> _shutdown() async* {
    yield _currentState.shutdown();

    await _close();
  }

  // Sends registration message on ws channel when connected
  // else init's connection
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

    // Check if subscription has already been setup
    if (currentState.subscriptionBlocs[event.request.id]!.currentState
        is! SubscriptionListeningState) {
      return;
    }

    try {
      await currentState.service.register(
        currentState,
        event.request,
      );
    } on Object catch (e, st) {
      currentState.subscriptionBlocs[event.request.id]!.addResponseError(e, st);
    }
  }

  Stream<WebSocketState> _unsubscribe(UnsubscribeEvent event) async* {
    if (_currentState is! ConnectedState) {
      return;
    }
    await _currentState.service.unsubscribe(event.req.id);
  }

  // TODO(equartey): Implement Reconnect logic
  Stream<WebSocketState> _networkLoss() async* {}

  // TODO(equartey): Implement Reconnect logic
  Stream<WebSocketState> _networkFound() async* {}

  // TODO(equartey): Implement Reconnect logic
  Stream<WebSocketState> _pingSuccess() async* {}

  // TODO(equartey): Implement Reconnect logic
  Stream<WebSocketState> _pingFailure() async* {}

  // TODO(equartey): Implement reconnection logic
  Stream<WebSocketState> _reconnect() async* {}

  /// HELPER FUNCTIONS
  ///
  ///
  ///
  ///

  /// Disconnects the web socket connection and closes streams.
  Future<void> _close() {
    if (_currentState is! FailureState) {
      _emit(_currentState.disconnect());
    }

    if (_currentState is ConnectedState) {
      (_currentState as ConnectedState).timeoutTimer.cancel();
    }

    _currentState.service.close();

    return Future.wait<void>([
      _subscription.cancel(),
      _wsEventController.close(),
      _wsStateController.close(),
    ]);
  }

  // Returns a [WsSubscriptionBloc<T>] and stores in state
  WsSubscriptionBloc<T> _saveRequest<T>(SubscribeEvent<T> event) {
    logger.verbose('Subscription event for: ${event.request.id}');
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

  // Times out the connection (usually if a keep alive has not been received in time).
  Future<void> _timeout(Duration timeoutDuration) async {
    assert(
      _currentState is ConnectedState,
      'Timeout should only occur when connected.',
    );

    (_currentState as ConnectedState).timeoutTimer.cancel();

    final exception = TimeoutException(
      'Web Socket Connection Timeout',
      timeoutDuration,
    );

    return _sendExceptionToBlocs(exception);
  }

  // Sends an exception to all sub blocs and cleans up this bloc
  Future<void> _sendExceptionToBlocs(Exception e) async {
    _emit(_currentState.failed());

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

  // Takes a WebSocketEvent and sends it to the corresponding sub bloc
  Stream<WebSocketState> _sendEventToSubBloc(WsSubscriptionEvent event) async* {
    final id = event.subscriptionId;
    assert(
      _currentState.subscriptionBlocs.containsKey(id),
      'Bloc is missing subscription for $id',
    );
    _currentState.subscriptionBlocs[id]!.add(event);
  }

  // Ensure onEstablished is only called once
  void Function() _wrapOnEstablished(void Function()? onEstablished) {
    var called = false;
    return () {
      if (called) return;
      called = true;
      onEstablished?.call();
    };
  }
}
