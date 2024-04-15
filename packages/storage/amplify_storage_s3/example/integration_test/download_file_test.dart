// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_storage_s3_example/amplifyconfiguration.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:path_provider/path_provider.dart';

import 'utils/configure.dart';
import 'utils/sign_in_new_user.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('downloadFile()', () {
    late String filePath;
    late List<int> data;
    late String identityPath;
    late Directory tempDir;
    late String userIdentityId;
    late String name;
    late String metadaFilePath;
    late String metadataDownloadFilePath;
    late Map<String, String> metadata;

    setUpAll(() async {
      await configure(amplifyEnvironments['main']!);
      filePath = 'public/download-file-from-data-${uuid()}';
      data = 'test data'.codeUnits;
      await Amplify.Storage.uploadData(
        data: HttpPayload.bytes(data),
        path: StoragePath.fromString(filePath),
      ).result;

      tempDir = await getTemporaryDirectory();
      userIdentityId = await signInNewUser();
      name = 'download-file-with-identity-id-${uuid()}';
      identityPath = 'private/$userIdentityId/$name';

      await Amplify.Storage.uploadData(
        data: HttpPayload.bytes(data),
        path: StoragePath.fromIdentityId(
          (identityId) => 'private/$identityId/$name',
        ),
      ).result;

      metadataDownloadFilePath = '${tempDir.path}/downloaded-file.txt';
      metadaFilePath = 'public/download-file-get-properties-${uuid()}';

      addTearDown(
        () => Amplify.Storage.remove(path: StoragePath.fromString(filePath)),
      );

      metadata = {'foo': 'bar'};

      await Amplify.Storage.uploadData(
        data: HttpPayload.bytes(data),
        path: StoragePath.fromString(metadaFilePath),
        options: StorageUploadDataOptions(
          pluginOptions: const S3UploadDataPluginOptions(
            getProperties: true,
          ),
          metadata: metadata,
        ),
      ).result;

      addTearDown(
        () => Amplify.Storage.removeMany(
          paths: [
            StoragePath.fromString(filePath),
            StoragePath.fromString(metadaFilePath),
            StoragePath.fromString(identityPath),
          ],
        ).result,
      );
    });

    group('for file type', () {
      testWidgets('to file', (_) async {
        final tempDir = await getTemporaryDirectory();
        final downloadFilePath = '${tempDir.path}/downloaded-file.txt';

        final result = await Amplify.Storage.downloadFile(
          path: StoragePath.fromString(filePath),
          localFile: AWSFile.fromPath(downloadFilePath),
        ).result;

        final downloadedFile = File(downloadFilePath);
        expect(await downloadedFile.readAsBytes(), data);
        expect(downloadedFile.path, contains(downloadFilePath));
        expect(result.localFile.path, downloadFilePath);
        expect(result.downloadedItem.path, filePath);
      });
    });

    testWidgets('from identity ID', (_) async {
      addTearDown(
        () => Amplify.Storage.remove(
          path: StoragePath.fromString(identityPath),
        ),
      );

      final downloadFilePath = '${tempDir.path}/downloaded-file.txt';
      final result = await Amplify.Storage.downloadFile(
        path: StoragePath.fromIdentityId(
          (identityId) => 'private/$identityId/$name',
        ),
        localFile: AWSFile.fromPath(downloadFilePath),
      ).result;

      final downloadedFile = File(downloadFilePath);
      expect(await downloadedFile.readAsBytes(), data);
      expect(downloadedFile.path, contains(downloadFilePath));
      expect(result.downloadedItem.path, identityPath);
      expect(result.localFile.path, downloadFilePath);
    });

    group('with options', () {
      testWidgets('useAccelerateEndpoint', (_) async {
        final tempDir = await getTemporaryDirectory();
        final downloadFilePath = '${tempDir.path}/downloaded-file.txt';

        addTearDown(
          () => Amplify.Storage.remove(path: StoragePath.fromString(filePath)),
        );

        final result = await Amplify.Storage.downloadFile(
          path: StoragePath.fromString(filePath),
          options: const StorageDownloadFileOptions(
            pluginOptions: S3DownloadFilePluginOptions(
              useAccelerateEndpoint: true,
            ),
          ),
          localFile: AWSFile.fromPath(downloadFilePath),
        ).result;

        final downloadedFile = File(downloadFilePath);
        expect(await downloadedFile.readAsBytes(), data);
        expect(downloadedFile.path, contains(downloadFilePath));
        expect(result.localFile.path, downloadFilePath);
        expect(result.downloadedItem.path, filePath);
      });

      testWidgets('getProperties', (_) async {
        final downloadResult = await Amplify.Storage.downloadFile(
          path: StoragePath.fromString(metadaFilePath),
          options: const StorageDownloadFileOptions(
            pluginOptions: S3DownloadFilePluginOptions(
              getProperties: true,
            ),
          ),
          localFile: AWSFile.fromPath(metadataDownloadFilePath),
        ).result;

        final downloadedFile = File(metadataDownloadFilePath);
        expect(await downloadedFile.readAsBytes(), data);
        expect(downloadResult.downloadedItem.metadata, metadata);
        expect(downloadedFile.path, contains(metadataDownloadFilePath));
        expect(downloadResult.localFile.path, metadataDownloadFilePath);
      });
    });
  });
}
