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
        registerFallbackValue(const S3StorageListOptions());
      });

      test(
          'should forward options with default StorageAccessLevel to to StorageS3Service.list() API',
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

        expect(
          capturedOptions,
          isA<S3StorageListOptions>().having(
            (o) => o.storageAccessLevel,
            'storageAccessLevel',
            testDefaultStorageAccessLevel,
          ),
        );
      });
    });

    group('getProperties()', () {
      const testKey = 'some-object-key';
      final testResult = S3StorageGetPropertiesResult(
        storageItem: S3StorageItem(
          key: testKey,
          lastModified: DateTime(2022, 9, 19),
          eTag: '12345',
          size: 1024,
          metadata: {
            'filename': 'file.jpg',
            'uploader': 'user-id',
          },
        ),
      );

      setUpAll(() {
        registerFallbackValue(const S3StorageGetPropertiesOptions());
      });

      test(
          'should forward options with default StorageAccessLevel to StorageS3Service.getProperties() API',
          () {
        const testRequest =
            StorageGetPropertiesRequest<S3StorageGetPropertiesOptions>(
          key: testKey,
        );

        when(
          () => storageS3Service.getProperties(
            key: testKey,
            options: any(named: 'options'),
          ),
        ).thenAnswer(
          (_) async => testResult,
        );

        storageS3Plugin.getProperties(request: testRequest);

        final capturedOptions = verify(
          () => storageS3Service.getProperties(
            key: testKey,
            options:
                captureAny<S3StorageGetPropertiesOptions>(named: 'options'),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          isA<S3StorageGetPropertiesOptions>().having(
            (o) => o.storageAccessLevel,
            'storageAccessLevel',
            testDefaultStorageAccessLevel,
          ),
        );
      });
    });

    group('getUrl() API', () {
      const testKey = 'some-object-key';
      final testResult = S3StorageGetUrlResult(
        url: Uri(
          host: 's3.amazon.aws',
          path: 'album/1.jpg',
          scheme: 'https',
        ),
      );

      setUpAll(() {
        registerFallbackValue(const S3StorageGetUrlOptions());
      });

      test(
          'should forward options with default StorageAccessLevel to StorageS3Service.getUrl() API',
          () async {
        const testRequest = StorageGetUrlRequest(key: testKey);

        when(
          () => storageS3Service.getUrl(
            key: testKey,
            options: any(named: 'options'),
          ),
        ).thenAnswer(
          (_) async => testResult,
        );

        final getUrlOperation = storageS3Plugin.getUrl(request: testRequest);

        final capturedOptions = verify(
          () => storageS3Service.getUrl(
            key: testKey,
            options: captureAny<S3StorageGetUrlOptions>(named: 'options'),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          isA<S3StorageGetUrlOptions>().having(
            (o) => o.storageAccessLevel,
            'storageAccessLevel',
            testDefaultStorageAccessLevel,
          ),
        );

        final result = await getUrlOperation.result;
        expect(result.url, testResult.url);
      });
    });

    group('copy() API', () {
      const testTargetIdentityId = 'someone-else';
      const testSourceItem = S3StorageItem(key: 'source');
      const testDestinationItem = S3StorageItem(key: 'destination');
      const testSource = S3StorageItemWithAccessLevel(
        storageItem: testSourceItem,
      );
      const testDestination = S3StorageItemWithAccessLevel.forIdentity(
        testTargetIdentityId,
        storageItem: testDestinationItem,
      );
      const testResult = S3StorageCopyResult(copiedItem: testDestinationItem);

      setUpAll(() {
        registerFallbackValue(const S3StorageCopyOptions());
      });

      test(
          'should forward options with default getProperties value to StorageS3Service.copy() API',
          () async {
        const testRequest = StorageCopyRequest(
          source: testSource,
          destination: testDestination,
        );

        when(
          () => storageS3Service.copy(
            source: testSource,
            destination: testDestination,
            options: any(named: 'options'),
          ),
        ).thenAnswer((_) async => testResult);

        final copyOperation = storageS3Plugin.copy(request: testRequest);

        final capturedOptions = verify(
          () => storageS3Service.copy(
            source: testSource,
            destination: testDestination,
            options: captureAny<S3StorageCopyOptions>(named: 'options'),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          isA<S3StorageCopyOptions>().having(
            (o) => o.getProperties,
            'getProperties',
            false,
          ),
        );

        final result = await copyOperation.result;
        expect(result, testResult);
      });
    });

    group('move() API', () {
      const testSourceItem = S3StorageItem(key: 'source');
      const testDestinationItem = S3StorageItem(key: 'destination');
      const testSource = S3StorageItemWithAccessLevel(
        storageItem: testSourceItem,
        storageAccessLevel: StorageAccessLevel.private,
      );
      const testDestination = S3StorageItemWithAccessLevel(
        storageItem: testDestinationItem,
        storageAccessLevel: StorageAccessLevel.guest,
      );
      const testResult = S3StorageMoveResult(movedItem: testDestinationItem);

      setUpAll(() {
        registerFallbackValue(const S3StorageMoveOptions());
      });

      test(
          'should forward options with default getProperties value to StorageS3Service.move() API',
          () async {
        const testRequest = StorageMoveRequest(
          source: testSource,
          destination: testDestination,
        );

        when(
          () => storageS3Service.move(
            source: testSource,
            destination: testDestination,
            options: any(named: 'options'),
          ),
        ).thenAnswer((_) async => testResult);

        final moveOperation = storageS3Plugin.move(request: testRequest);

        final capturedOptions = verify(
          () => storageS3Service.move(
            source: testSource,
            destination: testDestination,
            options: captureAny<S3StorageMoveOptions>(named: 'options'),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          isA<S3StorageMoveOptions>().having(
            (o) => o.getProperties,
            'getProperties',
            false,
          ),
        );

        final result = await moveOperation.result;
        expect(result, testResult);
      });
    });

    group('remove() API', () {
      const testKey = 'object-to-remove';
      const testResult = S3StorageRemoveResult(
        removedItem: S3StorageItem(
          key: testKey,
        ),
      );

      setUpAll(() {
        registerFallbackValue(const S3StorageRemoveOptions());
      });

      test(
          'should forward options with default StorageAccessLevel StorageS3Service.remove() API',
          () async {
        const testRequest = StorageRemoveRequest(key: testKey);

        when(
          () => storageS3Service.remove(
            key: testKey,
            options: any(named: 'options'),
          ),
        ).thenAnswer((_) async => testResult);

        final removeOperation = storageS3Plugin.remove(request: testRequest);

        final capturedOptions = verify(
          () => storageS3Service.remove(
            key: testKey,
            options: captureAny<S3StorageRemoveOptions>(named: 'options'),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          isA<S3StorageRemoveOptions>().having(
            (o) => o.storageAccessLevel,
            'storageAccessLevel',
            testDefaultStorageAccessLevel,
          ),
        );

        final result = await removeOperation.result;
        expect(result, testResult);
      });
    });

    group('removeMany() API', () {
      final testKeys = List.generate(
        20,
        (index) => 'object-to-remove-${index + 1}',
      );
      final resultRemoveItems =
          testKeys.map((key) => S3StorageItem(key: key)).toList();
      final testResult = S3StorageRemoveManyResult(
        removedItems: resultRemoveItems,
      );

      setUpAll(() {
        registerFallbackValue(const S3StorageRemoveManyOptions());
      });

      test(
          'should forward options with default StorageAccessLevel StorageS3Service.removeMany() API',
          () async {
        final testRequest = StorageRemoveManyRequest(keys: testKeys);

        when(
          () => storageS3Service.removeMany(
            keys: testKeys,
            options: any(named: 'options'),
          ),
        ).thenAnswer((_) async => testResult);

        final removeManyOperation =
            storageS3Plugin.removeMany(request: testRequest);

        final capturedOptions = verify(
          () => storageS3Service.removeMany(
            keys: testKeys,
            options: captureAny(named: 'options'),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          isA<S3StorageRemoveManyOptions>().having(
            (o) => o.storageAccessLevel,
            'storageAccessLevel',
            testDefaultStorageAccessLevel,
          ),
        );

        final result = await removeManyOperation.result;
        expect(result.removedItems, resultRemoveItems);
      });
    });
  });
}
