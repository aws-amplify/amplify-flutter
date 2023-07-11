// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of '../blocs/web_socket_bloc.dart';

/// Base WebSocketEvent
abstract class WebSocketEvent
    with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  /// Base WebSocketEvent
  const WebSocketEvent();
}

/// Event used to init a web socket connection
class InitEvent extends WebSocketEvent {
  /// Trigger a new connection
  const InitEvent();

  @override
  String get runtimeTypeName => 'InitEvent';

  @override
  Map<String, Object?> toJson() => const {};
}

/// Event for new web socket connect ack message
class ConnectionAckMessageEvent extends WebSocketEvent {
  /// Event takes a [ConnectionAckMessagePayload] provided by AppSync
  const ConnectionAckMessageEvent(this.payload);

  /// Message payload containing timeout in ms.
  final ConnectionAckMessagePayload payload;

  @override
  String get runtimeTypeName => 'ConnectionAckMessageEvent';

  @override
  Map<String, Object?> toJson() => {
        'payload': payload.toJson(),
      };
}

/// Shut down web socket channel
class ShutdownEvent extends WebSocketEvent {
  /// Create a ShutdownEvent
  const ShutdownEvent();

  @override
  String get runtimeTypeName => 'ShutdownEvent';

  @override
  Map<String, Object?> toJson() => const {};
}

/// Base class for network related events
class NetworkEvent extends WebSocketEvent {
  /// Create a network event with relevant [NetworkState]
  const NetworkEvent(this.networkState);

  /// The underlying network state of the connection, ie Disconnected or Connected.
  final NetworkState networkState;

  @override
  String get runtimeTypeName => 'NetworkEvent';

  @override
  Map<String, Object?> toJson() => {
        'networkState': networkState.name,
      };
}

/// Discrete class for when the network is connected.
/// Triggers when connectivity plugin detects network connection at the hardware level.
class NetworkFoundEvent extends NetworkEvent {
  /// Create a network found event with status 'Connected'
  const NetworkFoundEvent() : super(NetworkState.connected);

  @override
  String get runtimeTypeName => 'NetworkFoundEvent';
}

/// Discrete class for when the network is disconnected
/// Triggers when connectivity plugin detects no network connection at the hardware level.
class NetworkLossEvent extends NetworkEvent {
  /// Create a network found event with status 'Disconnected'
  const NetworkLossEvent() : super(NetworkState.disconnected);

  @override
  String get runtimeTypeName => 'NetworkLossEvent';
}

/// Triggers when a successful ping to AppSync is made
class PollSuccessEvent extends WebSocketEvent {
  /// Create a successful Poll event
  const PollSuccessEvent();

  @override
  String get runtimeTypeName => 'PollSuccessEvent';

  @override
  Map<String, Object?> toJson() => const {};
}

/// Triggers when a ping to AppSync failed
class PollFailedEvent extends WebSocketEvent {
  /// Create as failed poll event
  const PollFailedEvent(this.exception);

  /// Underlying exception
  final Exception exception;

  @override
  String get runtimeTypeName => 'PollFailedEvent';

  @override
  Map<String, Object?> toJson() => {
        'exception': exception.toString(),
      };
}

/// Trigger reconnection of web socket channel and underlying subscriptions
class ReconnectEvent extends WebSocketEvent {
  /// Create a reconnection event
  const ReconnectEvent();

  @override
  String get runtimeTypeName => 'ReconnectEvent';

  @override
  Map<String, Object?> toJson() => const {};
}

/// Keep alive (ka) event sent from AppSync
class KeepAliveEvent extends WebSocketEvent {
  /// ka event
  const KeepAliveEvent();

  @override
  String get runtimeTypeName => 'KeepAliveEvent';

  @override
  Map<String, Object?> toJson() => const {};
}

/// Web Socket Event containing an exception
class WsErrorEvent extends WebSocketEvent {
  /// WsErrorEvent takes an [Exception]
  const WsErrorEvent(this.exception);

  /// Underlying exception
  final Exception exception;

  @override
  String get runtimeTypeName => 'WsErrorEvent';

  @override
  Map<String, Object?> toJson() => {
        'exception': exception.toString(),
      };
}

/// Connection Error while setting up web socket connection
class ConnectionErrorEvent extends WebSocketEvent {
  /// Create an Connection error event
  const ConnectionErrorEvent();

  @override
  String get runtimeTypeName => 'ConnectionErrorEvent';

  @override
  Map<String, Object?> toJson() => const {};
}

/// Subscribe Event to establish a new subscription on the bloc
class SubscribeEvent<T> extends WebSocketEvent {
  /// Takes in a [GraphQLRequest<T>] to subscribe to and
  /// an callback for onEstablished
  const SubscribeEvent(this.request, this.onEstablished);

  /// Underlying request to subscription request
  final GraphQLRequest<T> request;

  /// Callback to use once start ack event is created
  final void Function()? onEstablished;

  @override
  String get runtimeTypeName => 'SubscribeEvent<$T>';

  @override
  Map<String, Object?> toJson() => {
        'request': request.toJson(),
      };
}

/// Unsubscribe event to remove registration from AppSync and remove from bloc
class UnsubscribeEvent extends WebSocketEvent {
  /// Provide the GraphQLRequest to unsubscribe
  const UnsubscribeEvent(this.request);

  /// Underlying request to unsubscribe
  final GraphQLRequest<Object?> request;

  @override
  String get runtimeTypeName => 'UnsubscribeEvent';

  @override
  Map<String, Object?> toJson() => {
        'request': request.toJson(),
      };
}
