// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')

import 'dart:io';

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

void main() {
  const accessKeyId = 'accessKeyId';
  const secretAccessKey = 'secretAccessKey';
  const sessionToken = 'sessionToken';

  group('AWSCredentialsProvider', () {
    test('profile', () async {
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

      const credentialsProvider = AWSCredentialsProvider.profile();
      final credentials = await overrideEnvironment(
        {'HOME': tempDir.path},
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
  });
}
