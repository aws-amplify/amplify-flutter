// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')

import 'dart:io';

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/src/config/aws_path_provider.dart';
import 'package:test/test.dart';

void main() {
  const accessKeyId = 'accessKeyId';
  const secretAccessKey = 'secretAccessKey';
  const sessionToken = 'sessionToken';

  group('AWSCredentialsProvider', () {
    Future<String> setUpProfile() async {
      final tempDir = await Directory.systemTemp.createTemp();
      final awsDir =
          await Directory.fromUri(tempDir.uri.resolve('.aws')).create();
      final credentialsFile = File.fromUri(awsDir.uri.resolve('credentials'));
      await credentialsFile.writeAsString(
        '''
[default]
aws_access_key_id = $accessKeyId
aws_secret_access_key = $secretAccessKey
aws_session_token = $sessionToken
''',
      );
      return tempDir.path;
    }

    test('profile', () async {
      final path = await setUpProfile();
      const credentialsProvider = AWSCredentialsProvider.profile();
      final credentials = await overrideEnvironment(
        {'HOME': path},
        credentialsProvider.retrieve,
      );
      expect(
        credentials,
        const AWSCredentials(
          accessKeyId,
          secretAccessKey,
          sessionToken,
        ),
      );
    });

    group('defaultChain', () {
      const credentialsProvider = AWSCredentialsProvider.defaultChain();

      test('succeeds with profile creds', () async {
        final path = await setUpProfile();
        await expectLater(
          () => const AWSCredentialsProvider.environment().retrieve(),
          throwsA(isA<InvalidCredentialsException>()),
        );
        final credentials = await overrideEnvironment(
          {'HOME': path},
          credentialsProvider.retrieve,
        );
        expect(
          credentials,
          const AWSCredentials(
            accessKeyId,
            secretAccessKey,
            sessionToken,
          ),
          reason: 'Should fall back to profile when no environment '
              'credentials are present',
        );
      });

      test('fails when no credentials are available', () async {
        await expectLater(
          overrideEnvironment(
            {'HOME': Directory.systemTemp.createTempSync('no_creds').path},
            credentialsProvider.retrieve,
          ),
          throwsA(isA<InvalidCredentialsException>()),
        );
      });
    });
  });
}
