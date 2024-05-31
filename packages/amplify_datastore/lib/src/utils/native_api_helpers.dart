import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_datastore/src/native_plugin.g.dart';
import 'package:collection/collection.dart';

/// Convert a [NativeGraphQLResponse] to a [GraphQLResponse]
GraphQLRequest<String> nativeRequestToGraphQLRequest(
    NativeGraphQLRequest request) {
  return GraphQLRequest<String>(
    document: request.document,
    variables: jsonDecode(request.variablesJson ?? '{}'),
    apiName: request.apiName,
    authorizationMode: toFlutterAuthMode(request.authMode),
  );
}

/// Converts the Amplify Swift type [AWSAuthorizationType.value] to [APIAuthorizationType]
APIAuthorizationType? toFlutterAuthMode(String? authMode) {
  switch (authMode) {
    case 'apiKey':
      return APIAuthorizationType.apiKey;
    case 'awsIAM':
      return APIAuthorizationType.iam;
    case 'openIDConnect':
      return APIAuthorizationType.oidc;
    case 'amazonCognitoUserPools':
      return APIAuthorizationType.userPools;
    case 'function':
      return APIAuthorizationType.userPools;
    case 'none':
      return APIAuthorizationType.none;
    default:
      return null;
  }
}

/// Convert a [GraphQLResponse] to a [NativeGraphQLResponse]
NativeGraphQLResponse graphQLResponseToNativeResponse(
    GraphQLResponse<String> response) {
  final errorJson = jsonEncode(
      response.errors.whereNotNull().map((e) => e.toJson()).toList());
  return NativeGraphQLResponse(
    payloadJson: response.data,
    errorsJson: errorJson,
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
void sendNativeDataEvent(
    String subscriptionId, GraphQLResponse<String> response) {
  final payloadJson = response.hasErrors
      ? jsonEncode({"errors": response.errors})
      : jsonEncode(response.data);

  final event = NativeGraphQLSubscriptionResponse(
    subscriptionId: subscriptionId,
    payloadJson: payloadJson,
    type: response.hasErrors ? "error" : "data",
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
  print("Flutter::: Sending complete event for $subscriptionId");
  final event = NativeGraphQLSubscriptionResponse(
    subscriptionId: subscriptionId,
    type: 'complete',
  );
  _sendSubscriptionEvent(event);
}
