import 'package:amplify_api/src/graphql/web_socket/blocs/web_socket_bloc.dart';
import 'package:amplify_api/src/graphql/web_socket/types/web_socket_types.dart';

/// Base Subscription event class
abstract class WsSubscriptionEvent extends WebSocketEvent {
  /// Every event takes in the associated subscription id [subscriptionId]
  const WsSubscriptionEvent(this.subscriptionId);

  /// The associated subscription id
  final String subscriptionId;
}

/// Web Socket Subscription start ack message event
class WsStartAckEvent extends WsSubscriptionEvent {
  /// Creates a start ack event
  const WsStartAckEvent(super.subscriptionId);
}

/// Web Socket Subscription data message event
class SubscriptionDataEvent extends WsSubscriptionEvent {
  /// Creates a data event.
  /// Takes in the associated subscription id [subscriptionId] and data [payload]
  const SubscriptionDataEvent(
    super.subscriptionId,
    this.payload,
  );

  /// The data [payload]
  final SubscriptionDataPayload payload;
}

/// Web Socket Subscription complete message event
class SubscriptionComplete extends WsSubscriptionEvent {
  /// Creates a complete event.
  /// Takes in the associated subscription id [subscriptionId]
  const SubscriptionComplete(
    super.subscriptionId,
  );
}

/// Web Socket Subscription event message event
class SubscriptionErrorEvent extends WsSubscriptionEvent {
  /// Creates an error event.
  /// Takes a [subscriptionId] tied to the a web socket error [wsError]
  const SubscriptionErrorEvent(
    super.subscriptionId,
    this.wsError,
  );

  /// The web socket error
  final WebSocketError wsError;
}
