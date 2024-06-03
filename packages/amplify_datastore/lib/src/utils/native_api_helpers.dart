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

// TODO(equartey): Migrate string matching to use status codes when available on
// exceptions to more closely match the behavior of Amplify Swift.
// In addition to Unauthorized errors, Amplify Swift checks for status codes 401 & 403 for silent failures.
// https://github.com/aws-amplify/amplify-swift/blob/8534d75277701bb6cb9844cf66d1e2ef2a78c37e/AmplifyPlugins/API/Sources/AWSAPIPlugin/APIError%2BUnauthorized.swift#L41
//
/// Transform a exception to an error payload json.
/// And tag the error to fail silently, allowing DataStore sync to continue.
String _transformExceptionToErrorPayloadJson(Object e) {
  final _silentFailExceptions = ["SignedOutException"];

  Map<String, dynamic> error = {
    'message': "${e.toString()}",
  };
  if (e is AmplifyException) {
    final isUnAuthorized = _silentFailExceptions
        .any((x) => e.underlyingException?.toString().contains(x) ?? false);
    // preface the error message with "Unauthorized" if the exception should be silent
    error['message'] = isUnAuthorized
        ? "Unauthorized - ${e.message} - ${e.underlyingException}"
        : error['message'];
  }
  var errorPayload = {
    'errors': [error]
  };
  return jsonEncode(errorPayload);
}

/// Handle GraphQL operation Exceptions and return a [NativeGraphQLResponse]
NativeGraphQLResponse handleGraphQLOperationException(
    Exception e, NativeGraphQLRequest request) {
  final errorPayload = _transformExceptionToErrorPayloadJson(e);
  return NativeGraphQLResponse(payloadJson: errorPayload);
}

/// Convert a [GraphQLResponse] to a [NativeGraphQLResponse]
NativeGraphQLResponse graphQLResponseToNativeResponse(
    GraphQLResponse<String> response) {
  var payload = "";
  try {
    payload = _buildPayloadJson(response);
  } on Exception catch (e) {
    payload = _handlePayloadException(e);
  }
  return NativeGraphQLResponse(payloadJson: payload);
}

/// Build payloadJson for a [NativeGraphQLResponse] and [NativeGraphQLSubscriptionResponse]
/// from a [GraphQLResponse]
String _buildPayloadJson(GraphQLResponse<String> response) {
  final data = jsonDecode(response.data ?? '{}');
  final errors = response.errors.whereNotNull().map((e) => e.toJson()).toList();
  return jsonEncode({
    'data': data,
    'errors': errors,
  });
}

/// Handle payload json parsing exceptions
String _handlePayloadException(Exception e) {
  return jsonEncode({
    'data': {},
    'errors': [
      {
        'message': 'Error parsing payload json: ${e.toString()}',
      }
    ],
  });
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
  var payload = "";
  var hasErrors = response.hasErrors;

  try {
    payload = _buildPayloadJson(response);
  } on Exception catch (e) {
    payload = _handlePayloadException(e);
    hasErrors = true;
  }

  final event = NativeGraphQLSubscriptionResponse(
    subscriptionId: subscriptionId,
    payloadJson: payload,
    type: hasErrors ? 'error' : "data",
  );
  _sendSubscriptionEvent(event);
}

/// Send an error event for the given [subscriptionId] and [errorPayload]
void sendSubscriptionStreamErrorEvent(String subscriptionId, Object e) {
  final errorPayload = _transformExceptionToErrorPayloadJson(e);
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
