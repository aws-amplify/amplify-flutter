// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Web stub — WindowsWebAuthnPlatform is not used on web.
// The real implementation lives in windows_webauthn_platform.dart.

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';

/// Stub for web. Never instantiated on web (guarded by `zIsWeb` in addPlugin).
class WindowsWebAuthnPlatform implements WebAuthnCredentialPlatform {
  /// Returns whether passkeys are supported. Always returns `false` on web.
  @override
  Future<bool> isPasskeySupported() => Future.value(false);

  /// Creates a WebAuthn credential. Not supported on web; always throws.
  @override
  Future<String> createCredential(String optionsJson) =>
      throw UnsupportedError('Not supported on web');

  /// Retrieves a WebAuthn credential. Not supported on web; always throws.
  @override
  Future<String> getCredential(String optionsJson) =>
      throw UnsupportedError('Not supported on web');
}
