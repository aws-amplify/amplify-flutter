// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    as v3;
import 'package:amplify_foundation_dart_bridge/amplify_foundation_dart_bridge.dart';
import 'package:aws_common/aws_common.dart' as v2;
import 'package:test/test.dart';

void main() {
  group('V2CredentialsProviderBridge', () {
    test('bridges static credentials', () async {
      final v2Creds = v2.AWSCredentials('accessKey', 'secretKey');
      final v2Provider = v2.AWSCredentialsProvider(v2Creds);
      final bridge = V2CredentialsProviderBridge(v2Provider);

      final v3Creds = await bridge.resolve();

      expect(v3Creds, isA<v3.StaticCredentials>());
      expect(v3Creds.accessKeyId, equals('accessKey'));
      expect(v3Creds.secretAccessKey, equals('secretKey'));
    });

    test('bridges temporary credentials with session token', () async {
      final expiration = DateTime.now().add(const Duration(hours: 1));
      final v2Creds = v2.AWSCredentials(
        'accessKey',
        'secretKey',
        'sessionToken',
        expiration,
      );
      final v2Provider = v2.AWSCredentialsProvider(v2Creds);
      final bridge = V2CredentialsProviderBridge(v2Provider);

      final v3Creds = await bridge.resolve();

      expect(v3Creds, isA<v3.TemporaryCredentials>());
      final temp = v3Creds as v3.TemporaryCredentials;
      expect(temp.accessKeyId, equals('accessKey'));
      expect(temp.secretAccessKey, equals('secretKey'));
      expect(temp.sessionToken, equals('sessionToken'));
      expect(temp.expiration, equals(expiration));
    });

    test('defaults expiration to 1 hour when not provided', () async {
      final v2Creds = v2.AWSCredentials(
        'accessKey',
        'secretKey',
        'sessionToken',
      );
      final v2Provider = v2.AWSCredentialsProvider(v2Creds);
      final bridge = V2CredentialsProviderBridge(v2Provider);

      final before = DateTime.now().add(const Duration(minutes: 59));
      final v3Creds = await bridge.resolve() as v3.TemporaryCredentials;
      final after = DateTime.now().add(const Duration(hours: 1, minutes: 1));

      expect(v3Creds.expiration.isAfter(before), isTrue);
      expect(v3Creds.expiration.isBefore(after), isTrue);
    });
  });
}
