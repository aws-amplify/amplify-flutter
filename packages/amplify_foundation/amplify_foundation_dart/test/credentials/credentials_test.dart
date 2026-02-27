// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:test/test.dart';

void main() {
  group('Amplify Credentials Test', () {
    test('Static Credentials', () {
      const accessKeyId = 'accessKeyId';
      const secretAccessKey = 'secretAccessKey';

      final credential = StaticCredentials(accessKeyId, secretAccessKey);

      expect(credential.accessKeyId, accessKeyId);
      expect(credential.secretAccessKey, secretAccessKey);
    });

    test('Static Credentials JSON serialization/deserialization', () {
      const accessKeyId = 'accessKeyId';
      const secretAccessKey = 'secretAccessKey';

      final credential = StaticCredentials(accessKeyId, secretAccessKey);
      final json = credential.toJson();
      final serializedCredential = StaticCredentials.fromJson(json);

      expect(serializedCredential.accessKeyId, accessKeyId);
      expect(serializedCredential.secretAccessKey, secretAccessKey);
    });

    test('Temporary Credentials', () {
      const accessKeyId = 'accessKeyId';
      const secretAccessKey = 'secretAccessKey';
      const sessionToken = 'sessionToken';
      final expiration = DateTime.now();

      final credential = TemporaryCredentials(
        accessKeyId,
        secretAccessKey,
        sessionToken,
        expiration,
      );

      expect(credential.accessKeyId, accessKeyId);
      expect(credential.secretAccessKey, secretAccessKey);
      expect(credential.sessionToken, sessionToken);
      expect(credential.expiration, expiration);
    });

    test('Temporary Credentials JSON serialization/deserialization', () {
      const accessKeyId = 'accessKeyId';
      const secretAccessKey = 'secretAccessKey';
      const sessionToken = 'sessionToken';
      final expiration = DateTime.now();

      final credential = TemporaryCredentials(
        accessKeyId,
        secretAccessKey,
        sessionToken,
        expiration,
      );
      final json = credential.toJson();
      final serializedCredential = TemporaryCredentials.fromJson(json);

      expect(serializedCredential.accessKeyId, accessKeyId);
      expect(serializedCredential.secretAccessKey, secretAccessKey);
      expect(serializedCredential.sessionToken, sessionToken);
      expect(serializedCredential.expiration, expiration);
    });
  });
}
