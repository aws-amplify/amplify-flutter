// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: public_member_api_docs

@internal
library amplify_api.graphql.ws.web_socket_types;

import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

enum MessageType {
  @JsonValue('connection_init')
  connectionInit('connection_init'),

  @JsonValue('connection_ack')
  connectionAck('connection_ack'),

  @JsonValue('connection_error')
  connectionError('connection_error'),

  @JsonValue('start')
  start('start'),

  @JsonValue('start_ack')
  startAck('start_ack'),

  @JsonValue('error')
  error('error'),

  @JsonValue('data')
  data('data'),

  @JsonValue('stop')
  stop('stop'),

  @JsonValue('ka')
  keepAlive('ka'),

  @JsonValue('complete')
  complete('complete');

  const MessageType(this.type);

  factory MessageType.fromJson(dynamic json) {
    return MessageType.values.firstWhere((el) => json == el.type);
  }

  final String type;
}

@immutable
abstract class WebSocketMessagePayload {
  const WebSocketMessagePayload();

  static const Map<MessageType,
      WebSocketMessagePayload Function(Map<String, dynamic>)> _factories = {
    MessageType.connectionAck: ConnectionAckMessagePayload.fromJson,
    MessageType.data: SubscriptionDataPayload.fromJson,
    MessageType.error: WebSocketError.fromJson,
  };

  static WebSocketMessagePayload? fromJson(
    Map<String, dynamic> json,
    MessageType type,
  ) {
    return _factories[type]?.call(json);
  }

  Map<String, dynamic> toJson();

  @override
  String toString() => prettyPrintJson(toJson());
}

@internal
class ConnectionAckMessagePayload extends WebSocketMessagePayload {
  const ConnectionAckMessagePayload(this.connectionTimeoutMs);
  final int connectionTimeoutMs;

  static ConnectionAckMessagePayload fromJson(Map<String, dynamic> json) {
    final connectionTimeoutMs = json['connectionTimeoutMs'] as int;
    return ConnectionAckMessagePayload(connectionTimeoutMs);
  }

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'connectionTimeoutMs': connectionTimeoutMs,
      };
}

class SubscriptionRegistrationPayload extends WebSocketMessagePayload {
  const SubscriptionRegistrationPayload({
    required this.request,
    required this.config,
    required this.authorizationHeaders,
  });
  final GraphQLRequest<dynamic> request;
  final AWSApiConfig config;
  final Map<String, String> authorizationHeaders;

  @override
  Map<String, Object> toJson() {
    return <String, Object>{
      'data': jsonEncode(
        {'variables': request.variables, 'query': request.document},
      ),
      'extensions': <String, Map<String, String>>{
        'authorization': authorizationHeaders
      }
    };
  }
}

class SubscriptionDataPayload extends WebSocketMessagePayload {
  const SubscriptionDataPayload(this.data, this.errors);
  final Map<String, dynamic>? data;
  final List<Map<String, dynamic>>? errors;

  static SubscriptionDataPayload fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map?;
    final errors = json['errors'] as List?;
    return SubscriptionDataPayload(
      data?.cast<String, dynamic>(),
      errors?.map((e) => (e as Map).cast<String, dynamic>()).toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'data': data,
        'errors': errors,
      };
}

class WebSocketError extends WebSocketMessagePayload implements Exception {
  const WebSocketError(this.errors);
  final List<Map<String, dynamic>> errors;

  static WebSocketError fromJson(Map<String, dynamic> json) {
    final errors = json['errors'] as List?;
    return WebSocketError(errors?.cast() ?? []);
  }

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'errors': errors,
      };
}

@immutable
class WebSocketMessage {
  WebSocketMessage({
    String? id,
    required this.messageType,
    this.payload,
  }) : id = id ?? uuid();
  const WebSocketMessage._({
    this.id,
    required this.messageType,
    this.payload,
  });
  final String? id;
  final MessageType messageType;
  final WebSocketMessagePayload? payload;

  static WebSocketMessage fromJson(Map<String, dynamic> json) {
    final id = json['id'] as String?;
    final type = json['type'] as String;
    final messageType = MessageType.fromJson(type);
    final payloadMap = json['payload'] as Map<String, dynamic>?;
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

class WebSocketConnectionInitMessage extends WebSocketMessage {
  WebSocketConnectionInitMessage()
      : super(messageType: MessageType.connectionInit);
}

class WebSocketSubscriptionRegistrationMessage extends WebSocketMessage {
  WebSocketSubscriptionRegistrationMessage({
    required String id,
    required SubscriptionRegistrationPayload payload,
  }) : super(messageType: MessageType.start, payload: payload, id: id);
}

class WebSocketStopMessage extends WebSocketMessage {
  WebSocketStopMessage({required String id})
      : super(messageType: MessageType.stop, id: id);
}
