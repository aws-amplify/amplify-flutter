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

/// Exception types bridged from generated SDKs to their legacy counterparts.
library amplify_auth_cognito_dart.sdk.sdk_exception;

import 'package:amplify_core/amplify_core.dart' as core;
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart';

import 'cognito_identity.dart' as cognito_identity
    show
        InternalErrorException,
        InvalidParameterException,
        LimitExceededException,
        NotAuthorizedException,
        ResourceNotFoundException,
        TooManyRequestsException;
import 'cognito_identity_provider.dart' as cognito_idp
    show
        ExpiredCodeException,
        InternalErrorException,
        InvalidLambdaResponseException,
        InvalidParameterException,
        LimitExceededException,
        MfaMethodNotFoundException,
        NotAuthorizedException,
        ResourceNotFoundException,
        SoftwareTokenMfaNotFoundException,
        TooManyFailedAttemptsException,
        TooManyRequestsException,
        UnexpectedLambdaException,
        UserLambdaValidationException;

export 'cognito_identity.dart'
    show
        ExternalServiceException,
        InvalidIdentityPoolConfigurationException,
        LimitExceededException,
        ResourceConflictException;

export 'cognito_identity_provider.dart'
    show
        AliasExistsException,
        CodeDeliveryFailureException,
        CodeMismatchException,
        ConcurrentModificationException,
        EnableSoftwareTokenMfaException,
        ExpiredCodeException,
        InvalidEmailRoleAccessPolicyException,
        InvalidLambdaResponseException,
        InvalidPasswordException,
        InvalidSmsRoleAccessPolicyException,
        InvalidSmsRoleTrustRelationshipException,
        InvalidUserPoolConfigurationException,
        MfaMethodNotFoundException,
        PasswordResetRequiredException,
        SoftwareTokenMfaNotFoundException,
        TooManyFailedAttemptsException,
        UnauthorizedException,
        UnsupportedOperationException,
        UnsupportedTokenTypeException,
        UsernameExistsException,
        UserLambdaValidationException,
        UserNotFoundException,
        UserNotConfirmedException;

/// Transforms exceptions thrown by SDK clients to types which replace legacy
/// wrapper types or merge types with equivalent names from the underlying
/// service SDKs.
@internal
Exception transformSdkException(Exception e) {
  if (e is! SmithyException) {
    return e;
  }
  final message = e.message ?? e.toString();
  // Some exceptions are returned as non-Lambda exceptions even though they
  // orginated in user-defined lambdas.
  if (LambdaException.isLambdaException(message) ||
      e is cognito_idp.InvalidLambdaResponseException ||
      e is cognito_idp.UnexpectedLambdaException ||
      e is cognito_idp.UserLambdaValidationException) {
    return LambdaException(message, underlyingException: e);
  }
  if (e is cognito_identity.LimitExceededException ||
      e is cognito_idp.LimitExceededException) {
    return LimitExceededException(message);
  }
  if (e is cognito_identity.InvalidParameterException ||
      e is cognito_idp.InvalidParameterException) {
    return InvalidParameterException(message);
  }
  if (e is cognito_identity.InternalErrorException ||
      e is cognito_idp.InternalErrorException) {
    return InternalErrorException(message);
  }
  if (e is cognito_identity.TooManyRequestsException ||
      e is cognito_idp.TooManyRequestsException) {
    return TooManyRequestsException(message);
  }
  if (e is cognito_identity.NotAuthorizedException ||
      e is cognito_idp.NotAuthorizedException) {
    return NotAuthorizedException(message);
  }
  if (e is cognito_identity.ResourceNotFoundException ||
      e is cognito_idp.ResourceNotFoundException) {
    return ResourceNotFoundException(message);
  }
  return e;
}

/// {@template amplify_auth_cognito_dart.sdk.internal_error_exception}
/// Thrown when the service encounters an error during processing the request.
/// {@endtemplate}
class InternalErrorException extends core.AmplifyException
    with core.AWSDebuggable {
  /// {@macro amplify_auth_cognito_dart.sdk.internal_error_exception}
  const InternalErrorException(super.message);

  @override
  String get runtimeTypeName => 'InternalErrorException';
}

