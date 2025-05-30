// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/src/config/aws_path_provider.dart';
import 'package:test/test.dart';

void main() {
  const accessKeyId = 'accessKeyId';
  const secretAccessKey = 'secretAccessKey';
  const sessionToken = 'sessionToken';

  group('AWSCredentialsProvider', () {
    test('environment', () {
      const credentialsProvider = EnvironmentCredentialsProvider();
      final credentials = overrideEnvironment({
        zAccessKeyId: accessKeyId,
        zSecretAccessKey: secretAccessKey,
        zSessionToken: sessionToken,
      }, credentialsProvider.retrieve);
      expect(
        credentials,
        const AWSCredentials(accessKeyId, secretAccessKey, sessionToken),
      );
    });

    group('defaultChain', () {
      const credentialsProvider = AWSCredentialsProvider.defaultChain();

      test('loads from environment', () async {
        final credentials = await overrideEnvironment({
          zAccessKeyId: accessKeyId,
          zSecretAccessKey: secretAccessKey,
          zSessionToken: sessionToken,
        }, credentialsProvider.retrieve);
        expect(
          credentials,
          const AWSCredentials(accessKeyId, secretAccessKey, sessionToken),
        );
      });
    });
  });
}
