// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/src/native_auth_plugin.g.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/model/webauthn/webauthn_credential_platform.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/services.dart';

/// Standard error codes used by native platform implementations to
/// communicate WebAuthn errors through the Pigeon bridge.
///
/// Native Swift and Kotlin code should throw `PlatformException` with
/// one of these codes. The [PigeonWebAuthnCredentialPlatform] adapter
/// maps them to the corresponding [PasskeyException] subtypes.
abstract final class WebAuthnErrorCodes {
  /// The user cancelled the passkey ceremony.
  static const String cancelled = 'cancelled';

  /// Passkeys are not supported on this platform/device.
  static const String notSupported = 'notSupported';

  /// Passkey registration (credential creation) failed.
  static const String registrationFailed = 'registrationFailed';

  /// Passkey assertion (credential retrieval) failed.
  static const String assertionFailed = 'assertionFailed';

  /// The relying party ID does not match the expected domain.
  static const String rpMismatch = 'rpMismatch';
}

/// {@template amplify_auth_cognito.pigeon_webauthn_credential_platform}
/// Dart adapter that delegates [WebAuthnCredentialPlatform] calls to the
/// Pigeon-generated [WebAuthnBridgeApi] and maps [PlatformException] errors
/// to the appropriate [PasskeyException] subtypes.
/// {@endtemplate}
class PigeonWebAuthnCredentialPlatform implements WebAuthnCredentialPlatform {
  /// {@macro amplify_auth_cognito.pigeon_webauthn_credential_platform}
  const PigeonWebAuthnCredentialPlatform(this._bridge);

  final WebAuthnBridgeApi _bridge;

  @override
  Future<String> createCredential(String optionsJson) async {
    try {
      return await _bridge.createCredential(optionsJson);
    } on PlatformException catch (e) {
      throw _mapError(e, _defaultCreateError);
    }
  }

  @override
  Future<String> getCredential(String optionsJson) async {
    try {
      return await _bridge.getCredential(optionsJson);
    } on PlatformException catch (e) {
      throw _mapError(e, _defaultGetError);
    }
  }

  @override
  Future<bool> isPasskeySupported() async {
    try {
      return await _bridge.isPasskeySupported();
    } on PlatformException catch (e) {
      throw PasskeyException(
        e.message ?? 'Failed to check passkey support',
        underlyingException: e,
      );
    }
  }

  /// Maps a [PlatformException] to the corresponding [PasskeyException]
  /// subtype based on the error code.
  ///
  /// [defaultError] is called when the error code does not match any known
  /// code — it allows different defaults for create vs get operations.
  static PasskeyException _mapError(
    PlatformException e,
    PasskeyException Function(PlatformException) defaultError,
  ) {
    final message = e.message ?? 'Unknown passkey error';
    switch (e.code) {
      case WebAuthnErrorCodes.cancelled:
        return PasskeyCancelledException(message, underlyingException: e);
      case WebAuthnErrorCodes.notSupported:
        return PasskeyNotSupportedException(message, underlyingException: e);
      case WebAuthnErrorCodes.rpMismatch:
        return PasskeyRpMismatchException(message, underlyingException: e);
      default:
        return defaultError(e);
    }
  }

  static PasskeyRegistrationFailedException _defaultCreateError(
    PlatformException e,
  ) {
    return PasskeyRegistrationFailedException(
      e.message ?? 'Passkey registration failed',
      underlyingException: e,
    );
  }

  static PasskeyAssertionFailedException _defaultGetError(PlatformException e) {
    return PasskeyAssertionFailedException(
      e.message ?? 'Passkey assertion failed',
      underlyingException: e,
    );
  }
}
