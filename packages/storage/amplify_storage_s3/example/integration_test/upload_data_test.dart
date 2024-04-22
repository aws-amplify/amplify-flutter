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

  group('uploadData()', () {
    setUpAll(() async {
      await configure(amplifyEnvironments['main']!);
    });
    group('for data type', () {
      testWidgets('bytes', (_) async {
        final path = 'public/upload-data-from-bytes-${uuid()}';
        final data = 'from bytes'.codeUnits;
        addTearDownPath(StoragePath.fromString(path));
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

      testWidgets('dataUrl', (_) async {
        final path = 'public/upload-data-url-${uuid()}';
        final data = 'dataUrl'.codeUnits;
        final dataUrl =
            'data:text/plain;charset=utf-8;base64,${base64Encode(data)}';
        addTearDownPath(StoragePath.fromString(path));
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

      testWidgets('json', (_) async {
        final path = 'public/upload-data-from-stream-${uuid()}';
        final json = {'foo': 'bar'};
        addTearDownPath(StoragePath.fromString(path));
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

      testWidgets('formFields', (_) async {
        final path = 'public/upload-data-form-fields-${uuid()}';
        const key = 'foo';
        const value = 'bar';
        addTearDownPath(StoragePath.fromString(path));
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

      testWidgets('string', (_) async {
        final path = 'public/upload-data-string-${uuid()}';
        const data = 'string';
        addTearDownPath(StoragePath.fromString(path));
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

      testWidgets('empty', (_) async {
        final path = 'public/upload-data-empty-${uuid()}';
        addTearDownPath(StoragePath.fromString(path));
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

      testWidgets('stream', (_) async {
        final path = 'public/upload-data-stream-${uuid()}';
        final data = [1, 2, 3];
        final stream = Stream<List<int>>.value(data);
        addTearDownPath(StoragePath.fromString(path));
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

    testWidgets('with identity ID', (_) async {
      final userIdentityId = await signInNewUser();
      final name = 'upload-data-with-identity-id-${uuid()}';
      final data = 'with identity ID'.codeUnits;
      final expectedResolvedPath = 'private/$userIdentityId/$name';
      addTearDownPath(StoragePath.fromString(expectedResolvedPath));
      final result = await Amplify.Storage.uploadData(
        data: HttpPayload.bytes(data),
        path: StoragePath.fromIdentityId(
          (identityId) => 'private/$identityId/$name',
        ),
      ).result;

      expect(result.uploadedItem.path, expectedResolvedPath);

      final downloadResult = await Amplify.Storage.downloadData(
        path: StoragePath.fromString(expectedResolvedPath),
      ).result;
      expect(downloadResult.bytes, data);
    });

    testWidgets('unauthorized path', (_) async {
      expect(
        () => Amplify.Storage.uploadData(
          data: HttpPayload.bytes('unauthorized path'.codeUnits),
          path: const StoragePath.fromString('unauthorized/path'),
        ).result,
        throwsA(isA<StorageAccessDeniedException>()),
      );
    });

    group('with options', () {
      testWidgets('metadata', (_) async {
        final path = 'public/upload-data-with-metadata-${uuid()}';
        final data = 'metadata'.codeUnits;
        const metadata = {'description': 'foo'};
        addTearDownPath(StoragePath.fromString(path));
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

      testWidgets('getProperties', (_) async {
        final path = 'public/upload-data-get-properties-${uuid()}';
        final data = 'getProperties'.codeUnits;
        const metadata = {'description': 'foo'};
        addTearDownPath(StoragePath.fromString(path));
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

      testWidgets('useAccelerateEndpoint', (_) async {
        final path = 'public/upload-data-acceleration-${uuid()}';
        final data = 'useAccelerateEndpoint'.codeUnits;
        addTearDownPath(StoragePath.fromString(path));
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
