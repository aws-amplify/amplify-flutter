// ignore_for_file: public_member_api_docs

import 'dart:async';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api/src/graphql/web_socket/blocs/web_socket_bloc.dart';
import 'package:amplify_api/src/graphql/web_socket/types/web_socket_types.dart';
import 'package:amplify_core/amplify_core.dart';

abstract class WsSubscriptionState<T> {
  WsSubscriptionState(this.request, this.onEstablished, this.parentBloc);

  /// the request to manage
  final GraphQLRequest<T> request;

  /// executes when start_ack message received
  final void Function()? onEstablished;
  bool establishedRequest = false;

  final WebSocketBloc parentBloc;

  SubscriptionErrorState<T> error() {
    return SubscriptionErrorState(
      request,
      onEstablished,
      parentBloc,
    );
  }
}

class SubscriptionInitState<T> extends WsSubscriptionState<T> {
  SubscriptionInitState(
    super.request,
    super.onEstablished,
    super.parentBloc,
  );

  SubscriptionListeningState<T> ready() {
    return SubscriptionListeningState(
      request,
      onEstablished,
      parentBloc,
    );
  }
}

class SubscriptionListeningState<T> extends WsSubscriptionState<T> {
  SubscriptionListeningState(
    super.request,
    super.onEstablished,
    super.parentBloc,
  );

  SubscriptionCompletedState<T> complete() {
    return SubscriptionCompletedState(
      request,
      onEstablished,
      parentBloc,
    );
  }
}

class SubscriptionCompletedState<T> extends WsSubscriptionState<T> {
  SubscriptionCompletedState(
    super.request,
    super.onEstablished,
    super.parentBloc,
  );
}

class SubscriptionErrorState<T> extends WsSubscriptionState<T> {
  SubscriptionErrorState(
    super.request,
    super.onEstablished,
    super.parentBloc,
  );
}
