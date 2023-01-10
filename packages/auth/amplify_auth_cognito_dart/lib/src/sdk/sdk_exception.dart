// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Generated with tool/generate_sdk_exceptions.dart. Do not modify by hand.

/// Exception types bridged from generated SDKs to their legacy counterparts.
library amplify_auth_cognito_dart.sdk.sdk_exception;

import 'package:amplify_core/amplify_core.dart' as core;
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart';

/// {@template amplify_auth_cognito_dart.sdk.lambda_exception}
/// Exception thrown when an error from the AWS Lambda service is encountered.
/// {@endtemplate}
class LambdaException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk.lambda_exception}
  factory LambdaException(
    String message, {
    String? recoverySuggestion,
    Object? underlyingException,
  }) {
    final match = _errorRegex.firstMatch(message);
    final lambdaName = match?.group(1);
    final parsedMessage = match?.group(2);
    if (parsedMessage != null) {
      message = parsedMessage;
    }
    return LambdaException._(
      message,
      lambdaName: lambdaName,
      recoverySuggestion: recoverySuggestion,
      underlyingException: underlyingException,
    );
  }

  const LambdaException._(
    super.message, {
    this.lambdaName,
    super.recoverySuggestion,
    super.underlyingException,
  });

  /// Whether [exception] originated in a user Lambda.
  static bool isLambdaException(String exception) =>
      _errorRegex.hasMatch(exception);

  /// Used to match errors returned from Cognito for errors originating in
  /// user-defined Lambda triggers.
  ///
  /// This is the only way to check for these currently since Cognito does not
  /// send back any special code to distinguish these from other, more general
  /// errors.
  static final RegExp _errorRegex = RegExp(r'(\w+) failed with error (.*)\.');

  /// The name of the lambda which triggered this exception.
  final String? lambdaName;

  @override
  String get runtimeTypeName => 'LambdaException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.unknown_service_exception}
/// An unknown exception raised by Cognito.
/// {@endtemplate}
class UnknownServiceException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.unknown_service_exception}
  const UnknownServiceException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'UnknownServiceException';
}

/// Exception thrown when a verification code provided to the requested service
/// is expired.
@Deprecated('Use ExpiredCodeException instead')
typedef CodeExpiredException = ExpiredCodeException;

/// Exception thrown when the software token time-based one-time password (TOTP)
/// multi-factor authentication (MFA) isn't activated for the user pool.
@Deprecated('Use SoftwareTokenMfaNotFoundException instead')
typedef SoftwareTokenMFANotFoundException = SoftwareTokenMfaNotFoundException;

/// Exception thrown when too many failed attempts for a given action has been
/// made, such as sign-in.
@Deprecated('Use TooManyFailedAttemptsException instead')
typedef FailedAttemptsLimitExceededException = TooManyFailedAttemptsException;

/// Exception thrown when the requested service cannot find a multi-factor
/// authentication (MFA) method.
@Deprecated('Use MfaMethodNotFoundException instead')
typedef MFAMethodNotFoundException = MfaMethodNotFoundException;

/// {@template amplify_auth_cognito_dart.sdk_exception.alias_exists_exception}
/// This exception is thrown when a user tries to confirm the account with an email address or phone number that has already been supplied as an alias for a different user profile. This exception indicates that an account with this email address or phone already exists in a user pool that you've configured to use email address or phone number as a sign-in alias.
/// {@endtemplate}
class AliasExistsException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.alias_exists_exception}
  const AliasExistsException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'AliasExistsException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.code_delivery_failure_exception}
/// This exception is thrown when a verification code fails to deliver successfully.
/// {@endtemplate}
class CodeDeliveryFailureException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.code_delivery_failure_exception}
  const CodeDeliveryFailureException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'CodeDeliveryFailureException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.code_mismatch_exception}
/// This exception is thrown if the provided code doesn't match what the server was expecting.
/// {@endtemplate}
class CodeMismatchException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.code_mismatch_exception}
  const CodeMismatchException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'CodeMismatchException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.concurrent_modification_exception}
