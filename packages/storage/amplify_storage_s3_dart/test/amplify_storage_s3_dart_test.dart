// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/prefix_resolver/storage_access_level_aware_prefix_resolver.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'test_utils/mocks.dart';
import 'test_utils/test_custom_prefix_resolver.dart';
import 'test_utils/test_token_provider.dart';

void main() {
  const testDefaultStorageAccessLevel = StorageAccessLevel.guest;
  const testAccessLevelProtected = StorageAccessLevel.protected;
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
    late DependencyManager dependencyManager;
    late StorageS3Service storageS3Service;

    setUp(() async {
      dependencyManager = AmplifyDependencyManager();
      storageS3Service = MockStorageS3Service();

      when(
        () => storageS3Service.abortIncompleteMultipartUploads(),
      ).thenAnswer((_) async {});
    });

    tearDown(() {
      dependencyManager.close();
    });

    test('constructor should take in custom prefix resolver', () {
      final s3Plugin = AmplifyStorageS3Dart(
        prefixResolver: TestCustomPrefixResolver(),
        dependencyManagerOverride: dependencyManager,
      );
      final prefixResolver = s3Plugin.prefixResolver;
      expect(prefixResolver is TestCustomPrefixResolver, isTrue);
    });

    test(
        'configure should set up default prefix resolver when custom prefix resolver is NOT supplied',
        () async {
      final s3Plugin = AmplifyStorageS3Dart(
        dependencyManagerOverride: dependencyManager,
      );
      await s3Plugin.configure(
        config: testConfig,
        authProviderRepo: testAuthProviderRepo,
      );
      dependencyManager.addInstance<StorageS3Service>(storageS3Service);
      final prefixResolver = s3Plugin.prefixResolver;
      expect(prefixResolver is StorageAccessLevelAwarePrefixResolver, isTrue);
    });

    test(
        'configure should set identityProvider for the default prefix resolver',
        () async {
      final s3Plugin = AmplifyStorageS3Dart(
        dependencyManagerOverride: dependencyManager,
      );
      await s3Plugin.configure(
        config: testConfig,
        authProviderRepo: testAuthProviderRepo,
      );
      dependencyManager.addInstance<StorageS3Service>(storageS3Service);
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
      dependencyManager = AmplifyDependencyManager();
      storageS3Service = MockStorageS3Service();
      storageS3Plugin = AmplifyStorageS3Dart(
        dependencyManagerOverride: dependencyManager,
      );

      await storageS3Plugin.configure(
        config: testConfig,
        authProviderRepo: testAuthProviderRepo,
      );

      dependencyManager.addInstance<StorageS3Service>(storageS3Service);

      when(
        () => storageS3Service.abortIncompleteMultipartUploads(),
      ).thenAnswer((_) async {});
    });

    tearDown(() {
      dependencyManager.close();
    });

    group('list()', () {
      const testPath = 'some/path';
      final testResult = S3ListResult(
        <S3Item>[],
        hasNextPage: false,
        metadata: S3ListMetadata.fromS3CommonPrefixes(
          commonPrefixes: [],
          prefixToDrop: 'prefix',
        ),
      );

      setUpAll(() {
        registerFallbackValue(
          const StorageListOptions(),
        );
      });

      test('should forward default options to StorageS3Service.list() API',
          () async {
        const defaultOptions =
            StorageListOptions(pluginOptions: S3ListPluginOptions());

        when(
          () => storageS3Service.list(
            path: testPath,
            options: defaultOptions,
          ),
        ).thenAnswer(
          (_) async => testResult,
        );

        final listOperation = storageS3Plugin.list(path: testPath);

        final capturedOptions = verify(
          () => storageS3Service.list(
            path: testPath,
            options: captureAny<StorageListOptions>(
              named: 'options',
            ),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          defaultOptions,
        );

        final result = await listOperation.result;
        expect(
          result,
          testResult,
        );
      });

      test('should forward options to StorageS3Service.list() API', () async {
        const testOptions = StorageListOptions(
          accessLevel: testAccessLevelProtected,
          pluginOptions: S3ListPluginOptions(excludeSubPaths: true),
          nextToken: 'next-token-123',
          pageSize: 2,
        );

        when(
          () => storageS3Service.list(
            path: testPath,
            options: testOptions,
          ),
        ).thenAnswer(
          (_) async => testResult,
        );

        final listOperation = storageS3Plugin.list(
          path: testPath,
          options: testOptions,
        );

        final capturedOptions = verify(
          () => storageS3Service.list(
            path: testPath,
            options: captureAny<StorageListOptions>(
              named: 'options',
            ),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          testOptions,
        );

        final result = await listOperation.result;
        expect(
          result,
          testResult,
        );
      });
    });

    group('getProperties()', () {
      const testKey = 'some-object-key';
      final testResult = S3GetPropertiesResult(
        storageItem: S3Item(
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
        registerFallbackValue(
          const StorageGetPropertiesOptions(),
        );
      });

      test(
          'should forward default options to StorageS3Service.getProperties() API',
          () async {
        const defaultOptions = StorageGetPropertiesOptions(
          pluginOptions: S3GetPropertiesPluginOptions(),
        );

        when(
          () => storageS3Service.getProperties(
            key: testKey,
            options: defaultOptions,
          ),
        ).thenAnswer(
          (_) async => testResult,
        );

        final getPropertiesOperation =
            storageS3Plugin.getProperties(key: testKey);

        final capturedOptions = verify(
          () => storageS3Service.getProperties(
            key: testKey,
            options: captureAny<StorageGetPropertiesOptions>(
              named: 'options',
            ),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          defaultOptions,
        );

        final result = await getPropertiesOperation.result;

        expect(
          result,
          testResult,
        );
      });

      test('should forward options to StorageS3Service.getProperties() API',
          () async {
        const testOptions = StorageGetPropertiesOptions(
          accessLevel: testAccessLevelProtected,
          pluginOptions:
              S3GetPropertiesPluginOptions.forIdentity('target-identity-id'),
        );

        when(
          () => storageS3Service.getProperties(
            key: testKey,
            options: testOptions,
          ),
        ).thenAnswer(
          (_) async => testResult,
        );

        final getPropertiesOperation = storageS3Plugin.getProperties(
          key: testKey,
          options: testOptions,
        );

        final capturedOptions = verify(
          () => storageS3Service.getProperties(
            key: testKey,
            options: captureAny<StorageGetPropertiesOptions>(
              named: 'options',
            ),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          testOptions,
        );

        final result = await getPropertiesOperation.result;
        expect(result, testResult);
      });
    });

    group('getUrl() API', () {
      const testKey = 'some-object-key';
      final testResult = S3GetUrlResult(
        url: Uri(
          host: 's3.amazon.aws',
          path: 'album/1.jpg',
          scheme: 'https',
        ),
      );

      setUpAll(() {
        registerFallbackValue(
          const StorageGetUrlOptions(),
        );
      });

      test('should forward default options to StorageS3Service.getUrl() API',
          () async {
        const defaultOptions = StorageGetUrlOptions(
          pluginOptions: S3GetUrlPluginOptions(),
        );

        when(
          () => storageS3Service.getUrl(
            key: testKey,
            options: defaultOptions,
          ),
        ).thenAnswer(
          (_) async => testResult,
        );

        final getUrlOperation = storageS3Plugin.getUrl(key: testKey);

        final capturedOptions = verify(
          () => storageS3Service.getUrl(
            key: testKey,
            options: captureAny<StorageGetUrlOptions>(
              named: 'options',
            ),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          defaultOptions,
        );

        final result = await getUrlOperation.result;
        expect(
          result,
          testResult,
        );
      });

      test('should forward options to StorageS3Service.getUrl() API', () async {
        const testOptions = StorageGetUrlOptions(
          accessLevel: testAccessLevelProtected,
          pluginOptions: S3GetUrlPluginOptions(
            validateObjectExistence: true,
            expiresIn: Duration(minutes: 10),
            useAccelerateEndpoint: true,
          ),
        );

        when(
          () => storageS3Service.getUrl(
            key: testKey,
            options: testOptions,
          ),
        ).thenAnswer(
          (_) async => testResult,
        );

        final getUrlOperation = storageS3Plugin.getUrl(
          key: testKey,
          options: testOptions,
        );

        final capturedOptions = verify(
          () => storageS3Service.getUrl(
            key: testKey,
            options: captureAny<StorageGetUrlOptions>(
              named: 'options',
            ),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          testOptions,
        );

        final result = await getUrlOperation.result;
        expect(
          result,
          testResult,
        );
      });
    });

    group('downloadData() API', () {
      const testKey = 'some-object-key';
      final testItem = S3Item(
        key: testKey,
        lastModified: DateTime(2022, 9, 19),
        eTag: '12345',
        size: 1024,
        metadata: {
          'filename': 'file.jpg',
          'uploader': 'user-id',
        },
      );
      final testS3DownloadTask = MockS3DownloadTask();
      late S3DownloadDataOperation downloadDataOperation;

      setUpAll(() {
        registerFallbackValue(
          const StorageDownloadDataOptions(),
        );
      });

      test(
          'should forward default options to StorageS3Service.downloadData API',
          () async {
        const defaultOptions = StorageDownloadDataOptions(
          pluginOptions: S3DownloadDataPluginOptions(),
        );

        when(
          () => storageS3Service.downloadData(
            key: testKey,
            options: defaultOptions,
            preStart: any(named: 'preStart'),
            onProgress: any(named: 'onProgress'),
            onData: any(named: 'onData'),
            onDone: any(named: 'onDone'),
          ),
        ).thenAnswer((_) => testS3DownloadTask);

        when(() => testS3DownloadTask.result).thenAnswer((_) async => testItem);

        downloadDataOperation = storageS3Plugin.downloadData(
          key: testKey,
        );

        final capturedOptions = verify(
          () => storageS3Service.downloadData(
            key: testKey,
            options: captureAny<StorageDownloadDataOptions>(
              named: 'options',
            ),
            preStart: any(named: 'preStart'),
            onProgress: any(named: 'onProgress'),
            onData: any(named: 'onData'),
            onDone: any(named: 'onDone'),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          defaultOptions,
        );

        final result = await downloadDataOperation.result;
        expect(result.bytes.isEmpty, true);
        expect(result.downloadedItem, testItem);
      });

      test('should forward options to StorageS3Service.downloadData API',
          () async {
        const testOptions = StorageDownloadDataOptions(
          accessLevel: testAccessLevelProtected,
          pluginOptions: S3DownloadDataPluginOptions(
            useAccelerateEndpoint: true,
            getProperties: true,
          ),
        );

        when(
          () => storageS3Service.downloadData(
            key: testKey,
            options: any(named: 'options'),
            onData: any(named: 'onData'),
          ),
        ).thenAnswer((_) => testS3DownloadTask);

        when(() => testS3DownloadTask.result).thenAnswer((_) async => testItem);

        downloadDataOperation = storageS3Plugin.downloadData(
          key: testKey,
          options: testOptions,
        );

        final capturedOptions = verify(
          () => storageS3Service.downloadData(
            key: testKey,
            onData: any(named: 'onData'),
            options: captureAny<StorageDownloadDataOptions>(
              named: 'options',
            ),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          testOptions,
        );
      });

      test(
          'S3DownloadDataOperation pause resume and cancel APIs should interact with S3DownloadTask',
          () async {
        when(testS3DownloadTask.pause).thenAnswer((_) async {});
        when(testS3DownloadTask.resume).thenAnswer((_) async {});
        when(testS3DownloadTask.cancel).thenAnswer((_) async {});

        await downloadDataOperation.pause();
        await downloadDataOperation.resume();
        await downloadDataOperation.cancel();

        verify(testS3DownloadTask.pause).called(1);
        verify(testS3DownloadTask.resume).called(1);
        verify(testS3DownloadTask.cancel).called(1);
      });
    });

    group('uploadData() API', () {
      const testKey = 'object-upload-to';
      final testData = S3DataPayload.string('Hello S3.');
      final testItem = S3Item(
        key: testKey,
        lastModified: DateTime(2022, 10, 14),
        eTag: '12345',
        size: 1024,
        metadata: {
          'filename': 'file.jpg',
          'uploader': 'user-id',
        },
      );
      final testS3UploadTask = MockS3UploadTask();
      late S3UploadDataOperation uploadDataOperation;

      setUpAll(() {
        registerFallbackValue(
          const StorageUploadDataOptions(),
        );
        registerFallbackValue(S3DataPayload());
      });

      test('should forward default options to StorageS3Service.uploadData API',
          () async {
        const defaultOptions = StorageUploadDataOptions(
          pluginOptions: S3UploadDataPluginOptions(),
        );

        when(
          () => storageS3Service.uploadData(
            key: testKey,
            dataPayload: any(named: 'dataPayload'),
            options: defaultOptions,
            onProgress: any(named: 'onProgress'),
            onDone: any(named: 'onDone'),
            onError: any(named: 'onError'),
          ),
        ).thenAnswer((_) => testS3UploadTask);

        when(() => testS3UploadTask.result).thenAnswer((_) async => testItem);

        final uploadDataOperation =
            storageS3Plugin.uploadData(data: testData, key: testKey);

        final capturedParams = verify(
          () => storageS3Service.uploadData(
            key: testKey,
            dataPayload: captureAny<S3DataPayload>(named: 'dataPayload'),
            options: captureAny<StorageUploadDataOptions>(
              named: 'options',
            ),
            onProgress: any(named: 'onProgress'),
            onDone: any(named: 'onDone'),
            onError: any(named: 'onError'),
          ),
        ).captured;

        final capturedDataPayload = capturedParams[0];
        final capturedOptions = capturedParams[1];

        expect(
          capturedDataPayload,
          testData,
        );
        expect(
          capturedOptions,
          defaultOptions,
        );

        final result = await uploadDataOperation.result;
        expect(
          result.uploadedItem,
          testItem,
        );
      });

      test('should forward options to StorageS3Service.uploadData API',
          () async {
        const testOptions = StorageUploadDataOptions(
          accessLevel: testAccessLevelProtected,
          pluginOptions: S3UploadDataPluginOptions(
            getProperties: true,
            useAccelerateEndpoint: true,
          ),
        );

        when(
          () => storageS3Service.uploadData(
            key: testKey,
            dataPayload: any(named: 'dataPayload'),
            options: testOptions,
          ),
        ).thenAnswer((_) => testS3UploadTask);

        when(() => testS3UploadTask.result).thenAnswer((_) async => testItem);
        uploadDataOperation = storageS3Plugin.uploadData(
          data: testData,
          key: testKey,
          options: testOptions,
        );
        final capturedOptions = verify(
          () => storageS3Service.uploadData(
            key: testKey,
            dataPayload: any(named: 'dataPayload'),
            options: captureAny<StorageUploadDataOptions>(
              named: 'options',
            ),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          testOptions,
        );
      });

      test('should forward options.metadata to StorageS3Service.uploadData API',
          () async {
        const testMetadata = {
          'filename': '123',
        };
        const testOptions = StorageUploadDataOptions(
          accessLevel: testAccessLevelProtected,
          metadata: testMetadata,
        );

        when(
          () => storageS3Service.uploadData(
            key: testKey,
            dataPayload: any(named: 'dataPayload'),
            options: any(named: 'options'),
          ),
        ).thenAnswer((_) => testS3UploadTask);

        when(() => testS3UploadTask.result).thenAnswer((_) async => testItem);
        uploadDataOperation = storageS3Plugin.uploadData(
          data: testData,
          key: testKey,
          options: testOptions,
        );
        final capturedOptions = verify(
          () => storageS3Service.uploadData(
            key: testKey,
            dataPayload: any(named: 'dataPayload'),
            options: captureAny<StorageUploadDataOptions>(
              named: 'options',
            ),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          isA<StorageUploadDataOptions>().having(
            (o) => o.metadata,
            'options.metadata',
            equals(testMetadata),
          ),
        );
      });

      test(
          'S3UploadDataOperation cancel APIs should interact with S3DownloadTask',
          () async {
        when(testS3UploadTask.cancel).thenAnswer((_) async {});

        await uploadDataOperation.cancel();

        verify(testS3UploadTask.cancel).called(1);
      });
    });

    group('uploadFile() API', () {
      const testKey = 'object-upload-to';
      final testLocalFile = AWSFile.fromData([101]);
      final testItem = S3Item(
        key: testKey,
        lastModified: DateTime(2022, 10, 14),
        eTag: '12345',
        size: 1024,
        metadata: {
          'filename': 'file.jpg',
          'uploader': 'user-id',
        },
      );
      final testS3UploadTask = MockS3UploadTask();
      late S3UploadFileOperation uploadFileOperation;

      setUpAll(() {
        registerFallbackValue(
          const StorageUploadFileOptions(),
        );
        registerFallbackValue(S3DataPayload());
        registerFallbackValue(AWSFile.fromData([]));
      });

      test('should forward default options to StorageS3Service.uploadFile API',
          () async {
        const defaultOptions = StorageUploadFileOptions(
          pluginOptions: S3UploadFilePluginOptions(),
        );

        when(
          () => storageS3Service.uploadFile(
            key: testKey,
            localFile: any(named: 'localFile'),
            options: defaultOptions,
            onProgress: any(named: 'onProgress'),
            onDone: any(named: 'onDone'),
            onError: any(named: 'onError'),
          ),
        ).thenAnswer((_) => testS3UploadTask);

        when(() => testS3UploadTask.result).thenAnswer((_) async => testItem);

        uploadFileOperation = storageS3Plugin.uploadFile(
          key: testKey,
          localFile: testLocalFile,
        );

        final capturedParams = verify(
          () => storageS3Service.uploadFile(
            key: testKey,
            localFile: captureAny<AWSFile>(named: 'localFile'),
            options: captureAny<StorageUploadFileOptions>(
              named: 'options',
            ),
            onProgress: any(named: 'onProgress'),
            onDone: any(named: 'onDone'),
            onError: any(named: 'onError'),
          ),
        ).captured;

        final capturedLocalFile = capturedParams[0];
        final capturedOptions = capturedParams[1];

        expect(
          capturedLocalFile,
          testLocalFile,
        );

        expect(
          capturedOptions,
          defaultOptions,
        );

        final result = await uploadFileOperation.result;
        expect(result.uploadedItem, testItem);
      });

      test('should forward options to StorageS3Service.uploadFile API',
          () async {
        const testOptions = StorageUploadFileOptions(
          accessLevel: testAccessLevelProtected,
          pluginOptions: S3UploadFilePluginOptions(
            getProperties: true,
            useAccelerateEndpoint: true,
          ),
        );

        when(
          () => storageS3Service.uploadFile(
            key: testKey,
            localFile: any(named: 'localFile'),
            options: testOptions,
          ),
        ).thenAnswer((_) => testS3UploadTask);

        when(() => testS3UploadTask.result).thenAnswer((_) async => testItem);

        uploadFileOperation = storageS3Plugin.uploadFile(
          key: testKey,
          localFile: testLocalFile,
          options: testOptions,
        );

        final capturedOptions = verify(
          () => storageS3Service.uploadFile(
            key: testKey,
            localFile: any(named: 'localFile'),
            options: captureAny<StorageUploadFileOptions>(
              named: 'options',
            ),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          testOptions,
        );
      });

      test('should forward options.metadata to StorageS3Service.uploadFile API',
          () async {
        const testMetadata = {
          'filename': '123',
        };
        const testOptions = StorageUploadFileOptions(
          accessLevel: testAccessLevelProtected,
          metadata: testMetadata,
        );

        when(
          () => storageS3Service.uploadFile(
            key: testKey,
            localFile: any(named: 'localFile'),
            options: any(named: 'options'),
          ),
        ).thenAnswer((_) => testS3UploadTask);

        when(() => testS3UploadTask.result).thenAnswer((_) async => testItem);

        uploadFileOperation = storageS3Plugin.uploadFile(
          key: testKey,
          localFile: testLocalFile,
          options: testOptions,
        );

        final capturedOptions = verify(
          () => storageS3Service.uploadFile(
            key: testKey,
            localFile: any(named: 'localFile'),
            options: captureAny<StorageUploadFileOptions>(
              named: 'options',
            ),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          isA<StorageUploadFileOptions>().having(
            (o) => o.metadata,
            'options.metadata',
            equals(testMetadata),
          ),
        );
      });

      test(
          'S3DownloadUploadOperation pause resume and cancel APIs should interact with S3DownloadTask',
          () async {
        when(testS3UploadTask.pause).thenAnswer((_) async {});
        when(testS3UploadTask.resume).thenAnswer((_) async {});
        when(testS3UploadTask.cancel).thenAnswer((_) async {});

        await uploadFileOperation.pause();
        await uploadFileOperation.resume();
        await uploadFileOperation.cancel();

        verify(testS3UploadTask.pause).called(1);
        verify(testS3UploadTask.resume).called(1);
        verify(testS3UploadTask.cancel).called(1);
      });
    });

    group('copy() API', () {
      const sourceKey = 'source-key';
      const destinationKey = 'destination-key';

      const testSource = StorageItemWithAccessLevel(
        storageItem: StorageItem(key: sourceKey),
        accessLevel: StorageAccessLevel.guest,
      );
      const testDestination = StorageItemWithAccessLevel(
        storageItem: StorageItem(key: destinationKey),
        accessLevel: StorageAccessLevel.protected,
      );

      final testResult = S3CopyResult(copiedItem: S3Item(key: destinationKey));

      setUpAll(() {
        registerFallbackValue(const StorageCopyOptions());
        registerFallbackValue(
          S3ItemWithAccessLevel(
            storageItem: S3Item(key: 'some-key'),
          ),
        );
      });

      test('should forward options to StorageS3Service.copy() API', () async {
        when(
          () => storageS3Service.copy(
            source: any(named: 'source'),
            destination: any(named: 'destination'),
            options: any(named: 'options'),
          ),
        ).thenAnswer((_) async {
          return Future.value(testResult);
        });

        final copyOperation = storageS3Plugin.copy(
          source: testSource,
          destination: testDestination,
          options: const StorageCopyOptions(
            pluginOptions: S3CopyPluginOptions(getProperties: true),
          ),
        );

        final captured = verify(
          () => storageS3Service.copy(
            source: captureAny<S3ItemWithAccessLevel>(named: 'source'),
            destination:
                captureAny<S3ItemWithAccessLevel>(named: 'destination'),
            options: captureAny<StorageCopyOptions>(
              named: 'options',
            ),
          ),
        ).captured;
        final capturedSource = captured[0];
        final capturedDestination = captured[1];
        final capturedOptions = captured[2];

        expect(
          capturedSource,
          isA<S3ItemWithAccessLevel>()
              .having(
                (i) => i.accessLevel,
                'accessLevel',
                testSource.accessLevel,
              )
              .having(
                (i) => i.storageItem.key,
                'key',
                testSource.storageItem.key,
              ),
        );
        expect(
          capturedDestination,
          isA<S3ItemWithAccessLevel>()
              .having(
                (o) => o.accessLevel,
                'accessLevel',
                testDestination.accessLevel,
              )
              .having(
                (i) => i.storageItem.key,
                'key',
                testDestination.storageItem.key,
              ),
        );

        expect(
          capturedOptions,
          isA<StorageCopyOptions>()
              .having(
                (o) => o.pluginOptions,
                'pluginOptions',
                isNotNull,
              )
              .having(
                (o) => (o.pluginOptions as S3CopyPluginOptions).getProperties,
                'getProperties',
                isTrue,
              ),
        );

        final result = await copyOperation.result;
        expect(result, testResult);
      });
    });

    group('move() API', () {
      const sourceKey = 'source-key';
      const destinationKey = 'destination-key';

      const testSource = StorageItemWithAccessLevel(
        storageItem: StorageItem(key: sourceKey),
        accessLevel: StorageAccessLevel.guest,
      );

      const testDestination = StorageItemWithAccessLevel(
        storageItem: StorageItem(key: destinationKey),
        accessLevel: StorageAccessLevel.protected,
      );

      final testResult = S3MoveResult(movedItem: S3Item(key: destinationKey));

      setUpAll(() {
        registerFallbackValue(const StorageMoveOptions());
        registerFallbackValue(
          S3ItemWithAccessLevel(
            storageItem: S3Item(key: 'some-key'),
          ),
        );
      });

      test(
          'should forward options with default getProperties value to StorageS3Service.move() API',
          () async {
        when(
          () => storageS3Service.move(
            source: any(named: 'source'),
            destination: any(named: 'destination'),
            options: any(named: 'options'),
          ),
        ).thenAnswer((_) async => testResult);

        final moveOperation = storageS3Plugin.move(
          source: testSource,
          destination: testDestination,
        );

        final captured = verify(
          () => storageS3Service.move(
            source: captureAny<S3ItemWithAccessLevel>(named: 'source'),
            destination:
                captureAny<S3ItemWithAccessLevel>(named: 'destination'),
            options: captureAny<StorageMoveOptions>(
              named: 'options',
            ),
          ),
        ).captured;
        final capturedSource = captured[0];
        final capturedDestination = captured[1];
        final capturedOptions = captured[2];
        expect(
          capturedSource,
          isA<S3ItemWithAccessLevel>()
              .having(
                (i) => i.accessLevel,
                'accessLevel',
                testSource.accessLevel,
              )
              .having(
                (i) => i.storageItem.key,
                'key',
                testSource.storageItem.key,
              ),
        );
        expect(
          capturedDestination,
          isA<S3ItemWithAccessLevel>()
              .having(
                (o) => o.accessLevel,
                'accessLevel',
                testDestination.accessLevel,
              )
              .having(
                (i) => i.storageItem.key,
                'key',
                testDestination.storageItem.key,
              ),
        );
        expect(
          capturedOptions,
          isA<StorageMoveOptions>().having(
            (o) => (o.pluginOptions! as S3MovePluginOptions).getProperties,
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
      final testResult = S3RemoveResult(
        removedItem: S3Item(
          key: testKey,
        ),
      );

      setUpAll(() {
        registerFallbackValue(
          const StorageRemoveOptions(),
        );
      });

      test('should forward default options to StorageS3Service.remove() API',
          () async {
        const defaultOptions = StorageRemoveOptions(
          pluginOptions: S3RemovePluginOptions(),
        );
        when(
          () => storageS3Service.remove(
            key: testKey,
            options: defaultOptions,
          ),
        ).thenAnswer((_) async => testResult);

        final removeOperation = storageS3Plugin.remove(key: testKey);

        final capturedOptions = verify(
          () => storageS3Service.remove(
            key: testKey,
            options: captureAny<StorageRemoveOptions>(
              named: 'options',
            ),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          defaultOptions,
        );

        final result = await removeOperation.result;
        expect(
          result,
          testResult,
        );
      });

      test('should forward options to StorageS3Service.remove() API', () async {
        const testOptions = StorageRemoveOptions(
          accessLevel: testAccessLevelProtected,
          pluginOptions: S3RemovePluginOptions(),
        );

        when(
          () => storageS3Service.remove(
            key: testKey,
            options: any(named: 'options'),
          ),
        ).thenAnswer((_) async => testResult);

        final removeOperation = storageS3Plugin.remove(
          key: testKey,
          options: testOptions,
        );

        final capturedOptions = verify(
          () => storageS3Service.remove(
            key: testKey,
            options: captureAny<StorageRemoveOptions>(
              named: 'options',
            ),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          testOptions,
        );

        final result = await removeOperation.result;
        expect(
          result,
          testResult,
        );
      });
    });

    group('removeMany() API', () {
      final testKeys = List.generate(
        20,
        (index) => 'object-to-remove-${index + 1}',
      );
      final resultRemoveItems =
          testKeys.map((key) => S3Item(key: key)).toList();
      final testResult = S3RemoveManyResult(
        removedItems: resultRemoveItems,
      );

      setUpAll(() {
        registerFallbackValue(
          const StorageRemoveManyOptions(),
        );
      });

      test(
          'should forward default options to StorageS3Service.removeMany() API',
          () async {
        const defaultOptions = StorageRemoveManyOptions(
          pluginOptions: S3RemoveManyPluginOptions(),
        );

        when(
          () => storageS3Service.removeMany(
            keys: testKeys,
            options: defaultOptions,
          ),
        ).thenAnswer((_) async => testResult);

        final removeManyOperation = storageS3Plugin.removeMany(keys: testKeys);

        final capturedOptions = verify(
          () => storageS3Service.removeMany(
            keys: testKeys,
            options: captureAny(named: 'options'),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          defaultOptions,
        );

        final result = await removeManyOperation.result;
        expect(
          result.removedItems,
          resultRemoveItems,
        );
      });

      test('should forward options to StorageS3Service.removeMany() API',
          () async {
        const testOptions = StorageRemoveManyOptions(
          accessLevel: testAccessLevelProtected,
          pluginOptions: S3RemoveManyPluginOptions(),
        );

        when(
          () => storageS3Service.removeMany(
            keys: testKeys,
            options: testOptions,
          ),
        ).thenAnswer((_) async => testResult);

        final removeManyOperation = storageS3Plugin.removeMany(
          keys: testKeys,
          options: testOptions,
        );

        final capturedOptions = verify(
          () => storageS3Service.removeMany(
            keys: testKeys,
            options: captureAny(named: 'options'),
          ),
        ).captured.last;

        expect(
          capturedOptions,
          testOptions,
        );

        final result = await removeManyOperation.result;
        expect(
          result.removedItems,
          resultRemoveItems,
        );
      });
    });
  });
}
