import 'dart:async';
import 'dart:convert';

import 'package:amplify_api/src/util.dart';
import 'package:amplify_core/amplify_core.dart';
import 'websocket_message.dart';

import '../graphql_response_decoder.dart';

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
