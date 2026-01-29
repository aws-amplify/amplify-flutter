// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'package:smithy/smithy.dart';

/// Enum representing all Cognito exception types for type-safe error handling
enum CognitoErrorType {
  userNotFound('UserNotFoundException'),
  userNotConfirmed('UserNotConfirmedException'),
  usernameExists('UsernameExistsException'),
  aliasExists('AliasExistsException'),
  invalidPassword('InvalidPasswordException'),
  invalidParameter('InvalidParameterException'),
  expiredCode('ExpiredCodeException'),
  codeMismatch('CodeMismatchException'),
  codeDeliveryFailure('CodeDeliveryFailureException'),
  limitExceeded('LimitExceededException'),
  mfaMethodNotFound('MfaMethodNotFoundException'),
  notAuthorized('NotAuthorizedServiceException'),
  resourceNotFound('ResourceNotFoundException'),
  softwareTokenMfaNotFound('SoftwareTokenMfaNotFoundException'),
  tooManyFailedAttempts('TooManyFailedAttemptsException'),
  tooManyRequests('TooManyRequestsException'),
  passwordResetRequired('PasswordResetRequiredException'),
  enableSoftwareTokenMfa('EnableSoftwareTokenMFAException'),
  userLambdaValidation('UserLambdaValidationException'),
  unknown('UnknownException');

  const CognitoErrorType(this.errorType);
  
  /// The actual error name
  final String errorType;

  /// Returns the ARB key for this exception type
  String get arbKey => 'authenticatorCognitoError${errorType.replaceAll('Exception', '')}';
  
  /// Creates enum from error type string, returns unknown if not found
  static CognitoErrorType fromErrorType(String errorType) {
    for (final type in CognitoErrorType.values) {
      if (type.errorType == errorType) return type;
    }
    return CognitoErrorType.unknown;
  }
}

/// {@template amplify_authenticator.cognito_authenticator_exception}
/// A specialized AuthenticatorException for Cognito-specific errors that
/// provides access to the underlying Cognito exception for localization.
/// {@endtemplate}
class CognitoAuthenticatorException extends AuthenticatorException {
  /// {@macro amplify_authenticator.cognito_authenticator_exception}
  const CognitoAuthenticatorException._(
    super.message, {
    super.showBanner = true,
    super.underlyingException,
  }) : super._();

  /// Returns the underlying Cognito service exception
  CognitoServiceException get cognitoException => 
      underlyingException as CognitoServiceException;

  /// Returns the Cognito exception type enum for type-safe error handling
  CognitoErrorType getCognitoExceptionType() => 
      CognitoErrorType.fromErrorType(cognitoException.runtimeType.toString());

  /// Returns the ARB resource key for this exception
  String getArbKey() => getCognitoExceptionType().arbKey;
}

/// {@template amplify_authenticator.authenticator_exception}
/// An exception originating within the Authenticator as part of the sign up/
/// sign in flow.
/// {@endtemplate}
class AuthenticatorException extends AmplifyException {
  /// {@macro amplify_authenticator.authenticator_exception}
  factory AuthenticatorException(Object exception, {bool showBanner = true}) {
    String message;
    if (exception is String) {
      message = exception;
    } else if (exception is CognitoServiceException) {
      message = exception.message;
      return CognitoAuthenticatorException._(
        message,
        showBanner: showBanner,
        underlyingException: exception,
      );
    } else if (exception is AmplifyException) {
      message = exception.message;
    } else if (exception is SmithyException) {
      message = exception.message ?? _unknownMessage;
    } else {
      try {
        // ignore: avoid_dynamic_calls
        message = (exception as dynamic).message as String;
      } on Object {
        message = _unknownMessage;
      }
    }
    return AuthenticatorException._(
      message,
      showBanner: showBanner,
      underlyingException: exception,
    );
  }

  /// {@macro amplify_authenticator.authenticator_exception}
  const AuthenticatorException._(
    super.message, {
    this.showBanner = true,
    Object? underlyingException,
  }) : super(underlyingException: underlyingException ?? message);

  static const _unknownMessage = 'An unknown error occurred';

  /// Whether to show a banner for this exception.
  final bool showBanner;

  @override
  String toString() => underlyingException.toString();
}

/// {@template amplify_authenticator.exception_handler}
/// A user-specified exception handler for errors originating within the
/// [Authenticator].
/// {@endtemplate}
typedef ExceptionHandler = void Function(AuthenticatorException);

/// {@template amplify_authenticator.exception_banner_location}
/// The location on the screen to show error banners.
///
/// Defaults to `auto`.
/// {@endtemplate}
enum ExceptionBannerLocation {
  /// Decide based off screen size which to show. Smaller devices including
  /// mobile phones will use [SnackBar]s, while larger devices such
  /// as tablets will use [MaterialBanner]s.
  auto,

  /// Show [MaterialBanner]s at the top of the screen.
  top,

  /// Show [SnackBar]s at the bottom of the screen.
  bottom,

  /// Do not show banners for exceptions. Exceptions can still be handled
  /// using a custom `onException` callback.
  none,
}
