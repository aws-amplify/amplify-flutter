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
        StorageGetUrlOptions(
          accessLevel: testS3pluginConfig.defaultAccessLevel,
        ),
      );

      registerFallbackValue(
        StorageGetPropertiesOptions(
          accessLevel: testS3pluginConfig.defaultAccessLevel,
        ),
      );

      when(
        () => storageS3Service.getProperties(
          key: testKey,
          options: any(named: 'options'),
        ),
      ).thenAnswer((_) async => testGetPropertiesResult);

      when(
        () => storageS3Service.getUrl(
          key: testKey,
          options: any(named: 'options'),
        ),
      ).thenAnswer((_) async => testGetUrlResult);
    });

    test(
        'should invoke StorageS3Service.getUrl with converted S3DownloadFilePluginOptions',
        () async {
      const testTargetIdentity = 'someone-else';
      final operation = downloadFile(
        key: testKey,
        localFile: AWSFile.fromPath('file_name.jpg'),
        options: StorageDownloadFileOptions(
          accessLevel: testS3pluginConfig.defaultAccessLevel,
          pluginOptions:
              const S3DownloadFilePluginOptions.forIdentity(testTargetIdentity),
        ),
        s3pluginConfig: testS3pluginConfig,
        storageS3Service: storageS3Service,
        appPathProvider: const DummyPathProvider(),
      );

      await operation.result;

      final capturedGetPropertiesOptions = verify(
        () => storageS3Service.getProperties(
          key: testKey,
          options: captureAny<StorageGetPropertiesOptions>(
            named: 'options',
          ),
        ),
      ).captured.last;

      expect(
        capturedGetPropertiesOptions,
        isA<StorageGetPropertiesOptions>()
            .having(
              (o) => o.accessLevel,
              'accessLevel',
              testS3pluginConfig.defaultAccessLevel,
            )
            .having(
              (o) => (o.pluginOptions! as S3GetPropertiesPluginOptions)
                  .targetIdentityId,
              'targetIdentityId',
              testTargetIdentity,
            ),
      );

      final capturedUrlOptions = verify(
        () => storageS3Service.getUrl(
          key: testKey,
          options: captureAny<StorageGetUrlOptions>(
            named: 'options',
          ),
        ),
      ).captured.last;

      expect(
        capturedUrlOptions,
        isA<StorageGetUrlOptions>()
            .having(
              (o) => o.accessLevel,
              'accessLevel',
              testS3pluginConfig.defaultAccessLevel,
            )
            .having(
              (o) =>
                  (o.pluginOptions! as S3GetUrlPluginOptions).targetIdentityId,
              'targetIdentityId',
              testTargetIdentity,
            ),
      );
    });

    test(
        'download result should include metadata when options.getProperties is set to true',
        () async {
      const options = StorageDownloadFileOptions(
        accessLevel: StorageAccessLevel.private,
        pluginOptions: S3DownloadFilePluginOptions(
          getProperties: true,
        ),
      );
      final result = await downloadFile(
        key: testKey,
        localFile: AWSFile.fromPath('download.jpg'),
        options: options,
        s3pluginConfig: testS3pluginConfig,
        storageS3Service: storageS3Service,
        appPathProvider: const DummyPathProvider(),
      ).result;

      expect(result.downloadedItem.metadata, testItem.metadata);
    });
  });
}
