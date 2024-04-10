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
  late StorageUploadDataResult bytesUploadResult;
  late String bytesPath;
  late List<int> bytesData;

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('downloadData()', () {
    setUpAll(() async {
      await configure(amplifyEnvironments['main']!);

      bytesPath = 'public/download-data-${uuid()}';
      bytesData = 'test data'.codeUnits;
      addTearDown(
        () => Amplify.Storage.remove(path: StoragePath.fromString(bytesPath)).result,
      );

      bytesUploadResult = await Amplify.Storage.uploadData(
        path: StoragePath.fromString(bytesPath),
        data: HttpPayload.bytes(bytesData),
      ).result;
    });

    group('for data type', () {
      test('bytes', () async {
        expect(bytesUploadResult.uploadedItem.path, bytesPath);

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(bytesPath),
        ).result;

        expect(downloadResult.bytes, bytesData);
      });

      test('dataUrl', () async {
        final dataUrl =
            'data:text/plain;charset=utf-8;base64,${base64Encode(bytesData)}';

        final dataUrlPath = 'public/download-data-url-${uuid()}';
        await Amplify.Storage.uploadData(
          path: StoragePath.fromString(dataUrlPath),
          data: HttpPayload.dataUrl(dataUrl),
        ).result;

        addTearDown(
          () =>
              Amplify.Storage.remove(path: StoragePath.fromString(dataUrlPath)),
        );

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(dataUrlPath),
        ).result;

        expect(downloadResult.bytes, bytesData);
      });

      test('json', () async {
        final json = {'foo': 'bar'};

        final jsonPath = 'public/download-data-json-${uuid()}';
        await Amplify.Storage.uploadData(
          path: StoragePath.fromString(jsonPath),
          data: HttpPayload.json(json),
        ).result;

        addTearDown(
          () => Amplify.Storage.remove(path: StoragePath.fromString(jsonPath)),
        );

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(jsonPath),
        ).result;

        expect(downloadResult.bytes, jsonEncode(json).toString().codeUnits);
      });

      test('formFields', () async {
        const key = 'foo';
        const value = 'bar';

        final formFieldsPath = 'public/download-data-form-fields-${uuid()}';
        await Amplify.Storage.uploadData(
          path: StoragePath.fromString(formFieldsPath),
          data: HttpPayload.formFields({key: value}),
        ).result;

        addTearDown(
          () => Amplify.Storage.remove(
            path: StoragePath.fromString(formFieldsPath),
          ),
        );

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(formFieldsPath),
        ).result;

        expect(downloadResult.bytes, '$key=$value'.codeUnits);
      });

      test('string', () async {
        const string = 'test string';

        final stringPath = 'public/download-data-string-${uuid()}';
        await Amplify.Storage.uploadData(
          path: StoragePath.fromString(stringPath),
          data: HttpPayload.string(string),
        ).result;

        addTearDown(
          () =>
              Amplify.Storage.remove(path: StoragePath.fromString(stringPath)),
        );

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(stringPath),
        ).result;

        expect(downloadResult.bytes, string.codeUnits);
      });

      test('empty', () async {
        final emptyPath = 'public/download-data-empty-${uuid()}';
        await Amplify.Storage.uploadData(
          path: StoragePath.fromString(emptyPath),
          data: const HttpPayload.empty(),
        ).result;

        addTearDown(
          () => Amplify.Storage.remove(path: StoragePath.fromString(emptyPath)),
        );

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(emptyPath),
        ).result;

        expect(downloadResult.bytes, <int>[]);
      });

      test('stream', () async {
        final data = [1, 2, 3];
        final stream = Stream<List<int>>.value(data);

        final streamPath = 'public/download-data-stream-${uuid()}';
        await Amplify.Storage.uploadData(
          path: StoragePath.fromString(streamPath),
          data: HttpPayload.streaming(stream),
        ).result;

        addTearDown(
          () =>
              Amplify.Storage.remove(path: StoragePath.fromString(streamPath)),
        );

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(streamPath),
        ).result;

        expect(downloadResult.bytes, data);
      });

      test('with identity ID', () async {
        final userIdentityId = await signInNewUser();
        final name = 'upload-data-with-identity-id-${uuid()}';
        final data = 'with identity ID'.codeUnits;
        final expectedResolvedPath = 'private/$userIdentityId/$name';
        addTearDown(
          () => Amplify.Storage.remove(
            path: StoragePath.fromString(expectedResolvedPath),
          ),
        );
        await Amplify.Storage.uploadData(
          data: HttpPayload.bytes(data),
          path: StoragePath.fromIdentityId(
            (identityId) => 'private/$identityId/$name',
          ),
        ).result;

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(expectedResolvedPath),
        ).result;
        expect(downloadResult.bytes, data);
      });
    });

    group('with options', () {
      test('getProperties', () async {
        // Upload a file with properties
        final path = 'public/download-data-get-properties-${uuid()}';

        const metadata = {'foo': 'bar'};

        await Amplify.Storage.uploadData(
          path: StoragePath.fromString(path),
          data: HttpPayload.bytes('get properties'.codeUnits),
          options: const StorageUploadDataOptions(
            pluginOptions: S3UploadDataPluginOptions(
              getProperties: true,
            ),
            metadata: metadata,
          ),
        ).result;

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(path),
          options: const StorageDownloadDataOptions(
            pluginOptions: S3DownloadDataPluginOptions(
              getProperties: true,
            ),
          ),
        ).result;

        expect(downloadResult.downloadedItem.path, path);
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
      });
    });
  });
}
