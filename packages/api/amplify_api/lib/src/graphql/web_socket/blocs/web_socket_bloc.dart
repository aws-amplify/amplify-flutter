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

/// {@template api.web_socket_bloc}
/// Internal state machine for the web socket connections.
/// Listens for [WebSocketEvent] and maps them to appropriate business logic.
/// {@endtemplate}
class WebSocketBloc
    with AWSDebuggable, AmplifyLoggerMixin
    implements Closeable {
  /// {@macro api.web_socket_bloc}
  WebSocketBloc(
    this._config,
    this._authProviderRepo, {
    required WebSocketService wsService,
  }) {
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
    final mergedStream = StreamGroup<WebSocketState>()
      ..add(blocStream)
      ..close();
    _subscription = mergedStream.stream.listen(_emit);
  }

  // Config and auth repo together determine how to authorize connection URLs
  // and subscription registration messages.
  final AmplifyAuthProviderRepository _authProviderRepo;
  final AWSApiConfig _config;

  @override
  String get runtimeTypeName => 'WebSocketStateMachineBloc';

  /// State controller.
  final StreamController<WebSocketState> _wsStateController =
      StreamController<WebSocketState>.broadcast();

  /// Assigns state to the wsStateController.
  StreamSink<WebSocketState> get _controllerSink => _wsStateController.sink;

  /// Outputs states
  Stream<WebSocketState> get stream async* {
    yield _currentState;
    yield* _wsStateController.stream;
  }

  /// Event controller.
  final StreamController<WebSocketEvent> _wsEventController =
      StreamController<WebSocketEvent>.broadcast();

  /// Outputs events into the event transformer.
  late final Stream<WebSocketEvent> _wsEventStream = _wsEventController.stream;
  late final StreamSubscription<WebSocketState> _subscription;

  late WebSocketState _currentState;

  /// get the current state of the [WebSocketBloc]
  WebSocketState get currentState => _currentState;

  /// WEB SOCKET BLOC FUNCTIONS
  ///
  ///
  ///
  ///

  /// Disconnect & clean up web socket connect
  @override
  Future<void> close() {
    _currentState.service.close();
    if (_currentState is ConnectedState) {
      (_currentState as ConnectedState).timeoutTimer.cancel();
      _emit((_currentState as ConnectedState).disconnect());
    }

    return Future.wait<void>([
      _subscription.cancel(),
      _wsStateController.close(),
      _wsEventController.close(),
    ]);
  }

  /// Adds an event to the Bloc.
  void add(WebSocketEvent event) {
    _wsEventController.add(event);
  }

  /// Subscribes to the given GraphQL request. Returns the subscription object,
  /// or throws an [Exception] if there's an error.
  Stream<GraphQLResponse<T>> subscribe<T>(SubscribeEvent<T> event) {
    // Create a [WsSubscriptionBloc<T>] and store in state
    final bloc = _saveRequest<T>(event);

    // Check if subscription has already been setup
    if (_currentState.subscriptionBlocs[event.request.id]!.currentState
        is! SubscriptionListeningState) {
      // Add subscribe event to [WebSocketBloc]
      add(RegistrationEvent(event.request));
    }

    // Return request subscription stream
    return bloc.responseStream;
  }

  /// Emits a new state to the bloc.
  void _emit(WebSocketState state) {
    logger.debug('Emitting next state: $state');
    _controllerSink.add(state);
    _currentState = state;
  }

  Stream<WebSocketState> _eventTransformer(WebSocketEvent event) async* {
    logger.info(event.toString());
    // [WebSocketBloc] Events
    if (event is InitEvent) {
      yield* _init(event);
    } else if (event is ConnectionAckMessageEvent) {
      yield* _connectionAck(event);
    } else if (event is RegistrationEvent) {
      yield* _registration(event);
    } else if (event is UnsubscribeEvent) {
      yield* _unsubscribe(event);
    } else if (event is ReconnectEvent) {
      yield* _reconnect();
    } else if (event is NetworkLossEvent) {
      yield* _networkLoss();
    } else if (event is NetworkFoundEvent) {
      yield* _networkFound();
    } else if (event is PingSuccessEvent) {
      yield* _pingSuccess();
    } else if (event is PingFailedEvent) {
      yield* _pingFailure();
    } else if (event is ConnectionErrorEvent) {
      yield* _connectionError(event);
    } else if (event is KeepAliveEvent) {
      yield* _ka();
    }
    // [WsSubscriptionBloc] Events
    else if (event is WsStartAckEvent) {
      _sendEventToSubBloc(event);
    } else if (event is SubscriptionDataEvent) {
      _sendEventToSubBloc(event);
    } else if (event is SubscriptionErrorEvent) {
      _sendEventToSubBloc(event);
    } else if (event is SubscriptionComplete) {
      _complete(event);
    }
  }

  /// EVENT HANDLERS
  ///
  ///
  ///
  ///

  // Init connection and add channel events to the event stream.
  Stream<WebSocketState> _init(InitEvent event) async* {
    assert(
      _currentState is DisconnectedState,
      'We only want to call init when disconnected.',
    );

    _currentState.service.init(currentState).listen(add);

    _emit((_currentState as DisconnectedState).connecting());
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
    _emit(connectedState);

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
          bloc.addResponseError(e, st: st);
        }
      }),
    );
  }

  Stream<WebSocketState> _reconnect() async* {}

  // Sends registration message on ws channel when connected
  // else init's connection
  Stream<WebSocketState> _registration(RegistrationEvent event) async* {
    // Wait for connection to finish establishing
    if (_currentState is ConnectingState) {
      return;
    }

    // Establish web socket connection first.
    // Registration will then happen after connection ack is received.
    if (_currentState is! ConnectedState) {
      add(const InitEvent());
    }

    // Send Registration messages over the open connection
    if (_currentState is ConnectedState) {
      assert(
        _currentState.subscriptionBlocs.containsKey(event.request.id),
        'We should always have a matching subscription bloc.',
      );

      try {
        await _currentState.service.register(
          _currentState as ConnectedState,
          event.request,
        );
      } on Object catch (e, st) {
        _currentState.subscriptionBlocs[event.request.id]!
            .addResponseError(e, st: st);
      }
    }
  }

  Stream<WebSocketState> _unsubscribe(UnsubscribeEvent event) async* {
    await _currentState.service.unsubscribe(event.req.id);
  }

  // Resets the timeout when a keep alive [ka] message is received
  Stream<WebSocketState> _ka() async* {
    assert(_currentState is ConnectedState, 'we only time out when connected.');
    (_currentState as ConnectedState).timeoutTimer.reset();
    logger.verbose('Reset timer');
  }

  // Send to sub bloc but also clean up in this bloc
  Stream<WebSocketState> _complete(SubscriptionComplete event) async* {
    _sendEventToSubBloc(event);

    _currentState.subscriptionBlocs.remove(event.subscriptionId);

    if (_currentState.subscriptionBlocs.isEmpty) {
      await close();
    }
  }

  // Todo(equartey): Implement Reconnect logic
  Stream<WebSocketState> _networkLoss() async* {}

  // Todo(equartey): Implement Reconnect logic
  Stream<WebSocketState> _networkFound() async* {}

  // Todo(equartey): Implement Reconnect logic
  Stream<WebSocketState> _pingSuccess() async* {}

  // Todo(equartey): Implement Reconnect logic
  Stream<WebSocketState> _pingFailure() async* {}

  // handle connection errors on the web socket channel
  Stream<WebSocketState> _connectionError(
    ConnectionErrorEvent event,
  ) async* {
    _emit(_currentState.failed());

    const exception = ApiException(
      'Error occurred while connecting to the websocket',
    );

    await _sendExceptionToBlocs(exception);
  }

  /// HELPER FUNCTIONS
  ///
  ///
  ///
  ///

  // Returns a [WsSubscriptionBloc<T>] and stores in state
  WsSubscriptionBloc<T> _saveRequest<T>(SubscribeEvent<T> event) {
    logger.verbose('Subscription event for: ${event.request.id}');
    // Prevent duplicate errors
    if (_currentState.subscriptionBlocs.containsKey(event.request.id)) {
      return _currentState.subscriptionBlocs[event.request.id]
          as WsSubscriptionBloc<T>;
    }

    // Init a subscription state machine with <T> and save it in state
    final subState =
        SubscriptionPendingState<T>(event.request, event.onEstablished, this);
    final subBloc = WsSubscriptionBloc(
      subState,
    );
    _currentState.subscriptionBlocs
        .putIfAbsent(event.request.id, () => subBloc);

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
      bloc.addResponseError(
        const ApiException(
          'Error occurred while connecting to the websocket',
        ),
      );
      // Shut down subscription bloc, we don't care for result/errors
      bloc.close().ignore();
    }

    return close();
  }

  // Takes a WebSocketEvent and sends it to the corresponding sub bloc
  void _sendEventToSubBloc(WsSubscriptionEvent event) {
    final id = event.subscriptionId;
    assert(
      _currentState.subscriptionBlocs.containsKey(id),
      'Bloc should always have our key',
    );
    _currentState.subscriptionBlocs[id]!.add(event);
  }
}
