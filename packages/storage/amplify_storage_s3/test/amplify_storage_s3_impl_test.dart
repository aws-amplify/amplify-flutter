// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/config/amplify_outputs/storage/storage_outputs.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_storage_s3/src/utils/app_path_provider/app_path_provider.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_utils/test_token_provider.dart';

void main() {
  group('AmplifyStorageS3', () {
    // ignore: invalid_use_of_internal_member
    const testConfig = AmplifyOutputs(
      version: '1',
      storage: StorageOutputs(bucketName: '123', awsRegion: 'west-2'),
    );
    // ignore: invalid_use_of_internal_member
    final testAuthProviderRepo = AmplifyAuthProviderRepository()
      ..registerAuthProvider(
        APIAuthorizationType.userPools.authProviderToken,
        TestTokenIdentityProvider(),
      )
      ..registerAuthProvider(
        APIAuthorizationType.iam.authProviderToken,
        TestIamAuthProvider(),
      );
    test(
        'configure() should override AppPathProvider with the Flutter provider',
        () {
      runZoned(
        () async {
          final s3Plugin = AmplifyStorageS3();
          await s3Plugin.configure(
            config: testConfig,
            authProviderRepo: testAuthProviderRepo,
          );
          final pathProvider =
              s3Plugin.dependencies.getOrCreate<AppPathProvider>();
          expect(pathProvider, isA<S3AppPathProvider>());
        },
        zoneValues: {
          zIsTest: true,
        },
      );
    });
  });
}
