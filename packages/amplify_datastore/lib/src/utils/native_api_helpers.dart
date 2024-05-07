import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_datastore/src/native_plugin.g.dart';

/// Convert a [NativeGraphQLResponse] to a [GraphQLResponse]
GraphQLRequest<String> NativeRequestToGraphQLRequest(
    NativeGraphQLRequest request) {
  return GraphQLRequest<String>(
    document: request.document,
    variables: jsonDecode(request.variablesJson ?? '{}'),
    apiName: request.apiName,
  );
}

/// Returns a connecting event [NativeGraphQLResponse] for the given [subscriptionId]
NativeGraphQLSubscriptionResponse getConnectingEvent(String subscriptionId) {
  final event = NativeGraphQLSubscriptionResponse(
    subscriptionId: subscriptionId,
    type: 'connecting',
  );
  return event;
}

/// Send a subscription event to the platform side
void _sendSubscriptionEvent(NativeGraphQLSubscriptionResponse event) {
  NativeApiBridge().sendSubscriptionEvent(event);
}

/// Send a start_ack event for the given [subscriptionId]
void sendNativeStartAckEvent(String subscriptionId) {
  final event = NativeGraphQLSubscriptionResponse(
    subscriptionId: subscriptionId,
    type: 'start_ack',
  );
  _sendSubscriptionEvent(event);
}

/// Send a data event for the given [subscriptionId] and [payloadJson]
void sendNativeDataEvent(String subscriptionId, String? payloadJson) {
  final event = NativeGraphQLSubscriptionResponse(
    subscriptionId: subscriptionId,
    payloadJson: payloadJson,
    type: 'data',
  );
  _sendSubscriptionEvent(event);
}

/// Send an error event for the given [subscriptionId] and [errorPayload]
void sendNativeErrorEvent(String subscriptionId, String errorPayload) {
  final event = NativeGraphQLSubscriptionResponse(
    subscriptionId: subscriptionId,
    payloadJson: errorPayload,
    type: 'error',
  );
  _sendSubscriptionEvent(event);
}

/// Send a complete event for the given [subscriptionId]
void sendNativeCompleteEvent(String subscriptionId) {
  final event = NativeGraphQLSubscriptionResponse(
    subscriptionId: subscriptionId,
    type: 'complete',
  );
  _sendSubscriptionEvent(event);
}
