// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

/// {@template amplify_connect_client.connect_client_exception}
/// Base exception for all Amplify Connect client errors.
/// {@endtemplate}
sealed class ConnectClientException extends AmplifyException {
  /// {@macro amplify_connect_client.connect_client_exception}
  const ConnectClientException({
    required super.message,
    required super.recoverySuggestion,
    super.cause,
  });
}

/// {@template amplify_connect_client.not_signed_in_exception}
/// Thrown when neither a Cognito user-pool access token nor guest Identity
/// Pool credentials can be resolved, so the request cannot be authorized.
/// {@endtemplate}
final class ConnectNotSignedInException extends ConnectClientException {
  /// {@macro amplify_connect_client.not_signed_in_exception}
  const ConnectNotSignedInException({super.cause})
    : super(
        message: 'No Cognito access token or guest credentials were found.',
        recoverySuggestion:
            'Ensure Amplify Auth is configured with a Cognito Identity Pool '
            '(guest access) or sign the user in before calling identifyUser.',
      );
}

/// {@template amplify_connect_client.network_exception}
/// Thrown when a request fails due to connectivity or transport errors.
/// {@endtemplate}
final class ConnectNetworkException extends ConnectClientException {
  /// {@macro amplify_connect_client.network_exception}
  const ConnectNetworkException({super.cause})
    : super(
        message:
            'The request to the Customer Profiles endpoint failed to complete.',
        recoverySuggestion:
            'Check the device connectivity and that the configured endpoint '
            'is reachable, then retry.',
      );
}

/// {@template amplify_connect_client.throttling_exception}
/// Thrown when the endpoint rate limit is exceeded.
/// {@endtemplate}
final class ConnectThrottlingException extends ConnectClientException {
  /// {@macro amplify_connect_client.throttling_exception}
  const ConnectThrottlingException({super.cause})
    : super(
        message: 'The request was throttled by the endpoint.',
        recoverySuggestion: 'Retry the request with exponential backoff.',
      );
}

/// {@template amplify_connect_client.access_denied_exception}
/// Thrown when the request is not authorized (bad token or missing guest
/// `execute-api` permissions).
/// {@endtemplate}
final class ConnectAccessDeniedException extends ConnectClientException {
  /// {@macro amplify_connect_client.access_denied_exception}
  const ConnectAccessDeniedException({super.cause})
    : super(
        message: 'Access was denied by the Customer Profiles endpoint.',
        recoverySuggestion:
            'Ensure the caller is signed in (valid access token) or that the '
            'guest role can invoke execute-api on the identify-user-guest '
            'route.',
      );
}

/// {@template amplify_connect_client.validation_exception}
/// Thrown when the endpoint rejects a request as malformed.
/// {@endtemplate}
final class ConnectValidationException extends ConnectClientException {
  /// {@macro amplify_connect_client.validation_exception}
  const ConnectValidationException({String? detail, super.cause})
    : super(
        message: detail ?? 'The request was rejected as invalid.',
        recoverySuggestion:
            'This is likely a developer error. Verify the request inputs.',
      );
}

/// {@template amplify_connect_client.configuration_exception}
/// Thrown when the client configuration is missing or malformed.
/// {@endtemplate}
final class ConnectConfigurationException extends ConnectClientException {
  /// {@macro amplify_connect_client.configuration_exception}
  const ConnectConfigurationException(String detail)
    : super(
        message: detail,
        recoverySuggestion:
            'Provide a valid ConnectClientConfiguration, or add an '
            '"analytics.amazon_connect_customer_profiles" section with '
            '"endpoint" and "aws_region" to amplify_outputs.',
      );
}

/// {@template amplify_connect_client.service_exception}
/// Thrown for unclassified endpoint errors (for example 5xx responses).
/// {@endtemplate}
final class ConnectServiceException extends ConnectClientException {
  /// {@macro amplify_connect_client.service_exception}
  const ConnectServiceException({required String detail, super.cause})
    : super(
        message: detail,
        recoverySuggestion:
            'Retry the request. If it persists, verify the backend identify '
            'Lambda and endpoint health.',
      );
}

/// Maps a non-2xx identify endpoint response to a typed
/// [ConnectClientException].
///
/// [statusCode] is the HTTP status and [body] is the (possibly empty) decoded
/// response body, which may carry an `error` message.
ConnectClientException connectExceptionFromResponse(
  int statusCode,
  Map<String, dynamic> body,
) {
  final detail = (body['error'] ?? body['message'] ?? body['Message'])
      ?.toString();
  if (statusCode == 429) {
    return const ConnectThrottlingException();
  }
  if (statusCode == 401 || statusCode == 403) {
    return const ConnectAccessDeniedException();
  }
  if (statusCode == 400) {
    return ConnectValidationException(detail: detail);
  }
  return ConnectServiceException(
    detail: detail ?? 'The endpoint returned status $statusCode.',
  );
}
