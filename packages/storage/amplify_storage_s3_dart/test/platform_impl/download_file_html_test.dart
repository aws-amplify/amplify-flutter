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

// ignore: invalid_annotation_target

void main() {
  group('downloadFile() html implementation', () {
    late StorageS3Service storageS3Service;
    const testKey = 'upload-key.text';
    const testS3pluginConfig = S3PluginConfig(
      bucket: 'fake-bucket',
      region: 'west-2',
    );
    final testItem = S3StorageItem(
      key: testKey,
      lastModified: DateTime(2022, 9, 19),
      eTag: '12345',
      size: 1024,
      metadata: {
        'filename': 'file.jpg',
        'uploader': 'user-id',
      },
    );
    final testGetUrlResult = S3StorageGetUrlResult(
      url: Uri(
        host: 's3.amazon.aws',
        path: 'album/1.jpg',
        scheme: 'https',
      ),
    );
    final testGetPropertiesResult = S3StorageGetPropertiesResult(
      storageItem: testItem,
    );

    setUpAll(() {
      storageS3Service = MockStorageS3Service();

      registerFallbackValue(const S3StorageGetUrlOptions());
      registerFallbackValue(const S3StorageGetPropertiesOptions());

      when(
        () => storageS3Service.getUrl(
          key: testKey,
          options: any(named: 'options'),
        ),
      ).thenAnswer((_) async => testGetUrlResult);
    });

    test(
        'should invoke StorageS3Service.getUrl with S3StorageGetUrlOptions with the default storage access level',
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
          options: captureAny<S3StorageGetUrlOptions>(named: 'options'),
        ),
      ).captured.last;

      expect(
        capturedOptions,
        isA<S3StorageGetUrlOptions>().having(
          (o) => o.storageAccessLevel,
          'storageAccessLevel',
          testS3pluginConfig.defaultAccessLevel,
        ),
      );
    });

    test(
        'should invoke StorageS3Service.getUrl with converted S3StorageDownloadFileOptions',
        () {
      const testTargetIdentity = 'someone-else';
      final testRequest = StorageDownloadFileRequest(
        key: testKey,
        localFile: AWSFile.fromPath('file_name.jpg'),
        options: const S3StorageDownloadFileOptions.forIdentity(
          testTargetIdentity,
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
          options: captureAny<S3StorageGetUrlOptions>(named: 'options'),
        ),
      ).captured.last;

      expect(
        capturedOptions,
        isA<S3StorageGetUrlOptions>().having(
          (o) => o.storageAccessLevel,
          'storageAccessLevel',
          StorageAccessLevel.protected,
        ),
      );

      expect(
        capturedOptions,
        isA<S3StorageGetUrlOptions>().having(
          (o) => o.targetIdentityId,
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
        options: const S3StorageDownloadFileOptions(
          getProperties: true,
          storageAccessLevel: StorageAccessLevel.private,
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
          options: captureAny<S3StorageGetPropertiesOptions>(named: 'options'),
        ),
      ).captured.last;

      expect(
        capturedGetPropertiesOptions,
        isA<S3StorageGetPropertiesOptions>(),
      );

      expect(result.downloadedItem, testItem);
    });
  });
}
