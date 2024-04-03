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
    late StorageUploadFileResult uploadResult;
    late String filePath;
    late List<int> data;

    setUpAll(() async {
      await configure(amplifyEnvironments['key']!);
      filePath = 'public/download-file-from-data-${uuid()}';
      data = 'test data'.codeUnits;
      uploadResult = await Amplify.Storage.uploadFile(
        localFile: AWSFile.fromData(data),
        path: StoragePath.fromString(filePath),
      ).result;
    });

    tearDownAll(() {
      Amplify.Storage.remove(path: StoragePath.fromString(filePath));
    });

    group('for file type', () {
      test('to file', () async {
        final tempDir = await getTemporaryDirectory();
        final downloadFilePath = '${tempDir.path}/downloaded-file.txt';

        await Amplify.Storage.downloadFile(
          path: StoragePath.fromString(filePath),
          localFile: AWSFile.fromPath(downloadFilePath),
        ).result;

        final downloadedFile = File(downloadFilePath);
        expect(await downloadedFile.readAsBytes(), data);
      });

    });

    test('with identity ID', () async {
      final tempDir = await getTemporaryDirectory();
      final userIdentityId = await signInNewUser();
      final name = 'download-file-with-identity-id-${uuid()}';
      final expectedResolvedPath = 'private/$userIdentityId/$name';

      await Amplify.Storage.uploadFile(
        localFile: AWSFile.fromData(data),
        path: StoragePath.withIdentityId(
          (identityId) => 'private/$identityId/$name',
        ),
      ).result;

      addTearDown(
        () => Amplify.Storage.remove(
          path: StoragePath.fromString(expectedResolvedPath),
        ),
      );

      final downloadFilePath = '${tempDir.path}/downloaded-file.txt';
      await Amplify.Storage.downloadFile(
        path: StoragePath.fromString(filePath),
        localFile: AWSFile.fromPath(downloadFilePath),
      ).result;

      final downloadedFile = File(downloadFilePath);
      expect(await downloadedFile.readAsBytes(), data);
    });

    group('with options', () {
      test('useAccelerateEndpoint', () async {
        final tempDir = await getTemporaryDirectory();
        final downloadFilePath = '${tempDir.path}/downloaded-file.txt';

        addTearDown(() => Amplify.Storage.remove(path: StoragePath.fromString(filePath)));

        await Amplify.Storage.downloadFile(
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
      });

      test('getProperties', () async {
        final tempDir = await getTemporaryDirectory();
        final downloadFilePath = '${tempDir.path}/downloaded-file.txt';
        final metadaFilePath = 'public/download-file-get-properties-${uuid()}';

        addTearDown(() => Amplify.Storage.remove(path: StoragePath.fromString(filePath)));

        const metadata = {'foo': 'bar'};

        await Amplify.Storage.uploadFile(
          localFile: AWSFile.fromData(data),
          path: StoragePath.fromString(metadaFilePath),
          options: const StorageUploadFileOptions(
            pluginOptions: S3UploadFilePluginOptions(
              getProperties: true,
            ),
            metadata: metadata,
          ),
        ).result;

        final downloadResult = await Amplify.Storage.downloadFile(
          path: StoragePath.fromString(metadaFilePath),
          options: const StorageDownloadFileOptions(
            pluginOptions: S3DownloadFilePluginOptions(
              getProperties: true,
            ),
          ),
          localFile: AWSFile.fromPath(downloadFilePath),
        ).result;

        final downloadedFile = File(downloadFilePath);
        expect(await downloadedFile.readAsBytes(), data);
        expect(downloadResult.downloadedItem.metadata, metadata);
      });
    });
  });
}