/// This exception is thrown if two or more modifications are happening concurrently.
/// {@endtemplate}
class ConcurrentModificationException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.concurrent_modification_exception}
  const ConcurrentModificationException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'ConcurrentModificationException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.enable_software_token_mfa_exception}
/// This exception is thrown when there is a code mismatch and the service fails to configure the software token TOTP multi-factor authentication (MFA).
/// {@endtemplate}
class EnableSoftwareTokenMfaException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.enable_software_token_mfa_exception}
  const EnableSoftwareTokenMfaException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'EnableSoftwareTokenMfaException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.expired_code_exception}
/// This exception is thrown if a code has expired.
/// {@endtemplate}
class ExpiredCodeException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.expired_code_exception}
  const ExpiredCodeException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'ExpiredCodeException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.forbidden_exception}
/// This exception is thrown when WAF doesn't allow your request based on a web ACL that's associated with your user pool.
/// {@endtemplate}
class ForbiddenException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.forbidden_exception}
  const ForbiddenException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'ForbiddenException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.internal_error_exception}
/// This exception is thrown when Amazon Cognito encounters an internal error.
/// {@endtemplate}
class InternalErrorException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.internal_error_exception}
  const InternalErrorException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'InternalErrorException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.invalid_email_role_access_policy_exception}
/// This exception is thrown when Amazon Cognito isn't allowed to use your email identity. HTTP status code: 400.
/// {@endtemplate}
class InvalidEmailRoleAccessPolicyException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.invalid_email_role_access_policy_exception}
  const InvalidEmailRoleAccessPolicyException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'InvalidEmailRoleAccessPolicyException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.invalid_lambda_response_exception}
/// This exception is thrown when Amazon Cognito encounters an invalid Lambda response.
/// {@endtemplate}
class InvalidLambdaResponseException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.invalid_lambda_response_exception}
  const InvalidLambdaResponseException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'InvalidLambdaResponseException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.invalid_parameter_exception}
/// This exception is thrown when the Amazon Cognito service encounters an invalid parameter.
/// {@endtemplate}
class InvalidParameterException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.invalid_parameter_exception}
  const InvalidParameterException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'InvalidParameterException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.invalid_password_exception}
/// This exception is thrown when Amazon Cognito encounters an invalid password.
/// {@endtemplate}
class InvalidPasswordException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.invalid_password_exception}
  const InvalidPasswordException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'InvalidPasswordException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.invalid_sms_role_access_policy_exception}
/// This exception is returned when the role provided for SMS configuration doesn't have permission to publish using Amazon SNS.
/// {@endtemplate}
class InvalidSmsRoleAccessPolicyException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.invalid_sms_role_access_policy_exception}
  const InvalidSmsRoleAccessPolicyException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'InvalidSmsRoleAccessPolicyException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.invalid_sms_role_trust_relationship_exception}
/// This exception is thrown when the trust relationship is not valid for the role provided for SMS configuration. This can happen if you don't trust `cognito-idp.amazonaws.com` or the external ID provided in the role does not match what is provided in the SMS configuration for the user pool.
/// {@endtemplate}
class InvalidSmsRoleTrustRelationshipException
    extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.invalid_sms_role_trust_relationship_exception}
  const InvalidSmsRoleTrustRelationshipException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'InvalidSmsRoleTrustRelationshipException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.invalid_user_pool_configuration_exception}
/// This exception is thrown when the user pool configuration is not valid.
/// {@endtemplate}
class InvalidUserPoolConfigurationException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.invalid_user_pool_configuration_exception}
  const InvalidUserPoolConfigurationException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'InvalidUserPoolConfigurationException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.limit_exceeded_exception}
/// This exception is thrown when a user exceeds the limit for a requested Amazon Web Services resource.
/// {@endtemplate}
class LimitExceededException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.limit_exceeded_exception}
  const LimitExceededException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'LimitExceededException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.mfa_method_not_found_exception}
/// This exception is thrown when Amazon Cognito can't find a multi-factor authentication (MFA) method.
/// {@endtemplate}
class MfaMethodNotFoundException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.mfa_method_not_found_exception}
  const MfaMethodNotFoundException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'MfaMethodNotFoundException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.password_reset_required_exception}
