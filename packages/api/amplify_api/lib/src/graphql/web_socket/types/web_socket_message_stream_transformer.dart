// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
library amplify_api.graphql.ws.web_socket_message_stream_transformer;

import 'dart:async';
import 'dart:convert';

import 'package:amplify_api/src/graphql/helpers/graphql_response_decoder.dart';
import 'package:amplify_api/src/graphql/web_socket/types/web_socket_types.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// Top-level transformer.
class WebSocketMessageStreamTransformer
    extends StreamTransformerBase<dynamic, WebSocketMessage> {
  /// Transforms raw web socket response (String) to `WebSocketMessage` for all input
  /// from channel.
  const WebSocketMessageStreamTransformer();

  @override
  Stream<WebSocketMessage> bind(Stream<dynamic> stream) {
    return stream.cast<String>().map<Map<String, Object?>>((str) {
      return json.decode(str) as Map<String, Object?>;
    }).map(WebSocketMessage.fromJson);
  }
}

/// Final level of transformation for converting `WebSocketMessage`s to stream
/// of `GraphQLResponse` that is eventually passed to public API `Amplify.API.subscribe`.
class WebSocketSubscriptionStreamTransformer<T>
    extends StreamTransformerBase<WebSocketMessage, GraphQLResponse<T>> {
  /// [request] is used to properly decode response events
  /// [onEstablished] is executed when start_ack message received
  /// [logger] logs cancel messages when complete message received
  WebSocketSubscriptionStreamTransformer(
    this.request,
    this.onEstablished, {
    required this.logger,
  });

  /// request for this stream, needed to properly decode response events
  final GraphQLRequest<T> request;

  /// logs complete messages to better provide visibility to cancels
  final AmplifyLogger logger;

  /// executes when start_ack message received
  final void Function()? onEstablished;
  bool _establishedRequest = false;

  @override
  Stream<GraphQLResponse<T>> bind(Stream<WebSocketMessage> stream) async* {
    await for (final event in stream) {
      switch (event.messageType) {
        case MessageType.startAck:
          if (!_establishedRequest) {
            onEstablished?.call();
            _establishedRequest = true;
          }
          break;
        case MessageType.data:
          final payload = event.payload as SubscriptionDataPayload;
          yield GraphQLResponseDecoder.instance.decode<T>(
            request: request,
            response: payload.toJson(),
          );

          break;
        case MessageType.error:
          final wsError = event.payload as WebSocketError;
          yield GraphQLResponseDecoder.instance.decode<T>(
            request: request,
            response: wsError.toJson(),
          );
          break;
        case MessageType.complete:
          logger.info('Cancel succeeded for Operation: ${event.id}');
          return;
        default:
          break;
      }
    }
  }
}
