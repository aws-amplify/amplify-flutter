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
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('uploadData()', () {
    setUpAll(() async {
      await configure(amplifyEnvironments['main']!);
    });
    group('for data type', () {
      test('bytes', () async {
        final path = 'public/upload-data-from-bytes-${uuid()}';
        final data = 'from bytes'.codeUnits;
        addTearDown(
          () => Amplify.Storage.remove(path: StoragePath.fromString(path)),
        );
        final result = await Amplify.Storage.uploadData(
          data: HttpPayload.bytes(data),
          path: StoragePath.fromString(path),
        ).result;
        expect(result.uploadedItem.path, path);

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(path),
        ).result;
        expect(downloadResult.bytes, data);
      });

      test('dataUrl', () async {
        final path = 'public/upload-data-url-${uuid()}';
        final data = 'dataUrl'.codeUnits;
        final dataUrl =
            'data:text/plain;charset=utf-8;base64,${base64Encode(data)}';

        addTearDown(
          () => Amplify.Storage.remove(path: StoragePath.fromString(path)),
        );
        final result = await Amplify.Storage.uploadData(
          data: HttpPayload.dataUrl(dataUrl),
          path: StoragePath.fromString(path),
        ).result;
        expect(result.uploadedItem.path, path);

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(path),
        ).result;
        expect(downloadResult.bytes, data);
      });

      test('json', () async {
        final path = 'public/upload-data-from-stream-${uuid()}';
        final json = {'foo': 'bar'};
        addTearDown(
          () => Amplify.Storage.remove(path: StoragePath.fromString(path)),
        );
        final result = await Amplify.Storage.uploadData(
          data: HttpPayload.json(json),
          path: StoragePath.fromString(path),
        ).result;
        expect(result.uploadedItem.path, path);

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(path),
        ).result;
        expect(downloadResult.bytes, jsonEncode(json).toString().codeUnits);
      });

      test('formFields', () async {
        final path = 'public/upload-data-form-fields-${uuid()}';
        const key = 'foo';
        const value = 'bar';
        addTearDown(
          () => Amplify.Storage.remove(path: StoragePath.fromString(path)),
        );
        final result = await Amplify.Storage.uploadData(
          data: HttpPayload.formFields({key: value}),
          path: StoragePath.fromString(path),
        ).result;
        expect(result.uploadedItem.path, path);

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(path),
        ).result;
        expect(downloadResult.bytes, '$key=$value'.codeUnits);
      });

      test('string', () async {
        final path = 'public/upload-data-string-${uuid()}';
        const data = 'string';
        addTearDown(
          () => Amplify.Storage.remove(path: StoragePath.fromString(path)),
        );
        final result = await Amplify.Storage.uploadData(
          data: HttpPayload.string(data),
          path: StoragePath.fromString(path),
        ).result;
        expect(result.uploadedItem.path, path);

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(path),
        ).result;
        expect(downloadResult.bytes, data.codeUnits);
      });

      test('empty', () async {
        final path = 'public/upload-data-empty-${uuid()}';
        addTearDown(
          () => Amplify.Storage.remove(path: StoragePath.fromString(path)),
        );
        final result = await Amplify.Storage.uploadData(
          data: const HttpPayload.empty(),
          path: StoragePath.fromString(path),
        ).result;
        expect(result.uploadedItem.path, path);

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(path),
        ).result;
        expect(downloadResult.bytes, <int>[]);
      });

      test('stream', () async {
        final path = 'public/upload-data-stream-${uuid()}';
        final data = [1, 2, 3];
        final stream = Stream<List<int>>.value(data);
        addTearDown(
          () => Amplify.Storage.remove(path: StoragePath.fromString(path)),
        );
        final result = await Amplify.Storage.uploadData(
          data: HttpPayload.streaming(stream),
          path: StoragePath.fromString(path),
        ).result;
        expect(result.uploadedItem.path, path);

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(path),
        ).result;
        expect(downloadResult.bytes, data);
      });
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
      final result = await Amplify.Storage.uploadData(
        data: HttpPayload.bytes(data),
        path: StoragePath.withIdentityId(
          (identityId) => 'private/$identityId/$name',
        ),
      ).result;

      expect(result.uploadedItem.path, expectedResolvedPath);

      final downloadResult = await Amplify.Storage.downloadData(
        path: StoragePath.fromString(expectedResolvedPath),
      ).result;
      expect(downloadResult.bytes, data);
    });

    group('with options', () {
      test('metadata', () async {
        final path = 'public/upload-data-with-metadata-${uuid()}';
        final data = 'metadata'.codeUnits;
        const metadata = {'foo': 'bar'};
        addTearDown(
          () => Amplify.Storage.remove(path: StoragePath.fromString(path)),
        );
        final result = await Amplify.Storage.uploadData(
          data: HttpPayload.bytes(data),
          path: StoragePath.fromString(path),
          options: const StorageUploadDataOptions(metadata: metadata),
        ).result;
        expect(result.uploadedItem.path, path);

        final propertiesResult = await Amplify.Storage.getProperties(
          path: StoragePath.fromString(path),
        ).result;
        expect(propertiesResult.storageItem.metadata, metadata);
      });

      test('getProperties', () async {
        final path = 'public/upload-data-get-properties-${uuid()}';
        final data = 'getProperties'.codeUnits;
        const metadata = {'foo': 'bar'};
        addTearDown(
          () => Amplify.Storage.remove(path: StoragePath.fromString(path)),
        );
        final result = await Amplify.Storage.uploadData(
          data: HttpPayload.bytes(data),
          path: StoragePath.fromString(path),
          options: const StorageUploadDataOptions(
            metadata: metadata,
            pluginOptions: S3UploadDataPluginOptions(getProperties: true),
          ),
        ).result;
        expect(result.uploadedItem.path, path);
        expect(result.uploadedItem.metadata, metadata);
      });

      test('useAccelerateEndpoint', () async {
        final path = 'public/upload-data-acceleration-${uuid()}';
        final data = 'useAccelerateEndpoint'.codeUnits;
        addTearDown(
          () => Amplify.Storage.remove(path: StoragePath.fromString(path)),
        );
        final result = await Amplify.Storage.uploadData(
          data: HttpPayload.bytes(data),
          path: StoragePath.fromString(path),
          options: const StorageUploadDataOptions(
            pluginOptions: S3UploadDataPluginOptions(
              useAccelerateEndpoint: true,
            ),
          ),
        ).result;
        expect(result.uploadedItem.path, path);

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(path),
        ).result;
        expect(downloadResult.bytes, data);
      });
    });
  });
}
