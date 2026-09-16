// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/model/webauthn/webauthn_credential_platform.dart';
import 'package:amplify_core/amplify_core.dart';

/// Stub implementation of [WebAuthnCredentialPlatform] for platforms that
/// do not support passkeys.
///
/// Returns `false` for [isPasskeySupported] and throws
/// [PasskeyNotSupportedException] for credential operations.
class WebAuthnCredentialPlatformImpl implements WebAuthnCredentialPlatform {
  /// Creates a stub [WebAuthnCredentialPlatform].
  const WebAuthnCredentialPlatformImpl();

  @override
  Future<bool> isPasskeySupported() async => false;

  @override
  Future<String> createCredential(String optionsJson) async {
    throw const PasskeyNotSupportedException(
      'Passkeys are not supported on this platform',
    );
  }

  @override
  Future<String> getCredential(String optionsJson) async {
    throw const PasskeyNotSupportedException(
      'Passkeys are not supported on this platform',
    );
  }
}
