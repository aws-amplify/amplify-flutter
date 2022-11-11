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

// TODO(equartey): Write docs
// ignore_for_file: public_member_api_docs

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

class NetworkEvent extends WebSocketEvent {
  const NetworkEvent(this.networkState);
  final NetworkState networkState;
}

class NetworkLossEvent extends NetworkEvent {
  const NetworkLossEvent() : super(NetworkState.disconnected);
}

class NetworkFoundEvent extends NetworkEvent {
  const NetworkFoundEvent() : super(NetworkState.connected);
}

class PingSuccessEvent extends WebSocketEvent {
  const PingSuccessEvent();
}

class PingFailedEvent extends WebSocketEvent {
  const PingFailedEvent();
}

class ReconnectEvent extends WebSocketEvent {
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
