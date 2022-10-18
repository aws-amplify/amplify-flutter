// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3/src/amplify_storage_s3_impl.dart';
import 'package:amplify_storage_s3/src/utils/app_path_provider.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_utils/test_token_provider.dart';

void main() {
  group('AmplifyStorageS3', () {
    const testConfig = AmplifyConfig(
      storage: StorageConfig(
        plugins: {
          S3PluginConfig.pluginKey: S3PluginConfig(
            bucket: '123',
            region: 'west-2',
          )
        },
      ),
    );
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
        () async {
      final s3Plugin = AmplifyStorageS3();
      await s3Plugin.configure(
        config: testConfig,
        authProviderRepo: testAuthProviderRepo,
      );
      // ignore: omit_local_variable_types, invalid_use_of_protected_member
      final AppPathProvider pathProvider = s3Plugin.dependencyManager.expect();
      expect(pathProvider, isA<S3AppPathProvider>());
    });
  });
}
