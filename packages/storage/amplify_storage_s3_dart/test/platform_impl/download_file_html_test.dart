// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('chrome')

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/config/amplify_outputs/storage/storage_outputs.dart';
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
    const testStorageOutputs = StorageOutputs(
      bucketName: 'fake-bucket',
      awsRegion: 'west-2',
    );
    final testItem = S3Item(
      path: testKey,
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
        const StorageGetUrlOptions(),
      );

      registerFallbackValue(
        const StorageGetPropertiesOptions(),
      );

      registerFallbackValue(const StoragePath.fromString(testKey));

      when(
        () => storageS3Service.getProperties(
          path: any<StoragePath>(named: 'path'),
          options: any(named: 'options'),
        ),
      ).thenAnswer((_) async => testGetPropertiesResult);

      when(
        () => storageS3Service.getUrl(
          path: any<StoragePath>(named: 'path'),
          options: any(named: 'options'),
        ),
      ).thenAnswer((_) async => testGetUrlResult);
    });

    test(
        'should invoke StorageS3Service.getUrl with converted S3DownloadFilePluginOptions',
        () async {
      final operation = downloadFile(
        path: const StoragePath.fromString('public/$testKey'),
        localFile: AWSFile.fromPath('file_name.jpg'),
        options: const StorageDownloadFileOptions(),
        storageOutputs: testStorageOutputs,
        storageS3Service: storageS3Service,
        appPathProvider: const DummyPathProvider(),
      );

      await operation.result;
      verify(
        () => storageS3Service.getProperties(
          path: any<StoragePath>(named: 'path'),
          options: captureAny<StorageGetPropertiesOptions>(
            named: 'options',
          ),
        ),
      ).captured.last;

      verify(
        () => storageS3Service.getUrl(
          path: any<StoragePath>(named: 'path'),
          options: captureAny<StorageGetUrlOptions>(
            named: 'options',
          ),
        ),
      ).captured.last;
    });

    test(
        'download result should include metadata when options.getProperties is set to true',
        () async {
      const options = StorageDownloadFileOptions(
        pluginOptions: S3DownloadFilePluginOptions(
          getProperties: true,
        ),
      );
      final result = await downloadFile(
        path: StoragePath.fromIdentityId(
          (identityId) => 'private/$identityId/$testKey',
        ),
        localFile: AWSFile.fromPath('download.jpg'),
        options: options,
        storageOutputs: testStorageOutputs,
        storageS3Service: storageS3Service,
        appPathProvider: const DummyPathProvider(),
      ).result;

      expect(result.downloadedItem.metadata, testItem.metadata);
    });
  });
}
