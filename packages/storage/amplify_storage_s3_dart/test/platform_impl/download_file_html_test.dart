// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('chrome')

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/platform_impl/download_file/download_file.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../test_utils/mocks.dart';

class DummyPathProvider implements AppPathProvider {
  const DummyPathProvider();

  @override
  Future<String> getApplicationSupportPath() {
    throw UnimplementedError();
  }

  @override
  Future<String> getTemporaryPath() {
    throw UnimplementedError();
  }
}

void main() {
  group('downloadFile() html implementation', () {
    late StorageS3Service storageS3Service;
    const testKey = 'upload-key.text';
    const testS3pluginConfig = S3PluginConfig(
      bucket: 'fake-bucket',
      region: 'west-2',
    );
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
    final testGetUrlResult = S3GetUrlResult(
      url: Uri(
        host: 's3.amazon.aws',
        path: 'album/1.jpg',
        scheme: 'https',
      ),
    );
    final testGetPropertiesResult = S3GetPropertiesResult(
      storageItem: testItem,
    );

    setUpAll(() {
      storageS3Service = MockStorageS3Service();

      registerFallbackValue(
        StorageGetUrlOptions<S3GetUrlPluginOptions>(
          accessLevel: testS3pluginConfig.defaultAccessLevel,
        ),
      );

      registerFallbackValue(
        StorageGetPropertiesOptions<S3GetPropertiesPluginOptions>(
          accessLevel: testS3pluginConfig.defaultAccessLevel,
        ),
      );

      when(
        () => storageS3Service.getUrl(
          key: testKey,
          options: any(named: 'options'),
        ),
      ).thenAnswer((_) async => testGetUrlResult);
    });

    test(
        'should invoke StorageS3Service.getUrl with S3GetUrlOptions with the default storage access level',
        () {
      final testRequest = StorageDownloadFileRequest(
        key: testKey,
        localFile: AWSFile.fromPath('file_name.jpg'),
      );

      downloadFile(
        request: testRequest,
        s3pluginConfig: testS3pluginConfig,
        storageS3Service: storageS3Service,
        appPathProvider: const DummyPathProvider(),
      );

      final capturedOptions = verify(
        () => storageS3Service.getUrl(
          key: testKey,
          options: captureAny<StorageGetUrlOptions<S3GetUrlPluginOptions>>(
            named: 'options',
          ),
        ),
      ).captured.last;

      expect(
        capturedOptions,
        isA<StorageGetUrlOptions>().having(
          (o) => o.accessLevel,
          'accessLevel',
          testS3pluginConfig.defaultAccessLevel,
        ),
      );
    });

    test(
        'should invoke StorageS3Service.getUrl with converted S3DownloadFileOptions',
        () {
      const testTargetIdentity = 'someone-else';
      final testRequest = StorageDownloadFileRequest(
        key: testKey,
        localFile: AWSFile.fromPath('file_name.jpg'),
        options: StorageDownloadFileOptions<S3DownloadFilePluginOptions>(
          accessLevel: testS3pluginConfig.defaultAccessLevel,
          pluginOptions:
              const S3DownloadFilePluginOptions.forIdentity(testTargetIdentity),
        ),
      );

      downloadFile(
        request: testRequest,
        s3pluginConfig: testS3pluginConfig,
        storageS3Service: storageS3Service,
        appPathProvider: const DummyPathProvider(),
      );

      final capturedOptions = verify(
        () => storageS3Service.getUrl(
          key: testKey,
          options: captureAny<StorageGetUrlOptions<S3GetUrlPluginOptions>>(
            named: 'options',
          ),
        ),
      ).captured.last;

      expect(
        capturedOptions,
        isA<StorageGetUrlOptions>().having(
          (o) => o.accessLevel,
          'accessLevel',
          testS3pluginConfig.defaultAccessLevel,
        ),
      );

      expect(
        capturedOptions,
        isA<StorageGetUrlOptions<S3GetUrlPluginOptions>>().having(
          (o) => o.pluginOptions!.targetIdentityId,
          'targetIdentityId',
          testTargetIdentity,
        ),
      );
    });

    test(
        'should invoke StorageS3Service.getProperties with expected parameters when getProperties is set as true in the options',
        () async {
      final testRequest = StorageDownloadFileRequest(
        key: testKey,
        localFile: AWSFile.fromPath('download.jpg'),
        options: const StorageDownloadFileOptions<S3DownloadFilePluginOptions>(
          accessLevel: StorageAccessLevel.private,
          pluginOptions: S3DownloadFilePluginOptions(
            getProperties: true,
          ),
        ),
      );

      when(
        () => storageS3Service.getProperties(
          key: testKey,
          options: any(
            named: 'options',
          ),
        ),
      ).thenAnswer((_) async => testGetPropertiesResult);

      final result = await downloadFile(
        request: testRequest,
        s3pluginConfig: testS3pluginConfig,
        storageS3Service: storageS3Service,
        appPathProvider: const DummyPathProvider(),
      ).result;

      final capturedGetPropertiesOptions = verify(
        () => storageS3Service.getProperties(
          key: testKey,
          options: captureAny<
              StorageGetPropertiesOptions<S3GetPropertiesPluginOptions>>(
            named: 'options',
          ),
        ),
      ).captured.last;

      expect(
        capturedGetPropertiesOptions,
        isA<StorageGetPropertiesOptions<S3GetPropertiesPluginOptions>>(),
      );

      expect(result.downloadedItem, testItem);
    });
  });
}
