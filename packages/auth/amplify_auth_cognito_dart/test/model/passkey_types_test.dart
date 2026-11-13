// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:test/test.dart';

void main() {
  group('PasskeyCreateOptions', () {
    test('fromJson/toJson round-trip preserves all fields', () {
      final json = {
        'challenge': 'test-challenge-base64url',
        'rp': {'id': 'example.com', 'name': 'Example App'},
        'user': {
          'id': 'user-id-base64url',
          'name': 'user@example.com',
          'displayName': 'Test User',
        },
        'pubKeyCredParams': [
          {'type': 'public-key', 'alg': -7},
          {'type': 'public-key', 'alg': -257},
        ],
        'timeout': 60000,
        'attestation': 'none',
      };

      final options = PasskeyCreateOptions.fromJson(json);
      expect(options.challenge, 'test-challenge-base64url');
      expect(options.rp.id, 'example.com');
      expect(options.user.name, 'user@example.com');
      expect(options.pubKeyCredParams.length, 2);
      expect(options.timeout, 60000);

      final serialized = options.toJson();
      expect(serialized['challenge'], 'test-challenge-base64url');
      expect(serialized['rp'], {'id': 'example.com', 'name': 'Example App'});
      expect(serialized['timeout'], 60000);
    });
  });

  group('PasskeyGetOptions', () {
    test('fromJson/toJson round-trip preserves all fields', () {
      final json = {
        'challenge': 'test-challenge-base64url',
        'rpId': 'example.com',
        'timeout': 60000,
        'userVerification': 'required',
      };

      final options = PasskeyGetOptions.fromJson(json);
      expect(options.challenge, 'test-challenge-base64url');
      expect(options.rpId, 'example.com');
      expect(options.timeout, 60000);
      expect(options.userVerification, 'required');

      final serialized = options.toJson();
      expect(serialized['challenge'], 'test-challenge-base64url');
      expect(serialized['rpId'], 'example.com');
      expect(serialized['timeout'], 60000);
      expect(serialized['userVerification'], 'required');
    });
  });

  group('PasskeyCreateResult', () {
    test('fromJson/toJson round-trip preserves all fields', () {
      final json = {
        'id': 'credential-id-base64url',
        'rawId': 'credential-id-base64url',
        'type': 'public-key',
        'response': {
          'clientDataJSON': 'client-data-base64url',
          'attestationObject': 'attestation-object-base64url',
        },
        'clientExtensionResults': <String, dynamic>{},
      };

      final result = PasskeyCreateResult.fromJson(json);
      expect(result.id, 'credential-id-base64url');
      expect(result.type, 'public-key');
      expect(result.response.clientDataJSON, 'client-data-base64url');
      expect(result.response.attestationObject, 'attestation-object-base64url');

      final serialized = result.toJson();
      expect(serialized['id'], 'credential-id-base64url');
      expect(serialized['rawId'], 'credential-id-base64url');
      expect(serialized['type'], 'public-key');
      expect(
        (serialized['response'] as Map)['clientDataJSON'],
        'client-data-base64url',
      );
    });

    test('toJson preserves W3C field names', () {
      const result = PasskeyCreateResult(
        id: 'cred-id',
        rawId: 'cred-id',
        type: 'public-key',
        response: PasskeyAttestationResponse(
          clientDataJSON: 'client-data',
          attestationObject: 'attestation',
        ),
        clientExtensionResults: {},
      );

      final json = result.toJson();
      expect(json['clientDataJSON'], isNull); // on outer object
      expect((json['response'] as Map)['clientDataJSON'], 'client-data');
      expect((json['response'] as Map)['attestationObject'], 'attestation');
    });
  });

  group('PasskeyGetResult', () {
    test('fromJson/toJson round-trip preserves all fields', () {
      final json = {
        'id': 'credential-id-base64url',
        'rawId': 'credential-id-base64url',
        'type': 'public-key',
        'response': {
          'clientDataJSON': 'client-data-base64url',
          'authenticatorData': 'authenticator-data-base64url',
          'signature': 'signature-base64url',
        },
        'clientExtensionResults': <String, dynamic>{},
      };

      final result = PasskeyGetResult.fromJson(json);
      expect(result.id, 'credential-id-base64url');
      expect(result.type, 'public-key');
      expect(result.response.clientDataJSON, 'client-data-base64url');
      expect(result.response.authenticatorData, 'authenticator-data-base64url');
      expect(result.response.signature, 'signature-base64url');

      final serialized = result.toJson();
      expect(serialized['id'], 'credential-id-base64url');
      expect(serialized['type'], 'public-key');
      expect(
        (serialized['response'] as Map)['signature'],
        'signature-base64url',
      );
    });
  });
}
