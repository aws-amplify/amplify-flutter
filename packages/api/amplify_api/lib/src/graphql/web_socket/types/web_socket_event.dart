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

// ignore_for_file: public_member_api_docs

part of '../blocs/web_socket_bloc.dart';

abstract class WebSocketEvent {
  const WebSocketEvent();
}

class InitEvent extends WebSocketEvent {
  const InitEvent(this.req);

  final GraphQLRequest<Object?> req;
}

class ConnectionAckMessageEvent extends WebSocketEvent {
  const ConnectionAckMessageEvent(this.payload);

  final ConnectionAckMessagePayload payload;
}

class CloseEvent extends WebSocketEvent {
  const CloseEvent();
}

// sub classes / enum
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

class KeepAliveEvent extends WebSocketEvent {
  const KeepAliveEvent();
}

class WsErrorEvent extends WebSocketEvent {
  const WsErrorEvent(this.exception);

  final Exception exception;
}

class ConnectionFailureEvent extends WebSocketEvent {
  const ConnectionFailureEvent();
}

class SubscribeEvent<T> extends WebSocketEvent {
  const SubscribeEvent(this.request, this.onEstablished);

  final GraphQLRequest<T> request;
  final void Function()? onEstablished;
}

class UnsubscribeEvent extends WebSocketEvent {
  const UnsubscribeEvent(this.req);

  final GraphQLRequest<Object?> req;
}
