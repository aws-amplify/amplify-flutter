// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:test/test.dart';

void main() {
  group('WebAuthnCredentialPlatform', () {
    test('interface can be implemented by mock', () {
      final mock = MockWebAuthnPlatform();
      expect(mock, isA<WebAuthnCredentialPlatform>());
    });

    test('createCredential has correct signature', () async {
      final mock = MockWebAuthnPlatform();
      final result = await mock.createCredential('{}');
      expect(result, isA<String>());
    });

    test('getCredential has correct signature', () async {
      final mock = MockWebAuthnPlatform();
      final result = await mock.getCredential('{}');
      expect(result, isA<String>());
    });

    test('isPasskeySupported has correct signature', () async {
      final mock = MockWebAuthnPlatform();
      final result = await mock.isPasskeySupported();
      expect(result, isA<bool>());
    });

    test('mock fulfills interface contract', () {
      final mock = MockWebAuthnPlatform();
      expect(mock.createCredential, isA<Function>());
      expect(mock.getCredential, isA<Function>());
      expect(mock.isPasskeySupported, isA<Function>());
    });
  });
}

class MockWebAuthnPlatform implements WebAuthnCredentialPlatform {
  @override
  Future<String> createCredential(String optionsJson) async {
    return '{"id":"mock-credential-id","type":"public-key"}';
  }

  @override
  Future<String> getCredential(String optionsJson) async {
    return '{"id":"mock-credential-id","type":"public-key"}';
  }

  @override
  Future<bool> isPasskeySupported() async {
    return true;
  }
}
