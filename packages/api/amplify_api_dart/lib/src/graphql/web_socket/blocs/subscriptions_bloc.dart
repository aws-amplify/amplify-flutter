// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_api_dart/src/graphql/helpers/graphql_response_decoder.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/blocs/web_socket_bloc.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/state/ws_subscriptions_state.dart';
import 'package:amplify_api_dart/src/graphql/web_socket/types/subscriptions_event.dart';
import 'package:amplify_core/amplify_core.dart' hide SubscriptionEvent;

/// {@template amplify_api.subscription_bloc}
/// Internal state machine for subscriptions. Listens for [SubscriptionEvent]
/// and maps them to appropriate state transitions.
/// {@endtemplate}
class SubscriptionBloc<T>
    with AWSDebuggable, AmplifyLoggerMixin
    implements Closeable {
  /// {@macro amplify_api.subscription_bloc}
  SubscriptionBloc(
    WsSubscriptionState<T> initialState,
  ) {
    _currentState = initialState;
    final blocStream = _wsEventStream.asyncExpand(_eventTransformer);
    _subscription = blocStream.listen(_emit);
  }

  late WsSubscriptionState<T> _currentState;

  /// get the current state of the [SubscriptionBloc]
  WsSubscriptionState<T> get currentState => _currentState;

  /// State controller.
  final StreamController<WsSubscriptionState<T>> _wsStateController =
      StreamController<WsSubscriptionState<T>>.broadcast(sync: true);

  /// Assigns state to the wsStateController.
  StreamSink<WsSubscriptionState<T>> get _controllerSink =>
      _wsStateController.sink;

  /// Outputs states
  Stream<WsSubscriptionState<T>> get stream async* {
    yield _currentState;
    yield* _wsStateController.stream;
  }

  /// Event controller.
  final StreamController<SubscriptionEvent> _wsEventController =
      StreamController<SubscriptionEvent>.broadcast();

  /// Outputs events into the event transformer.
  late final Stream<SubscriptionEvent> _wsEventStream =
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
  void add(SubscriptionEvent event) {
    _wsEventController.add(event);
  }

  void _addResponse(GraphQLResponse<T> response) {
    _responseController.sink.add(response);
  }

  /// Adds error to response stream
  void addResponseError(Object error, StackTrace? st) {
    _emit(_currentState.error(error, st));
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
    SubscriptionEvent event,
  ) async* {
    logger.verbose(event.toString());
    if (event is SubscriptionStartAckEvent) {
      yield* _startAck(event);
    } else if (event is SubscriptionDataEvent) {
      yield* _data(event);
    } else if (event is SubscriptionComplete) {
      yield* _complete(event);
    } else if (event is SubscriptionErrorEvent) {
      yield* _error(event);
    } else if (event is SubscriptionPendingEvent) {
      yield* _pending(event);
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

  Stream<WsSubscriptionState<T>> _startAck(
    SubscriptionStartAckEvent event,
  ) async* {
    assert(
      _currentState is SubscriptionPendingState,
      'State should always be pending while waiting for start ack.',
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

    _addResponse(res);
  }

  Stream<WsSubscriptionState<T>> _pending(
    SubscriptionPendingEvent event,
  ) async* {
    yield _currentState.pending();
  }
}
