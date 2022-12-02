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

part of '../blocs/web_socket_bloc.dart';

/// Base WebSocketEvent
abstract class WebSocketEvent {
  /// Base WebSocketEvent
  const WebSocketEvent();
}

/// Event used to init a web socket connection
class InitEvent extends WebSocketEvent {
  /// Trigger a new connection
  const InitEvent();
}

/// Event for new web socket connect ack message
class ConnectionAckMessageEvent extends WebSocketEvent {
  /// Event takes a [ConnectionAckMessagePayload] provided by AppSync
  const ConnectionAckMessageEvent(this.payload);

  /// Message payload containing timeout in ms.
  final ConnectionAckMessagePayload payload;
}

/// Shut down web socket channel
class ShutdownEvent extends WebSocketEvent {
  /// Create a ShutdownEvent
  const ShutdownEvent();
}

/// Base class for network related events
class NetworkEvent extends WebSocketEvent {
  /// Create a network event with relevant [NetworkState]
  const NetworkEvent(this.networkState);

  /// The underlying network state of the connection, ie Disconnected or Connected.
  final NetworkState networkState;
}

/// Discrete class for when the network is connected.
/// Triggers when connectivity plugin detects network connection at the hardware level.
class NetworkFoundEvent extends NetworkEvent {
  /// Create a network found event with status 'Connected'
  const NetworkFoundEvent() : super(NetworkState.connected);
}

/// Discrete class for when the network is disconnected
/// Triggers when connectivity plugin detects no network connection at the hardware level.
class NetworkLossEvent extends NetworkEvent {
  /// Create a network found event with status 'Disconnected'
  const NetworkLossEvent() : super(NetworkState.disconnected);
}

/// Triggers when a successful ping to AppSync is made
class PollSuccessEvent extends WebSocketEvent {
  /// Create a successful Poll event
  const PollSuccessEvent();
}

/// Triggers when a ping to AppSync failed
class PollFailedEvent extends WebSocketEvent {
  /// Create as failed poll event
  const PollFailedEvent(this.exception);

  /// Underlying exception
  final Exception exception;
}

/// Trigger reconnection of web socket channel and underlying subscriptions
class ReconnectEvent extends WebSocketEvent {
  /// Create a reconnection event
  const ReconnectEvent();
}

/// Keep alive (ka) event sent from AppSync
class KeepAliveEvent extends WebSocketEvent {
  /// ka event
  const KeepAliveEvent();
}

/// Web Socket Event containing an exception
class WsErrorEvent extends WebSocketEvent {
  /// WsErrorEvent takes an [Exception]
  const WsErrorEvent(this.exception);

  /// Underlying exception
  final Exception exception;
}

/// Connection Error while setting up web socket connection
class ConnectionErrorEvent extends WebSocketEvent {
  /// Create an Connection error event
  const ConnectionErrorEvent();
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
}

/// Registration event to send to AppSync, triggers a start ack
class RegistrationEvent extends WebSocketEvent {
  /// Send a [GraphQLRequest] to register with AppSync
  const RegistrationEvent(this.request);

  /// Underlying request used in forming a registration message
  final GraphQLRequest<Object?> request;
}

/// Unsubscribe event to remove registration from AppSync and remove from bloc
class UnsubscribeEvent extends WebSocketEvent {
  /// Provide the GraphQLRequest to unsubscribe
  const UnsubscribeEvent(this.req);

  /// Underlying request to unsubscribe
  final GraphQLRequest<Object?> req;
}
