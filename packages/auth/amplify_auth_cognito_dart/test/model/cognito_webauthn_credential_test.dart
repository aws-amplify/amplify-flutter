// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:test/test.dart';

void main() {
  group('CognitoWebAuthnCredential', () {
    test('fromDescription maps all 6 fields correctly', () {
      final description = WebAuthnCredentialDescription(
        credentialId: 'test-cred-id',
        relyingPartyId: 'example.com',
        createdAt: DateTime.utc(2024, 1, 15, 10, 30),
        friendlyCredentialName: 'My iPhone',
        authenticatorAttachment: 'platform',
        authenticatorTransports: ['internal', 'usb'],
      );

      final credential = CognitoWebAuthnCredential.fromDescription(description);

      expect(credential.credentialId, 'test-cred-id');
      expect(credential.relyingPartyId, 'example.com');
      expect(credential.createdAt, DateTime.utc(2024, 1, 15, 10, 30));
      expect(credential.friendlyName, 'My iPhone');
      expect(credential.authenticatorAttachment, 'platform');
      expect(credential.authenticatorTransports, ['internal', 'usb']);
    });

    test('toJson returns all fields', () {
      final credential = CognitoWebAuthnCredential(
        credentialId: 'test-cred-id',
        relyingPartyId: 'example.com',
        createdAt: DateTime.utc(2024, 1, 15, 10, 30),
        friendlyName: 'My iPhone',
        authenticatorAttachment: 'platform',
        authenticatorTransports: const ['internal'],
      );

      final json = credential.toJson();

      expect(json['credentialId'], 'test-cred-id');
      expect(json['relyingPartyId'], 'example.com');
      expect(json['createdAt'], '2024-01-15T10:30:00.000Z');
      expect(json['friendlyName'], 'My iPhone');
      expect(json['authenticatorAttachment'], 'platform');
      expect(json['authenticatorTransports'], ['internal']);
    });

    test('equals and hashCode work correctly', () {
      final cred1 = CognitoWebAuthnCredential(
        credentialId: 'test-id',
        relyingPartyId: 'example.com',
        createdAt: DateTime.utc(2024, 1, 15),
      );
      final cred2 = CognitoWebAuthnCredential(
        credentialId: 'test-id',
        relyingPartyId: 'example.com',
        createdAt: DateTime.utc(2024, 1, 15),
      );
      final cred3 = CognitoWebAuthnCredential(
        credentialId: 'different-id',
        relyingPartyId: 'example.com',
        createdAt: DateTime.utc(2024, 1, 15),
      );

      expect(cred1, equals(cred2));
      expect(cred1.hashCode, equals(cred2.hashCode));
      expect(cred1, isNot(equals(cred3)));
    });
  });
}
