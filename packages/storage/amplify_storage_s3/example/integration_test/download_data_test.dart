// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_storage_s3_example/amplifyconfiguration.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/configure.dart';
import 'utils/sign_in_new_user.dart';
import 'utils/tear_down.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('downloadData()', () {
    late String userIdentityId;
    final publicPath = 'public/download-data-${uuid()}';
    final bytesData = 'test data'.codeUnits;
    final identityName = 'upload-data-with-identity-id-${uuid()}';
    final identityData = 'with identity ID'.codeUnits;
    final metaDataPath = 'public/download-data-get-properties-${uuid()}';
    final metadata = {'description': 'foo'};
    setUpAll(() async {
      await configure(amplifyEnvironments['main']!);
      userIdentityId = await signInNewUser();

      await Amplify.Storage.uploadData(
        path: StoragePath.fromString(publicPath),
        data: HttpPayload.bytes(bytesData),
      ).result;

      await Amplify.Storage.uploadData(
        data: HttpPayload.bytes(identityData),
        path: StoragePath.fromIdentityId(
          (identityId) => 'private/$identityId/$identityName',
        ),
      ).result;

      await Amplify.Storage.uploadData(
        path: StoragePath.fromString(metaDataPath),
        data: HttpPayload.bytes('get properties'.codeUnits),
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
          StoragePath.fromIdentityId(
            (identityId) => 'private/$identityId/$identityName',
          ),
        ],
      );
    });

    group('with options', () {
      testWidgets('from identity ID', (_) async {
        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromIdentityId(
            (identityId) => 'private/$identityId/$identityName',
          ),
        ).result;
        expect(downloadResult.bytes, identityData);
        expect(
          downloadResult.downloadedItem.path,
          'private/$userIdentityId/$identityName',
        );
      });
      testWidgets('getProperties', (_) async {
        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(metaDataPath),
          options: const StorageDownloadDataOptions(
            pluginOptions: S3DownloadDataPluginOptions(
              getProperties: true,
            ),
          ),
        ).result;

        expect(downloadResult.downloadedItem.path, metaDataPath);
        expect(downloadResult.downloadedItem.metadata, metadata);
      });

      testWidgets('useAccelerateEndpoint', (_) async {
        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(publicPath),
          options: const StorageDownloadDataOptions(
            pluginOptions: S3DownloadDataPluginOptions(
              useAccelerateEndpoint: true,
            ),
          ),
        ).result;

        expect(downloadResult.downloadedItem.path, publicPath);
        expect(downloadResult.bytes, bytesData);
      });

      testWidgets('bytes range for "data" in "test data"', (_) async {
        final bytesRange = S3DataBytesRange(start: 5, end: 9);

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(publicPath),
          options: StorageDownloadDataOptions(
            pluginOptions: S3DownloadDataPluginOptions(
              bytesRange: bytesRange,
            ),
          ),
        ).result;

        expect(utf8.decode(downloadResult.bytes), 'data');
        expect(downloadResult.downloadedItem.path, publicPath);
      });

      testWidgets('unauthorized path', (_) async {
        expect(
          () => Amplify.Storage.downloadData(
            path: const StoragePath.fromString('unauthorized/path'),
          ).result,
          throwsA(isA<StorageAccessDeniedException>()),
        );
      });
    });
  });
}
