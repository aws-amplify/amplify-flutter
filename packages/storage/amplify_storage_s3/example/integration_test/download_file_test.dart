// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/invalid_object_state.dart';
import 'package:amplify_storage_s3_example/amplifyconfiguration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:path_provider/path_provider.dart';

import 'utils/configure.dart';
import 'utils/file_ops/file_ops.dart';
import 'utils/sign_in_new_user.dart';
import 'utils/tear_down.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('downloadFile()', () {
    late String identityPath;
    late Directory tempDir;
    late String userIdentityId;
    late String metadataDownloadFilePath;
    final publicPath = 'public/download-file-from-data-${uuid()}';
    final data = 'test data'.codeUnits;
    final name = 'download-file-with-identity-id-${uuid()}';
    final metadataFilePath = 'public/download-file-get-properties-${uuid()}';
    final metadata = {'description': 'foo'};

    setUpAll(() async {
      await configure(amplifyEnvironments['main']!);
      await Amplify.Storage.uploadData(
        data: HttpPayload.bytes(data),
        path: StoragePath.fromString(publicPath),
      ).result;

      tempDir = await getTemporaryDirectory();
      userIdentityId = await signInNewUser();
      identityPath = 'private/$userIdentityId/$name';

      await Amplify.Storage.uploadData(
        data: HttpPayload.bytes(data),
        path: StoragePath.fromIdentityId(
          (identityId) => 'private/$identityId/$name',
        ),
      ).result;

      metadataDownloadFilePath = '${tempDir.path}/downloaded-file.txt';

      await Amplify.Storage.uploadData(
        data: HttpPayload.bytes(data),
        path: StoragePath.fromString(metadataFilePath),
        options: StorageUploadDataOptions(
          pluginOptions: const S3UploadDataPluginOptions(
            getProperties: true,
          ),
          metadata: metadata,
        ),
      ).result;

      addTearDownPaths(
        [
          StoragePath.fromString(publicPath),
          StoragePath.fromString(metadataFilePath),
          StoragePath.fromString(identityPath),
        ],
      );
    });

    group('for file type', () {
      testWidgets('to file', (_) async {
        final downloadFilePath = '${tempDir.path}/downloaded-file.txt';

        final result = await Amplify.Storage.downloadFile(
          path: StoragePath.fromString(publicPath),
          localFile: AWSFile.fromPath(downloadFilePath),
        ).result;

        // Web browsers do not grant access to read arbitrary files
        if (!kIsWeb) {
          final downloadedFile = await readFile(path: downloadFilePath);
          expect(downloadedFile, data);
        }

        expect(result.localFile.path, downloadFilePath);
        expect(result.downloadedItem.path, publicPath);
      });
    });

    testWidgets('from identity ID', (_) async {
      final downloadFilePath = '${tempDir.path}/downloaded-file.txt';
      final result = await Amplify.Storage.downloadFile(
        path: StoragePath.fromIdentityId(
          (identityId) => 'private/$identityId/$name',
        ),
        localFile: AWSFile.fromPath(downloadFilePath),
      ).result;

      if (!kIsWeb) {
        final downloadedFile = await readFile(path: downloadFilePath);
        expect(downloadedFile, data);
      }
      expect(result.localFile.path, downloadFilePath);
      expect(result.downloadedItem.path, identityPath);
    });

    group('with options', () {
      testWidgets('useAccelerateEndpoint', (_) async {
        final downloadFilePath = '${tempDir.path}/downloaded-file.txt';

        final result = await Amplify.Storage.downloadFile(
          path: StoragePath.fromString(publicPath),
          options: const StorageDownloadFileOptions(
            pluginOptions: S3DownloadFilePluginOptions(
              useAccelerateEndpoint: true,
            ),
          ),
          localFile: AWSFile.fromPath(downloadFilePath),
        ).result;

        if (!kIsWeb) {
          final downloadedFile = await readFile(path: downloadFilePath);
          expect(downloadedFile, data);
        }
        expect(result.localFile.path, downloadFilePath);
        expect(result.downloadedItem.path, publicPath);
      });

      testWidgets('getProperties', (_) async {
        final downloadResult = await Amplify.Storage.downloadFile(
          path: StoragePath.fromString(metadataFilePath),
          options: const StorageDownloadFileOptions(
            pluginOptions: S3DownloadFilePluginOptions(
              getProperties: true,
            ),
          ),
          localFile: AWSFile.fromPath(metadataDownloadFilePath),
        ).result;

        if (!kIsWeb) {
          final downloadedFile = await readFile(path: metadataDownloadFilePath);
          expect(downloadedFile, data);
        }
        expect(downloadResult.localFile.path, metadataDownloadFilePath);
        expect(downloadResult.downloadedItem.path, metadataFilePath);
      });

      testWidgets('unauthorized path', (_) async {
        final downloadFilePath = '${tempDir.path}/downloaded-file.txt';

        // TODO(khatruong2009): update to access denied exception when bug is fixed
        await expectLater(
          () => Amplify.Storage.downloadFile(
            path: const StoragePath.fromString('unauthorized/path'),
            localFile: AWSFile.fromPath(downloadFilePath),
          ).result,
          throwsA(isA<InvalidObjectState>()),
        );
      });
    });
  });
}