/// {@template amplify_auth_cognito_dart.sdk.invalid_parameter_exception}
/// Thrown for missing or bad input parameter(s).
/// {@endtemplate}
class InvalidParameterException extends core.AmplifyException
    with core.AWSDebuggable {
  /// {@macro amplify_auth_cognito_dart.sdk.invalid_parameter_exception}
  const InvalidParameterException(super.message);

  @override
  String get runtimeTypeName => 'InvalidParameterException';
}

/// {@template amplify_auth_cognito_dart.sdk.lambda_exception}
/// Exception thrown when an error from the AWS Lambda service is encountered.
/// {@endtemplate}
class LambdaException extends core.AmplifyException with core.AWSDebuggable {
  /// {@macro amplify_auth_cognito_dart.sdk.lambda_exception}
  factory LambdaException(String message, {Object? underlyingException}) {
    final match = _errorRegex.firstMatch(message);
    final lambdaName = match?.group(1);
    final parsedMessage = match?.group(2);
    if (parsedMessage != null) {
      message = parsedMessage;
    }
    return LambdaException._(
      message,
      lambdaName: lambdaName,
      underlyingException: underlyingException,
    );
  }

  const LambdaException._(
    super.message, {
    this.lambdaName,
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

/// {@template amplify_auth_cognito_dart.sdk.limit_exceeded_exception}
/// Thrown when a user exceeds the limit for a requested AWS resource.
/// {@endtemplate}
class LimitExceededException extends core.AmplifyException
    with core.AWSDebuggable {
  /// {@macro amplify_auth_cognito_dart.sdk.limit_exceeded_exception}
  const LimitExceededException(super.message);

  @override
  String get runtimeTypeName => 'LimitExceededException';
}

/// {@template amplify_auth_cognito_dart.sdk.not_authorized_exception}
/// Thrown when a user is not authorized to access the requested resource.
/// {@endtemplate}
class NotAuthorizedException extends core.AmplifyException
    with core.AWSDebuggable {
  /// {@macro amplify_auth_cognito_dart.sdk.not_authorized_exception}
  const NotAuthorizedException(super.message);

  @override
  String get runtimeTypeName => 'NotAuthorizedException';
}

/// {@template amplify_auth_cognito_dart.sdk.resource_not_found_exception}
/// Thrown when the Amazon Cognito service cannot find the requested resource.
/// {@endtemplate}
class ResourceNotFoundException extends core.AmplifyException
    with core.AWSDebuggable {
  /// {@macro amplify_auth_cognito_dart.sdk.resource_not_found_exception}
  const ResourceNotFoundException(super.message);

  @override
  String get runtimeTypeName => 'ResourceNotFoundException';
}

/// {@template amplify_auth_cognito_dart.sdk.too_many_requests_exception}
/// Thrown when a request is throttled.
/// {@endtemplate}
class TooManyRequestsException extends core.AmplifyException
    with core.AWSDebuggable {
  /// {@macro amplify_auth_cognito_dart.sdk.too_many_requests_exception}
  const TooManyRequestsException(super.message);

  @override
  String get runtimeTypeName => 'TooManyRequestsException';
}

/// Exception thrown when a verification code provided to the requested service
/// is expired.
@Deprecated('Use ExpiredCodeException instead')
typedef CodeExpiredException = cognito_idp.ExpiredCodeException;

/// Exception thrown when the software token time-based one-time password (TOTP)
/// multi-factor authentication (MFA) isn't activated for the user pool.
@Deprecated('Use SoftwareTokenMfaNotFoundException instead')
typedef SoftwareTokenMFANotFoundException
    = cognito_idp.SoftwareTokenMfaNotFoundException;

/// Exception thrown when too many failed attempts for a given action has been
/// made, such as sign-in.
@Deprecated('Use TooManyFailedAttemptsException instead')
typedef FailedAttemptsLimitExceededException
    = cognito_idp.TooManyFailedAttemptsException;

/// Exception thrown when the requested service cannot find a multi-factor
/// authentication (MFA) method.
@Deprecated('Use MfaMethodNotFoundException instead')
typedef MFAMethodNotFoundException = cognito_idp.MfaMethodNotFoundException;
