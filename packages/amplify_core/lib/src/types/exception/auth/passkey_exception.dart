// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of '../amplify_exception.dart';

/// {@category Auth}
/// {@template amplify_core.auth.passkey_exception}
/// Exception thrown when a passkey/WebAuthn operation fails.
/// {@endtemplate}
class PasskeyException extends AuthException {
  /// {@macro amplify_core.auth.passkey_exception}
  const PasskeyException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'PasskeyException';
}

/// {@category Auth}
/// {@template amplify_core.auth.passkey_not_supported_exception}
/// Exception thrown when the current device or platform does not support
/// passkeys.
/// {@endtemplate}
class PasskeyNotSupportedException extends PasskeyException {
  /// {@macro amplify_core.auth.passkey_not_supported_exception}
  const PasskeyNotSupportedException(
    super.message, {
    super.recoverySuggestion =
        'Passkeys require a compatible device and operating system version.',
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'PasskeyNotSupportedException';
}

/// {@category Auth}
/// {@template amplify_core.auth.passkey_cancelled_exception}
/// Exception thrown when the user cancels the passkey ceremony (e.g. biometric
/// prompt).
///
/// This is distinct from [UserCancelledException], which is for general auth
/// cancellation.
/// {@endtemplate}
class PasskeyCancelledException extends PasskeyException {
  /// {@macro amplify_core.auth.passkey_cancelled_exception}
  const PasskeyCancelledException(
    super.message, {
    super.recoverySuggestion =
        'The passkey operation was cancelled. Please try again.',
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'PasskeyCancelledException';
}

/// {@category Auth}
/// {@template amplify_core.auth.passkey_registration_failed_exception}
/// Exception thrown when the platform fails to create a new passkey credential.
/// {@endtemplate}
class PasskeyRegistrationFailedException extends PasskeyException {
  /// {@macro amplify_core.auth.passkey_registration_failed_exception}
  const PasskeyRegistrationFailedException(
    super.message, {
    super.recoverySuggestion =
        'Failed to register passkey. Ensure your device supports passkeys and try again.',
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'PasskeyRegistrationFailedException';
}

/// {@category Auth}
/// {@template amplify_core.auth.passkey_assertion_failed_exception}
/// Exception thrown when the platform fails to retrieve or assert a passkey
/// credential during sign-in.
/// {@endtemplate}
class PasskeyAssertionFailedException extends PasskeyException {
  /// {@macro amplify_core.auth.passkey_assertion_failed_exception}
  const PasskeyAssertionFailedException(
    super.message, {
    super.recoverySuggestion =
        'Failed to authenticate with passkey. Ensure you have a registered passkey and try again.',
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'PasskeyAssertionFailedException';
}

/// {@category Auth}
/// {@template amplify_core.auth.passkey_rp_mismatch_exception}
/// Exception thrown when the relying party ID does not match the expected
/// domain.
/// {@endtemplate}
class PasskeyRpMismatchException extends PasskeyException {
  /// {@macro amplify_core.auth.passkey_rp_mismatch_exception}
  const PasskeyRpMismatchException(
    super.message, {
    super.recoverySuggestion =
        'The relying party ID does not match the application domain. Check your Cognito user pool configuration.',
    super.underlyingException,
  });

  @override
  String get runtimeTypeName => 'PasskeyRpMismatchException';
}
