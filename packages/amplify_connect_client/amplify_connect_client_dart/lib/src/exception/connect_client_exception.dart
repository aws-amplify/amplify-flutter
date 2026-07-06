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

/// {@template amplify_connect_client.object_type_missing_exception}
/// Thrown on initialization when the `AmplifyDevice` profile object type does
/// not exist on the configured Customer Profiles domain.
/// {@endtemplate}
final class ConnectObjectTypeMissingException extends ConnectClientException {
  /// {@macro amplify_connect_client.object_type_missing_exception}
  const ConnectObjectTypeMissingException({super.cause})
    : super(
        message:
            'The "AmplifyDevice" profile object type is not configured on the '
            'Customer Profiles domain.',
        recoverySuggestion:
            'Run the backend setup step that calls PutProfileObjectType to '
            'create the "AmplifyDevice" object type before using the client.',
      );
}

/// {@template amplify_connect_client.not_signed_in_exception}
/// Thrown when a profile operation is attempted without a signed-in user, so
/// no Cognito identity or AWS credentials can be resolved.
/// {@endtemplate}
final class ConnectNotSignedInException extends ConnectClientException {
  /// {@macro amplify_connect_client.not_signed_in_exception}
  const ConnectNotSignedInException({super.cause})
    : super(
        message: 'No signed-in user was found.',
        recoverySuggestion:
            'Sign the user in with Amplify Auth before calling identifyUser '
            'or registerDevice.',
      );
}

/// {@template amplify_connect_client.identify_user_required_exception}
/// Thrown when `AmplifyConnectClient.registerDevice` is called before a
/// profile has been resolved by `AmplifyConnectClient.identifyUser`.
/// {@endtemplate}
final class ConnectIdentifyUserRequiredException
    extends ConnectClientException {
  /// {@macro amplify_connect_client.identify_user_required_exception}
  const ConnectIdentifyUserRequiredException()
    : super(
        message:
            'registerDevice requires a resolved profile, but identifyUser has '
            'not been called in this session.',
        recoverySuggestion: 'Call identifyUser before registerDevice.',
      );
}

/// {@template amplify_connect_client.device_not_registered_exception}
/// Thrown when `AmplifyConnectClient.removeDevice` is called but no device has
/// been registered on this device (nothing to remove).
/// {@endtemplate}
final class ConnectDeviceNotRegisteredException extends ConnectClientException {
  /// {@macro amplify_connect_client.device_not_registered_exception}
  const ConnectDeviceNotRegisteredException()
    : super(
        message: 'No registered device was found to remove.',
        recoverySuggestion:
            'Call registerDevice before removeDevice, or ignore this error if '
            'the device was already removed.',
      );
}

/// {@template amplify_connect_client.profile_not_found_exception}
/// Thrown when a profile that was expected to exist could not be found.
/// {@endtemplate}
final class ConnectProfileNotFoundException extends ConnectClientException {
  /// {@macro amplify_connect_client.profile_not_found_exception}
  const ConnectProfileNotFoundException({super.cause})
    : super(
        message: 'The expected Customer Profile could not be found.',
        recoverySuggestion:
            'Retry the operation. If it persists, verify the Cognito identity '
            'and domain configuration.',
      );
}

/// {@template amplify_connect_client.network_exception}
/// Thrown when a request fails due to connectivity or transport errors.
/// {@endtemplate}
final class ConnectNetworkException extends ConnectClientException {
  /// {@macro amplify_connect_client.network_exception}
  const ConnectNetworkException({super.cause})
    : super(
        message: 'A network error occurred while contacting Customer Profiles.',
        recoverySuggestion:
            'Check the device connectivity and retry. Offline queueing is '
            'planned for a later release.',
      );
}

/// {@template amplify_connect_client.throttling_exception}
/// Thrown when the Customer Profiles API rate limit is exceeded.
/// {@endtemplate}
final class ConnectThrottlingException extends ConnectClientException {
  /// {@macro amplify_connect_client.throttling_exception}
  const ConnectThrottlingException({super.cause})
    : super(
        message: 'The request was throttled by Customer Profiles.',
        recoverySuggestion: 'Retry the request with exponential backoff.',
      );
}

/// {@template amplify_connect_client.access_denied_exception}
/// Thrown when the Cognito authenticated role lacks the required Customer
/// Profiles permissions.
/// {@endtemplate}
final class ConnectAccessDeniedException extends ConnectClientException {
  /// {@macro amplify_connect_client.access_denied_exception}
  const ConnectAccessDeniedException({super.cause})
    : super(
        message: 'Access was denied by Customer Profiles.',
        recoverySuggestion:
            'Ensure the Cognito authenticated role grants the required '
            'profile:* actions on the domain (see the setup guide).',
      );
}

/// {@template amplify_connect_client.validation_exception}
/// Thrown when Customer Profiles rejects a request as malformed.
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
            'Provide a valid ConnectClientConfiguration, or add a "connect" '
            'section with "domain_name" and "region" to amplify_outputs.',
      );
}

/// {@template amplify_connect_client.service_exception}
/// Thrown for unclassified Customer Profiles service errors (for example
/// 5xx responses).
/// {@endtemplate}
final class ConnectServiceException extends ConnectClientException {
  /// {@macro amplify_connect_client.service_exception}
  const ConnectServiceException({required String detail, super.cause})
    : super(
        message: detail,
        recoverySuggestion:
            'Retry the request. If it persists, contact AWS '
            'support with the request details.',
      );
}

/// Maps a Customer Profiles HTTP error response to a typed
/// [ConnectClientException].
///
/// [statusCode] is the HTTP status and [body] is the (possibly empty) decoded
/// response body, which may carry an AWS `__type` / `message` pair.
ConnectClientException connectExceptionFromResponse(
  int statusCode,
  Map<String, dynamic> body,
) {
  final type = (body['__type'] ?? body['code'] ?? '').toString();
  final detail = (body['message'] ?? body['Message'])?.toString();
  if (type.contains('ThrottlingException') || statusCode == 429) {
    return const ConnectThrottlingException();
  }
  if (type.contains('AccessDenied') || statusCode == 403) {
    return const ConnectAccessDeniedException();
  }
  if (type.contains('ValidationException') ||
      type.contains('BadRequest') ||
      statusCode == 400) {
    return ConnectValidationException(detail: detail);
  }
  if (type.contains('ResourceNotFound') || statusCode == 404) {
    return const ConnectProfileNotFoundException();
  }
  return ConnectServiceException(
    detail: detail ?? 'Customer Profiles returned status $statusCode.',
  );
}
