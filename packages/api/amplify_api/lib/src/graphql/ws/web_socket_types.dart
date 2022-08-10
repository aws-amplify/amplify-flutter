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

import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

@internal
class MessageType {
  final String type;

  const MessageType._(this.type);

  factory MessageType.fromJson(dynamic json) =>
      values.firstWhere((el) => json == el.type);

  static const List<MessageType> values = [
    connectionInit,
    connectionAck,
    connectionError,
    start,
    startAck,
    error,
    data,
    stop,
    keepAlive,
    complete,
  ];

  static const connectionInit = MessageType._('connection_init');
  static const connectionAck = MessageType._('connection_ack');
  static const connectionError = MessageType._('connection_error');
  static const error = MessageType._('error');
  static const start = MessageType._('start');
  static const startAck = MessageType._('start_ack');
  static const data = MessageType._('data');
  static const stop = MessageType._('stop');
  static const keepAlive = MessageType._('ka');
  static const complete = MessageType._('complete');

  @override
  String toString() => type;
}

@immutable
@internal
abstract class WebSocketMessagePayload {
  const WebSocketMessagePayload();

  static const Map<MessageType, WebSocketMessagePayload Function(Map)>
      _factories = {
    MessageType.connectionAck: ConnectionAckMessagePayload.fromJson,
    MessageType.data: SubscriptionDataPayload.fromJson,
    MessageType.error: WebSocketError.fromJson,
  };

  static WebSocketMessagePayload? fromJson(Map json, MessageType type) {
    return _factories[type]?.call(json);
  }

  Map<String, dynamic> toJson();

  @override
  String toString() => prettyPrintJson(toJson());
}

@internal
class ConnectionAckMessagePayload extends WebSocketMessagePayload {
  final int connectionTimeoutMs;

  const ConnectionAckMessagePayload(this.connectionTimeoutMs);

  static ConnectionAckMessagePayload fromJson(Map json) {
    final connectionTimeoutMs = json['connectionTimeoutMs'] as int;
    return ConnectionAckMessagePayload(connectionTimeoutMs);
  }

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'connectionTimeoutMs': connectionTimeoutMs,
      };
}

@internal
class SubscriptionRegistrationPayload extends WebSocketMessagePayload {
  final GraphQLRequest request;
  final AWSApiConfig config;
  final Map<String, String> authorizationHeaders;

  const SubscriptionRegistrationPayload({
    required this.request,
    required this.config,
    required this.authorizationHeaders,
  });

  @override
  Map<String, Object> toJson() {
    return <String, Object>{
      'data': jsonEncode(
          {'variables': request.variables, 'query': request.document}),
      'extensions': <String, Map<String, String>>{
        'authorization': authorizationHeaders
      }
    };
  }
}

@internal
class SubscriptionDataPayload extends WebSocketMessagePayload {
  final Map<String, dynamic>? data;
  final Map<String, dynamic>? errors;

  SubscriptionDataPayload(this.data, this.errors);

  static SubscriptionDataPayload fromJson(Map json) {
    final data = json['data'] as Map?;
    final errors = json['errors'] as Map?;
    return SubscriptionDataPayload(
      data?.cast<String, dynamic>(),
      errors?.cast<String, dynamic>(),
    );
  }

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'data': data,
        'errors': errors,
      };
}

@internal
class WebSocketError extends WebSocketMessagePayload implements Exception {
  final List<Map> errors;

  WebSocketError(this.errors);

  static WebSocketError fromJson(Map json) {
    final errors = json['errors'] as List?;
    return WebSocketError(errors?.cast() ?? []);
  }

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'errors': errors,
      };
}

@immutable
@internal
class WebSocketMessage {
  final String? id;
  final MessageType messageType;
  final WebSocketMessagePayload? payload;

  WebSocketMessage({
    String? id,
    required this.messageType,
    this.payload,
  }) : id = id ?? uuid();

  WebSocketMessage._({
    this.id,
    required this.messageType,
    this.payload,
  });

  static WebSocketMessage fromJson(Map json) {
    final id = json['id'] as String?;
    final type = json['type'] as String;
    final messageType = MessageType.fromJson(type);
    final payloadMap = json['payload'] as Map?;
    final payload = payloadMap == null
        ? null
        : WebSocketMessagePayload.fromJson(
            payloadMap,
            messageType,
          );
    return WebSocketMessage._(
      id: id,
      messageType: messageType,
      payload: payload,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        if (id != null) 'id': id,
        'type': messageType.type,
        if (payload != null) 'payload': payload?.toJson(),
      };

  @override
  String toString() {
    return prettyPrintJson(this);
  }
}

@internal
class WebSocketConnectionInitMessage extends WebSocketMessage {
  WebSocketConnectionInitMessage()
      : super(messageType: MessageType.connectionInit);
}

@internal
class WebSocketSubscriptionRegistrationMessage extends WebSocketMessage {
  WebSocketSubscriptionRegistrationMessage({
    required String id,
    required SubscriptionRegistrationPayload payload,
  }) : super(messageType: MessageType.start, payload: payload, id: id);
}

@internal
class WebSocketStopMessage extends WebSocketMessage {
  WebSocketStopMessage({required String id})
      : super(messageType: MessageType.stop, id: id);
}
