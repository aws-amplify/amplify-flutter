import 'package:amplify_api/src/graphql/web_socket/blocs/web_socket_bloc.dart';
import 'package:amplify_core/amplify_core.dart';

/// Base Subscription State for web socket subscriptions
abstract class WsSubscriptionState<T> {
  /// Every State needs a [GraphQLRequest] request, [Function()?] onEstablish
  /// callback, and a corresponding [WebSocketBloc]
  WsSubscriptionState(this.request, this.onEstablished, this.parentBloc);

  /// the request to manage
  final GraphQLRequest<T> request;

  /// executes when start_ack message received
  final void Function()? onEstablished;

  /// Used to track once the callback has been called
  bool establishedRequest = false;

  /// Parent Web Socket Bloc
  final WebSocketBloc parentBloc;

  /// Move state to [SubscriptionErrorState]
  SubscriptionErrorState<T> error() {
    return SubscriptionErrorState(
      request,
      onEstablished,
      parentBloc,
    );
  }
}

/// State for when we are expecting a Start Ack message from AppSync
class SubscriptionPendingState<T> extends WsSubscriptionState<T> {
  /// Create a Pending state
  SubscriptionPendingState(
    super.request,
    super.onEstablished,
    super.parentBloc,
  );

  /// Move state to [SubscriptionListeningState]
  SubscriptionListeningState<T> ready() {
    return SubscriptionListeningState(
      request,
      onEstablished,
      parentBloc,
    );
  }
}

/// State for when subscription has been established and listening for new events
class SubscriptionListeningState<T> extends WsSubscriptionState<T> {
  /// Create a Listening State
  SubscriptionListeningState(
    super.request,
    super.onEstablished,
    super.parentBloc,
  );

  /// Move state to [SubscriptionCompletedState]
  SubscriptionCompletedState<T> complete() {
    return SubscriptionCompletedState(
      request,
      onEstablished,
      parentBloc,
    );
  }
}

/// State for when a subscription
class SubscriptionCompletedState<T> extends WsSubscriptionState<T> {
  /// Create a complete
  SubscriptionCompletedState(
    super.request,
    super.onEstablished,
    super.parentBloc,
  );
}

/// State for when an error has occurred
class SubscriptionErrorState<T> extends WsSubscriptionState<T> {
  /// Create an Error state
  SubscriptionErrorState(
    super.request,
    super.onEstablished,
    super.parentBloc,
  );
}
