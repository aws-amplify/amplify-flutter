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

@internal
library amplify_api.graphql.ws.web_socket_message_stream_transformer;

import 'dart:async';
import 'dart:convert';

import 'package:amplify_api/src/util.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

import '../graphql_response_decoder.dart';
import 'web_socket_types.dart';

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
  /// request for this stream, needed to properly decode response events
  final GraphQLRequest<T> request;

  /// logs complete messages to better provide visibility to cancels
  final AmplifyLogger logger;

  /// executes when start_ack message received
  final void Function()? onEstablished;
  final Map<String, bool> _establishedRequests = {};

  /// [request] is used to properly decode response events
  /// [onEstablished] is executed when start_ack message received
  /// [logger] logs cancel messages when complete message received
  WebSocketSubscriptionStreamTransformer(
    this.request,
    this.onEstablished, {
    required this.logger,
  });

  @override
  Stream<GraphQLResponse<T>> bind(Stream<WebSocketMessage> stream) async* {
    await for (var event in stream) {
      switch (event.messageType) {
        case MessageType.startAck:
          if (_establishedRequests[request.id] != true) {
            onEstablished?.call();
            _establishedRequests[request.id] = true;
          }
          break;
        case MessageType.data:
          final payload = event.payload as SubscriptionDataPayload;
          // TODO(ragingsquirrel3): refactor decoder
          final errors = deserializeGraphQLResponseErrors(payload.toJson());
          yield GraphQLResponseDecoder.instance.decode<T>(
            request: request,
            data: json.encode(payload.data),
            errors: errors,
          );

          break;
        case MessageType.error:
          final error = event.payload as WebSocketError;
          throw error;
        case MessageType.complete:
          logger.info('Cancel succeeded for Operation: ${event.id}');
          return;
        default:
          break;
      }
    }
  }
}
