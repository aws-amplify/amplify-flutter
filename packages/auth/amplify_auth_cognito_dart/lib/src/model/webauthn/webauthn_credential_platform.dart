// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: comment_references

import 'package:amplify_auth_cognito_dart/src/model/webauthn/webauthn_credential_platform_stub.dart'
    if (dart.library.js_interop) 'package:amplify_auth_cognito_dart/src/model/webauthn/webauthn_credential_platform_html.dart';

/// {@template amplify_auth_cognito_dart.webauthn_credential_platform}
/// Abstract interface for platform-specific WebAuthn/passkey operations.
///
/// Platform implementations (iOS, Android, Web, macOS, Windows, Linux)
/// must implement this interface to provide WebAuthn ceremony support.
///
/// The interface operates on JSON strings to keep serialization logic
/// in the shared Dart layer. The JSON formats follow the W3C WebAuthn
/// Level 3 specification dictionaries.
/// {@endtemplate}
abstract interface class WebAuthnCredentialPlatform {
  /// Creates the platform-appropriate implementation.
  ///
  /// On web, returns the JS interop implementation.
  /// On other platforms, returns the stub (native platforms use Pigeon bridge
  /// instead).
  factory WebAuthnCredentialPlatform() = WebAuthnCredentialPlatformImpl;

  /// Creates a new passkey credential on the device.
  ///
  /// [optionsJson] is a JSON-serialized `PublicKeyCredentialCreationOptions`
  /// object from Cognito's `StartWebAuthnRegistration` response.
  ///
  /// Returns a JSON-serialized `RegistrationResponseJSON` (W3C WebAuthn Level 3)
  /// containing the newly created credential.
  ///
  /// Throws [PasskeyNotSupportedException] if passkeys are not supported.
  /// Throws [PasskeyCancelledException] if the user cancels the ceremony.
  /// Throws [PasskeyRegistrationFailedException] if credential creation fails.
  Future<String> createCredential(String optionsJson);

  /// Retrieves a passkey credential assertion for authentication.
  ///
  /// [optionsJson] is a JSON-serialized `PublicKeyCredentialRequestOptions`
  /// object from Cognito's `CREDENTIAL_REQUEST_OPTIONS` challenge parameter.
  ///
  /// Returns a JSON-serialized `AuthenticationResponseJSON` (W3C WebAuthn Level 3)
  /// containing the assertion result.
  ///
  /// Throws [PasskeyNotSupportedException] if passkeys are not supported.
  /// Throws [PasskeyCancelledException] if the user cancels the ceremony.
  /// Throws [PasskeyAssertionFailedException] if credential retrieval fails.
  Future<String> getCredential(String optionsJson);

  /// Returns whether the current device/platform supports passkeys.
  ///
  /// This is a lightweight check that does not trigger any UI prompts.
  /// It checks for platform API availability (e.g., iOS 17.4+, Android API 28+,
  /// browser WebAuthn support).
  Future<bool> isPasskeySupported();
}