/// This exception is thrown when a password reset is required.
/// {@endtemplate}
class PasswordResetRequiredException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.password_reset_required_exception}
  const PasswordResetRequiredException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'PasswordResetRequiredException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.resource_not_found_exception}
/// This exception is thrown when the Amazon Cognito service can't find the requested resource.
/// {@endtemplate}
class ResourceNotFoundException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.resource_not_found_exception}
  const ResourceNotFoundException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'ResourceNotFoundException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.software_token_mfa_not_found_exception}
/// This exception is thrown when the software token time-based one-time password (TOTP) multi-factor authentication (MFA) isn't activated for the user pool.
/// {@endtemplate}
class SoftwareTokenMfaNotFoundException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.software_token_mfa_not_found_exception}
  const SoftwareTokenMfaNotFoundException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'SoftwareTokenMfaNotFoundException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.too_many_failed_attempts_exception}
/// This exception is thrown when the user has made too many failed attempts for a given action, such as sign-in.
/// {@endtemplate}
class TooManyFailedAttemptsException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.too_many_failed_attempts_exception}
  const TooManyFailedAttemptsException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'TooManyFailedAttemptsException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.too_many_requests_exception}
/// This exception is thrown when the user has made too many requests for a given operation.
/// {@endtemplate}
class TooManyRequestsException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.too_many_requests_exception}
  const TooManyRequestsException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'TooManyRequestsException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.unauthorized_exception}
/// Exception that is thrown when the request isn't authorized. This can happen due to an invalid access token in the request.
/// {@endtemplate}
class UnauthorizedException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.unauthorized_exception}
  const UnauthorizedException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'UnauthorizedException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.unexpected_lambda_exception}
/// This exception is thrown when Amazon Cognito encounters an unexpected exception with Lambda.
/// {@endtemplate}
class UnexpectedLambdaException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.unexpected_lambda_exception}
  const UnexpectedLambdaException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'UnexpectedLambdaException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.unsupported_operation_exception}
/// Exception that is thrown when you attempt to perform an operation that isn't enabled for the user pool client.
/// {@endtemplate}
class UnsupportedOperationException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.unsupported_operation_exception}
  const UnsupportedOperationException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'UnsupportedOperationException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.unsupported_token_type_exception}
/// Exception that is thrown when an unsupported token is passed to an operation.
/// {@endtemplate}
class UnsupportedTokenTypeException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.unsupported_token_type_exception}
  const UnsupportedTokenTypeException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'UnsupportedTokenTypeException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.user_lambda_validation_exception}
/// This exception is thrown when the Amazon Cognito service encounters a user validation exception with the Lambda service.
/// {@endtemplate}
class UserLambdaValidationException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.user_lambda_validation_exception}
  const UserLambdaValidationException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'UserLambdaValidationException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.user_not_confirmed_exception}
/// This exception is thrown when a user isn't confirmed successfully.
/// {@endtemplate}
class UserNotConfirmedException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.user_not_confirmed_exception}
  const UserNotConfirmedException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'UserNotConfirmedException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.user_not_found_exception}
/// This exception is thrown when a user isn't found.
/// {@endtemplate}
class UserNotFoundException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.user_not_found_exception}
  const UserNotFoundException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'UserNotFoundException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.username_exists_exception}
/// This exception is thrown when Amazon Cognito encounters a user name that already exists in the user pool.
/// {@endtemplate}
class UsernameExistsException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.username_exists_exception}
  const UsernameExistsException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'UsernameExistsException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.external_service_exception}
/// An exception thrown when a dependent service such as Facebook or Twitter is not responding
/// {@endtemplate}
class ExternalServiceException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.external_service_exception}
  const ExternalServiceException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'ExternalServiceException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.invalid_identity_pool_configuration_exception}
/// Thrown if the identity pool has no role associated for the given auth type (auth/unauth) or if the AssumeRole fails.
/// {@endtemplate}
class InvalidIdentityPoolConfigurationException
    extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.invalid_identity_pool_configuration_exception}
  const InvalidIdentityPoolConfigurationException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'InvalidIdentityPoolConfigurationException';
}

