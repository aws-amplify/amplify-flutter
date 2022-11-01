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
/// Internal state machine for the web socket connections. Listens for [WebSocketEvent]
/// and maps them to appropriate state transitions.
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
    final req = HashSet<GraphQLRequest<Object?>>(
      hashCode: ((p0) => p0.id.hashCode),
      equals: (x, y) => x.id == y.id,
    );

    _currentState = DisconnectedState(
      _config,
      _authProviderRepo,
      NetworkState.connected,
      IntendedState.connected,
      wsService,
      subBlocs,
      req,
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

  /// Adds an event to the Bloc.
  void add(WebSocketEvent event) {
    _wsEventController.add(event);
  }

  /// Emits a new state to the bloc.
  void _emit(WebSocketState state) {
    logger.debug('Emitting next state: $state');
    _controllerSink.add(state);
    _currentState = state;
  }

  Stream<WebSocketState> _eventTransformer(WebSocketEvent event) async* {
    logger.info(event.toString());
    if (event is ConnectionAckMessageEvent) {
      yield* _connectionAck(event);
    } else if (event is SubscribeEvent) {
      yield* _subscribe(event);
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
    } else if (event is ConnectionFailureEvent) {
      yield* _connectionError(event);
    } else if (event is KeepAliveEvent) {
      yield* _ka();
    } else if (event is CloseEvent) {
      yield* _close();
    }
    // subscription Events
    else if (event is WsStartAckEvent) {
      _sendEventToSubBloc(event);
    } else if (event is SubscriptionDataEvent) {
      _sendEventToSubBloc(event);
    } else if (event is SubscriptionComplete) {
      _sendEventToSubBloc(event);
    } else if (event is SubscriptionErrorEvent) {
      _sendEventToSubBloc(event);
    }
  }

  @override
  Future<void> close() {
    return Future.wait<void>([
      _subscription.cancel(),
      _wsStateController.close(),
      _wsEventController.close(),
    ]);
  }

  Stream<WebSocketState> _init(SubscribeEvent<Object?> event) async* {
    // Init connection and add channel events to the event stream.
    assert(
      _currentState is DisconnectedState,
      'We only want to call init when disconnected.',
    );

    _currentState.service.init(currentState).listen(add);

    _emit((_currentState as DisconnectedState).connecting());
  }

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

    // subscribe to any outstanding subs
    await Future.wait(
      connectedState.subscriptionBlocs.values.map((
        bloc,
      ) async {
        assert(
          bloc.currentState is SubscriptionInitState,
          'bloc should be in init state',
        );

        try {
          await currentState.service.subscribe(
            connectedState,
            bloc.currentState.request,
          );
        } on Object catch (e, st) {
          bloc.addResponseError(e, st);
        }
      }),
    );
  }

  /// Times out the connection (usually if a keep alive has not been received in time).
  void _timeout(Duration timeoutDuration) {
    assert(_currentState is ConnectedState, 'we only time out when connected.');
    (_currentState as ConnectedState).timeoutTimer.cancel();
    // TODO: add timeout error event
  }

  Stream<WebSocketState> _reconnect() async* {}

  Stream<WebSocketState> _close() async* {}

  Stream<WebSocketState> _subscribe(SubscribeEvent<Object?> event) async* {
    if (_currentState is ConnectedState) {
      assert(
        _currentState.subscriptionBlocs.containsKey(event.request.id),
        'We should always have a matching subscription bloc.',
      );

      try {
        await _currentState.service.subscribe(
          _currentState as ConnectedState,
          event.request,
        );
      } on Object catch (e, st) {
        _currentState.subscriptionBlocs[event.request.id]!
            .addResponseError(e, st);
      }
    } else if (_currentState is ConnectingState) {
      // wait for connection to establish
      return;
    } else {
      // establish subscription bloc and save event properties.
      yield* _init(event);
    }
  }

  /// Subscribes to the given GraphQL request. Returns the subscription object,
  /// or throws an [Exception] if there's an error.
  Stream<GraphQLResponse<T>> subscribe<T>(SubscribeEvent<T> event) {
    // Create a [WsSubscriptionBloc] and store in state
    final bloc = _saveRequest<T>(event);
    // Add subscribe event to [WebSocketBloc]
    add(event);
    // Return request subscription stream
    return bloc.responseStream;
  }

  WsSubscriptionBloc<T> _saveRequest<T>(SubscribeEvent<T> event) {
    final initSubState =
        SubscriptionInitState<T>(event.request, event.onEstablished, this);
    final subBloc = WsSubscriptionBloc(
      initSubState,
    );
    _currentState.subscriptionBlocs
        .putIfAbsent(event.request.id, () => subBloc);

    return subBloc;
  }

  Stream<WebSocketState> _unsubscribe(UnsubscribeEvent event) async* {
    await _currentState.service.unsubscribe(event.req.id);
  }

  Stream<WebSocketState> _networkLoss() async* {}

  Stream<WebSocketState> _networkFound() async* {}

  Stream<WebSocketState> _pingSuccess() async* {}

  Stream<WebSocketState> _pingFailure() async* {}

  Stream<WebSocketState> _connectionError(
    ConnectionFailureEvent event,
  ) async* {}

  Stream<WebSocketState> _ka() async* {
    assert(_currentState is ConnectedState, 'we only time out when connected.');
    (_currentState as ConnectedState).timeoutTimer.reset();
    logger.verbose('Reset timer');
  }

  void _sendEventToSubBloc(WsSubscriptionEvent event) {
    final id = event.subscriptionId;
    assert(
      _currentState.subscriptionBlocs.containsKey(id),
      'Bloc should always have our key',
    );
    _currentState.subscriptionBlocs[id]!.add(event);
  }
}
