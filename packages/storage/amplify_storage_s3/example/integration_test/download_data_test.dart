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

void main() {
  late String bytesPath;
  late List<int> bytesData;
  late String identityName;
  late List<int> identityData;
  late String userIdentityId;
  late String metaDataPath;
  late Map<String, String> metadata;

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('downloadData()', () {
    setUpAll(() async {
      await configure(amplifyEnvironments['main']!);
      userIdentityId = await signInNewUser();

      bytesPath = 'public/download-data-${uuid()}';
      bytesData = 'test data'.codeUnits;

      await Amplify.Storage.uploadData(
        path: StoragePath.fromString(bytesPath),
        data: HttpPayload.bytes(bytesData),
      ).result;

      identityData = 'with identity ID'.codeUnits;
      identityName = 'upload-data-with-identity-id-${uuid()}';

      await Amplify.Storage.uploadData(
        data: HttpPayload.bytes(identityData),
        path: StoragePath.fromIdentityId(
          (identityId) => 'private/$identityId/$identityName',
        ),
      ).result;

      metaDataPath = 'public/download-data-get-properties-${uuid()}';

      metadata = {'foo': 'bar'};

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

      addTearDown(
        () => Amplify.Storage.removeMany(
          paths: [
            StoragePath.fromString(bytesPath),
            StoragePath.fromIdentityId(
              (identityId) => 'private/$identityId/$identityName',
            ),
          ],
        ).result,
      );
    });

    group('with options', () {
      test('from identity ID', () async {
        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromIdentityId(
            (identityId) => 'private/$identityId/$identityName',
          ),
        ).result;
        expect(downloadResult.bytes, identityData);
        expect(downloadResult.downloadedItem.path,
            'private/$userIdentityId/$identityName');
      });
      test('getProperties', () async {
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

      test('useAccelerateEndpoint', () async {
        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(bytesPath),
          options: const StorageDownloadDataOptions(
            pluginOptions: S3DownloadDataPluginOptions(
              useAccelerateEndpoint: true,
            ),
          ),
        ).result;

        expect(downloadResult.downloadedItem.path, bytesPath);
        expect(downloadResult.bytes, bytesData);
      });

      test('bytes range for "data" in "test data"', () async {
        final bytesRange = S3DataBytesRange(start: 5, end: 9);

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(bytesPath),
          options: StorageDownloadDataOptions(
            pluginOptions: S3DownloadDataPluginOptions(
              bytesRange: bytesRange,
            ),
          ),
        ).result;

        expect(utf8.decode(downloadResult.bytes), 'data');
        expect(downloadResult.downloadedItem.path, bytesPath);
      });
    });
  });
}