/// {@template amplify_auth_cognito_dart.sdk_exception.resource_conflict_exception}
/// Thrown when a user tries to use a login which is already linked to another account.
/// {@endtemplate}
class ResourceConflictException extends core.AuthServiceException {
  /// {@macro amplify_auth_cognito_dart.sdk_exception.resource_conflict_exception}
  const ResourceConflictException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'ResourceConflictException';
}

/// Transforms exceptions thrown by SDK clients to types which replace legacy
/// wrapper types or merge types with equivalent names from the underlying
/// service SDKs.
@internal
Object transformSdkException(Object e) {
  if (e is! SmithyException) {
    return e;
  }
  final message = e.message ?? e.toString();
  final shapeId = e.shapeId;
  if (shapeId == null) {
    return UnknownServiceException(message, underlyingException: e);
  }
  // Some exceptions are returned as non-Lambda exceptions even though they
  // orginated in user-defined lambdas.
  if (LambdaException.isLambdaException(message) ||
      shapeId.shape == 'InvalidLambdaResponseException' ||
      shapeId.shape == 'UnexpectedLambdaException' ||
      shapeId.shape == 'UserLambdaValidationException') {
    return LambdaException(message, underlyingException: e);
  }

  if (shapeId.shape == 'AliasExistsException') {
    return AliasExistsException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'CodeDeliveryFailureException') {
    return CodeDeliveryFailureException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'CodeMismatchException') {
    return CodeMismatchException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'ConcurrentModificationException') {
    return ConcurrentModificationException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'EnableSoftwareTokenMfaException') {
    return EnableSoftwareTokenMfaException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'ExpiredCodeException') {
    return ExpiredCodeException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'ForbiddenException') {
    return ForbiddenException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'InternalErrorException') {
    return InternalErrorException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'InvalidEmailRoleAccessPolicyException') {
    return InvalidEmailRoleAccessPolicyException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'InvalidLambdaResponseException') {
    return InvalidLambdaResponseException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'InvalidParameterException') {
    return InvalidParameterException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'InvalidPasswordException') {
    return InvalidPasswordException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'InvalidSmsRoleAccessPolicyException') {
    return InvalidSmsRoleAccessPolicyException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'InvalidSmsRoleTrustRelationshipException') {
    return InvalidSmsRoleTrustRelationshipException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'InvalidUserPoolConfigurationException') {
    return InvalidUserPoolConfigurationException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'LimitExceededException') {
    return LimitExceededException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'MfaMethodNotFoundException') {
    return MfaMethodNotFoundException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'NotAuthorizedException') {
    return core.AuthNotAuthorizedException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'PasswordResetRequiredException') {
    return PasswordResetRequiredException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'ResourceNotFoundException') {
    return ResourceNotFoundException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'SoftwareTokenMfaNotFoundException') {
    return SoftwareTokenMfaNotFoundException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'TooManyFailedAttemptsException') {
    return TooManyFailedAttemptsException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'TooManyRequestsException') {
    return TooManyRequestsException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'UnauthorizedException') {
    return UnauthorizedException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'UnexpectedLambdaException') {
    return UnexpectedLambdaException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'UnsupportedOperationException') {
    return UnsupportedOperationException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'UnsupportedTokenTypeException') {
    return UnsupportedTokenTypeException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'UserLambdaValidationException') {
    return UserLambdaValidationException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'UserNotConfirmedException') {
    return UserNotConfirmedException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'UserNotFoundException') {
    return UserNotFoundException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'UsernameExistsException') {
    return UsernameExistsException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'ExternalServiceException') {
    return ExternalServiceException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'InvalidIdentityPoolConfigurationException') {
    return InvalidIdentityPoolConfigurationException(
      message,
      underlyingException: e,
    );
  }
  if (shapeId.shape == 'ResourceConflictException') {
    return ResourceConflictException(
      message,
      underlyingException: e,
    );
  }
  return UnknownServiceException(message, underlyingException: e);
}
