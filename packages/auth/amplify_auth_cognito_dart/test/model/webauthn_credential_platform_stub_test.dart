// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/model/webauthn/webauthn_credential_platform_stub.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

void main() {
  group('WebAuthnCredentialPlatformImpl (stub)', () {
    late WebAuthnCredentialPlatformImpl stub;

    setUp(() {
      stub = const WebAuthnCredentialPlatformImpl();
    });

    test('isPasskeySupported returns false', () async {
      expect(await stub.isPasskeySupported(), isFalse);
    });

    test('createCredential throws PasskeyNotSupportedException', () async {
      expect(
        () => stub.createCredential('{"options": "test"}'),
        throwsA(isA<PasskeyNotSupportedException>()),
      );
    });

    test('getCredential throws PasskeyNotSupportedException', () async {
      expect(
        () => stub.getCredential('{"options": "test"}'),
        throwsA(isA<PasskeyNotSupportedException>()),
      );
    });

    test('createCredential exception message is descriptive', () async {
      try {
        await stub.createCredential('{}');
        fail('Expected PasskeyNotSupportedException');
      } on PasskeyNotSupportedException catch (e) {
        expect(e.message, contains('not supported'));
      }
    });

    test('getCredential exception message is descriptive', () async {
      try {
        await stub.getCredential('{}');
        fail('Expected PasskeyNotSupportedException');
      } on PasskeyNotSupportedException catch (e) {
        expect(e.message, contains('not supported'));
      }
    });

    test('stub can be constructed with const', () {
      // Verify const constructor works (compile-time check)
      const stub1 = WebAuthnCredentialPlatformImpl();
      const stub2 = WebAuthnCredentialPlatformImpl();
      expect(identical(stub1, stub2), isTrue);
    });
  });
}
