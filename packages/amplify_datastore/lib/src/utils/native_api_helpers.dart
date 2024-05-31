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
    authorizationMode: nativeToApiAuthorizationType(request.authMode),
  );
}

/// Converts the Amplify Swift type [AWSAuthorizationType.value] to [APIAuthorizationType]
APIAuthorizationType? nativeToApiAuthorizationType(String? authMode) {
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
      return APIAuthorizationType.function;
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

/// Send a subscription event for the given [subscriptionId] and [GraphQLResponse]
/// If the response has errors, the event type will be `error`, otherwise `data`
void sendSubscriptionEvent(
    String subscriptionId, GraphQLResponse<String> response) {
  if (response.hasErrors) {
    final errorPayload = jsonEncode({"errors": response.errors});
    sendNativeErrorEvent(subscriptionId, errorPayload);
    return;
  }

  final event = NativeGraphQLSubscriptionResponse(
    subscriptionId: subscriptionId,
    payloadJson: response.data,
    type: "data",
  );
  _sendSubscriptionEvent(event);
}

/// Send an error event for the given [subscriptionId] and [errorPayload]
void sendNativeErrorEvent(String subscriptionId, String? errorPayload) {
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
