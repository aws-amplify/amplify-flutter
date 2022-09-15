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
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/prefix_resolver/storage_access_level_aware_prefix_resolver.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'utils/mocks.dart';
import 'utils/test_token_provider.dart';

class TestCustomPrefixResolver extends S3StoragePrefixResolver {
  @override
  Future<String> resolvePrefix({
    required StorageAccessLevel storageAccessLevel,
    String? identityId,
  }) async {
    switch (storageAccessLevel) {
      case StorageAccessLevel.guest:
        return 'normal/';
      case StorageAccessLevel.private:
        return 'vip/';
      case StorageAccessLevel.protected:
        return 'premium/';
    }
  }
}

void main() {
  const testDefaultStorageAccessLevel = StorageAccessLevel.private;
  const testConfig = AmplifyConfig(
    storage: StorageConfig(
      plugins: {
        S3PluginConfig.pluginKey: S3PluginConfig(
          bucket: '123',
          region: 'west-2',
          defaultAccessLevel: testDefaultStorageAccessLevel,
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

  group('AmplifyStorageS3Dart', () {
    test('constructor should take in custom prefix resolver', () {
      final s3Plugin = AmplifyStorageS3Dart(
        prefixResolver: TestCustomPrefixResolver(),
      );
      final prefixResolver = s3Plugin.prefixResolver;
      expect(prefixResolver is TestCustomPrefixResolver, isTrue);
    });

    test(
        'configure should set up default prefix resolver when custom prefix resolver is NOT supplied',
        () async {
      final s3Plugin = AmplifyStorageS3Dart();
      await s3Plugin.configure(
        config: testConfig,
        authProviderRepo: testAuthProviderRepo,
      );
      final prefixResolver = s3Plugin.prefixResolver;
      expect(prefixResolver is StorageAccessLevelAwarePrefixResolver, isTrue);
    });

    test(
        'configure should set identityProvider for the default prefix resolver',
        () async {
      final s3Plugin = AmplifyStorageS3Dart();
      await s3Plugin.configure(
        config: testConfig,
        authProviderRepo: testAuthProviderRepo,
      );
      final prefixResolver =
          s3Plugin.prefixResolver as StorageAccessLevelAwarePrefixResolver;
      final identityProvider = prefixResolver.identityProvider;
      expect(
        identityProvider,
        testAuthProviderRepo.getAuthProvider(
          APIAuthorizationType.userPools.authProviderToken,
        ),
      );
    });
  });

  group('AmplifyStorageS3Dart API', () {
    late DependencyManager dependencyManager;
    late AmplifyStorageS3Dart storageS3Plugin;
    late StorageS3Service storageS3Service;

    setUp(() async {
      dependencyManager = DependencyManager();
      storageS3Service = MockStorageS3Service();
      storageS3Plugin = AmplifyStorageS3Dart(
        dependencyManagerOverride: dependencyManager,
      );
      await storageS3Plugin.configure(
        config: testConfig,
        authProviderRepo: testAuthProviderRepo,
      );

      dependencyManager.addInstance<StorageS3Service>(storageS3Service);
    });

    tearDown(() {
      dependencyManager.close();
    });

    group('list()', () {
      const testPath = 'some/path';
      final testResult = S3StorageListResult(
        <S3StorageItem>[],
        hasNext: false,
        next: () async {
          return S3StorageListResult(
            [],
            hasNext: false,
            next: () async {
              throw UnimplementedError();
            },
          );
        },
      );

      setUpAll(() {
        registerFallbackValue(S3StorageListOptions());
      });

      test(
          'should forward default StorageS3Options with default StorageAccessLevel to StorageS3Service.list() API',
          () {
        const testRequest =
            StorageListRequest<S3StorageListOptions>(path: testPath);

        when(
          () => storageS3Service.list(
            path: testPath,
            options: any(named: 'options'),
          ),
        ).thenAnswer(
          (_) async => testResult,
        );

        storageS3Plugin.list(request: testRequest);

        final capturedOptions = verify(
          () => storageS3Service.list(
            path: testPath,
            options: captureAny<S3StorageListOptions>(named: 'options'),
          ),
        ).captured.last;

        expect(capturedOptions is S3StorageListOptions, isTrue);
        expect(
          (capturedOptions as S3StorageListOptions).storageAccessLevel,
          testDefaultStorageAccessLevel,
        );
      });
    });
  });
}
