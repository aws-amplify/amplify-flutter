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

import 'dart:async';
import 'dart:convert';

import 'package:amplify_api/src/util.dart';
import 'package:amplify_core/amplify_core.dart';

import '../graphql_response_decoder.dart';
import 'web_socket_types.dart';

class WebSocketMessageStreamTransformer
    extends StreamTransformerBase<dynamic, WebSocketMessage> {
  const WebSocketMessageStreamTransformer();

  @override
  Stream<WebSocketMessage> bind(Stream<dynamic> stream) {
    return stream.cast<String>().map<Map>((str) {
      return json.decode(str) as Map;
    }).map(WebSocketMessage.fromJson);
  }
}

class WebSocketSubscriptionStreamTransformer<T>
    extends StreamTransformerBase<WebSocketMessage, GraphQLResponse<T>> {
  final GraphQLRequest<T> request;
  final void Function()? onEstablished;

  const WebSocketSubscriptionStreamTransformer(
      this.request, this.onEstablished);

  @override
  Stream<GraphQLResponse<T>> bind(Stream<WebSocketMessage> stream) async* {
    await for (var event in stream) {
      switch (event.messageType) {
        case MessageType.startAck:
          onEstablished?.call();
          break;
        case MessageType.data:
          final payload = event.payload as SubscriptionDataPayload;
          final errors = deserializeGraphQLResponseErrors(payload.toJson());
          yield GraphQLResponseDecoder.instance.decode<T>(
              request: request,
              data: json.encode(payload.data),
              errors: errors);

          break;
        case MessageType.error:
          final error = event.payload as WebSocketError;
          throw error;
        case MessageType.complete:
          return;
      }
    }
  }
}
