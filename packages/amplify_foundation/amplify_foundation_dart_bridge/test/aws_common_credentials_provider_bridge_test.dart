// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    as foundation;
import 'package:amplify_foundation_dart_bridge/amplify_foundation_dart_bridge.dart';
import 'package:aws_common/aws_common.dart' as common;
import 'package:test/test.dart';

void main() {
  group('AwsCommonCredentialsProviderBridge', () {
    test('bridges static credentials', () async {
      const creds = common.AWSCredentials('accessKey', 'secretKey');
      const provider = common.AWSCredentialsProvider(creds);
      const bridge = AwsCommonCredentialsProviderBridge(provider);

      final result = await bridge.resolve();

      expect(result, isA<foundation.StaticCredentials>());
      expect(result.accessKeyId, equals('accessKey'));
      expect(result.secretAccessKey, equals('secretKey'));
    });

    test('bridges temporary credentials with session token', () async {
      final expiration = DateTime.now().add(const Duration(hours: 1));
      final creds = common.AWSCredentials(
        'accessKey',
        'secretKey',
        'sessionToken',
        expiration,
      );
      final provider = common.AWSCredentialsProvider(creds);
      final bridge = AwsCommonCredentialsProviderBridge(provider);

      final result = await bridge.resolve();

      expect(result, isA<foundation.TemporaryCredentials>());
      final temp = result as foundation.TemporaryCredentials;
      expect(temp.accessKeyId, equals('accessKey'));
      expect(temp.secretAccessKey, equals('secretKey'));
      expect(temp.sessionToken, equals('sessionToken'));
      expect(temp.expiration, equals(expiration));
    });

    test(
      'throws when session token is present but expiration is null',
      () async {
        const creds = common.AWSCredentials(
          'accessKey',
          'secretKey',
          'sessionToken',
        );
        const provider = common.AWSCredentialsProvider(creds);
        const bridge = AwsCommonCredentialsProviderBridge(provider);

        expect(bridge.resolve(), throwsStateError);
      },
    );

    test(
      'throws when expiration is present but session token is null',
      () async {
        final creds = common.AWSCredentials(
          'accessKey',
          'secretKey',
          null,
          DateTime.now().add(const Duration(hours: 1)),
        );
        final provider = common.AWSCredentialsProvider(creds);
        final bridge = AwsCommonCredentialsProviderBridge(provider);

        expect(bridge.resolve(), throwsStateError);
      },
    );
  });
}
