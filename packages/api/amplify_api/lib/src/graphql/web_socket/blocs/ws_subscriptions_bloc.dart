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

import 'package:amplify_api/src/graphql/helpers/graphql_response_decoder.dart';
import 'package:amplify_api/src/graphql/web_socket/blocs/web_socket_bloc.dart';
import 'package:amplify_api/src/graphql/web_socket/state/ws_subscriptions_state.dart';
import 'package:amplify_api/src/graphql/web_socket/types/ws_subscriptions_event.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:async/async.dart';

/// {@template amplify_api.ws_subscription_bloc}
/// Internal state machine for subscriptions. Listens for [WsSubscriptionEvent]
/// and maps them to appropriate state transitions.
/// {@endtemplate}
class WsSubscriptionBloc<T>
    with AWSDebuggable, AmplifyLoggerMixin
    implements Closeable {
  /// {@macro api.ws_subscription_bloc}
  /// takes in subscription events
  /// transform/decode events
  WsSubscriptionBloc(
    WsSubscriptionState<T> initialState,
  ) {
    _currentState = initialState;
    final blocStream = _wsEventStream.asyncExpand(_eventTransformer);
    _subscription = blocStream.listen(_emit);
  }

  late WsSubscriptionState<T> _currentState;

  /// get the current state of the [WsSubscriptionBloc]
  WsSubscriptionState<T> get currentState => _currentState;

  /// State controller.
  final StreamController<WsSubscriptionState<T>> _wsStateController =
      StreamController<WsSubscriptionState<T>>.broadcast();

  /// Assigns state to the wsStateController.
  StreamSink<WsSubscriptionState<T>> get _controllerSink =>
      _wsStateController.sink;

  /// Outputs states
  Stream<WsSubscriptionState<T>> get stream async* {
    yield _currentState;
    yield* _wsStateController.stream;
  }

  /// Event controller.
  final StreamController<WsSubscriptionEvent> _wsEventController =
      StreamController<WsSubscriptionEvent>.broadcast();

  /// Outputs events into the event transformer.
  late final Stream<WsSubscriptionEvent> _wsEventStream =
      _wsEventController.stream;
  late final StreamSubscription<WsSubscriptionState<T>> _subscription;

  /// Response controller.
  late final StreamController<GraphQLResponse<T>> _responseController =
      StreamController<GraphQLResponse<T>>.broadcast(
    onCancel: _cancel,
  );

  /// Outputs graphql responses into a stream.
  late final Stream<GraphQLResponse<T>> responseStream =
      _responseController.stream;

  /// Adds an event to the Bloc.
  void add(WsSubscriptionEvent event) {
    _wsEventController.add(event);
  }

  void _addResponse(GraphQLResponse<T> response) {
    _responseController.sink.add(response);
  }

  /// Adds error to response stream
  void addResponseError(Object error, StackTrace? st) {
    _responseController.addError(error, st);
  }

  void _cancel() {
    final event = UnsubscribeEvent(_currentState.request);
    _currentState.parentBloc.add(event);
  }

  /// Emits a new state to the bloc.
  void _emit(WsSubscriptionState<T> state) {
    logger.debug('Emitting next state: $state');
    _controllerSink.add(state);
    _currentState = state;
  }

  Stream<WsSubscriptionState<T>> _eventTransformer(
    WsSubscriptionEvent event,
  ) async* {
    logger.verbose(event.toString());
    if (event is WsStartAckEvent) {
      yield* _startAck(event);
    } else if (event is SubscriptionDataEvent) {
      yield* _data(event);
    } else if (event is SubscriptionComplete) {
      yield* _complete(event);
    } else if (event is SubscriptionErrorEvent) {
      yield* _error(event);
    }
  }

  @override
  Future<void> close() {
    return Future.wait<void>([
      _subscription.cancel(),
      _wsStateController.close(),
      _wsEventController.close(),
      _responseController.close(),
    ]);
  }

  @override
  String get runtimeTypeName => 'WsSubscriptionBloc';

  Stream<WsSubscriptionState<T>> _startAck(WsStartAckEvent event) async* {
    assert(
      _currentState is SubscriptionPendingState,
      'State should always be init while waiting for start ack.',
    );
    logger.verbose('start ack message received for ${event.subscriptionId}');
    _currentState.onEstablished?.call();
    yield (_currentState as SubscriptionPendingState<T>).ready();
  }

  Stream<WsSubscriptionState<T>> _data(SubscriptionDataEvent event) async* {
    final res = GraphQLResponseDecoder.instance.decode(
      request: _currentState.request,
      response: event.payload.toJson(),
    );

    _addResponse(res);
  }

  Stream<WsSubscriptionState<T>> _complete(SubscriptionComplete event) async* {
    assert(
      _currentState is SubscriptionListeningState,
      'State should always be listening when completed.',
    );
    yield (_currentState as SubscriptionListeningState<T>).complete();
    await close();
  }

  Stream<WsSubscriptionState<T>> _error(SubscriptionErrorEvent event) async* {
    logger.error(prettyPrintJson(event.wsError.toJson()));
    final res = GraphQLResponseDecoder.instance.decode(
      request: _currentState.request,
      response: event.wsError.toJson(),
    );

    yield _currentState.error();
    _addResponse(res);
  }
}
