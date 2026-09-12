// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/model/webauthn/webauthn_credential_platform.dart';

/// Mock implementation of WebAuthnCredentialPlatform for testing.
///
/// Each method takes an optional callback. If provided, the callback is invoked;
/// otherwise, [UnimplementedError] is thrown. This follows the same pattern
/// as MockCognitoIdentityProviderClient in mock_clients.dart.
class MockWebAuthnCredentialPlatform implements WebAuthnCredentialPlatform {
  /// Creates a [MockWebAuthnCredentialPlatform] with optional callbacks.
  MockWebAuthnCredentialPlatform({
    Future<String> Function(String)? createCredential,
    Future<String> Function(String)? getCredential,
    Future<bool> Function()? isPasskeySupported,
  }) : _createCredential = createCredential,
       _getCredential = getCredential,
       _isPasskeySupported = isPasskeySupported;

  final Future<String> Function(String)? _createCredential;
  final Future<String> Function(String)? _getCredential;
  final Future<bool> Function()? _isPasskeySupported;

  @override
  Future<String> createCredential(String optionsJson) {
    if (_createCredential == null) {
      throw UnimplementedError('createCredential not mocked');
    }
    return _createCredential(optionsJson);
  }

  @override
  Future<String> getCredential(String optionsJson) {
    if (_getCredential == null) {
      throw UnimplementedError('getCredential not mocked');
    }
    return _getCredential(optionsJson);
  }

  @override
  Future<bool> isPasskeySupported() {
    if (_isPasskeySupported == null) {
      throw UnimplementedError('isPasskeySupported not mocked');
    }
    return _isPasskeySupported();
  }
}
