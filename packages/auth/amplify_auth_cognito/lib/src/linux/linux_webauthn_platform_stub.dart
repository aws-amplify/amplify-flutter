// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Web stub — LinuxWebAuthnPlatform is not used on web.
// The real implementation lives in linux_webauthn_platform.dart.

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';

/// Stub for web. Never instantiated on web (guarded by `zIsWeb` in addPlugin).
class LinuxWebAuthnPlatform implements WebAuthnCredentialPlatform {
  /// Always returns `false` since this stub is only used on web where
  /// the Linux platform is not applicable.
  @override
  Future<bool> isPasskeySupported() => Future.value(false);

  /// Throws [UnsupportedError] — Linux credential creation is not available
  /// on web.
  @override
  Future<String> createCredential(String optionsJson) =>
      throw UnsupportedError('Not supported on web');

  /// Throws [UnsupportedError] — Linux credential retrieval is not available
  /// on web.
  @override
  Future<String> getCredential(String optionsJson) =>
      throw UnsupportedError('Not supported on web');
}
