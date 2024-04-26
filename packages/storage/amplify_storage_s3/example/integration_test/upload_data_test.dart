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
    group('standard config', () {
      setUpAll(() async {
        await configure(amplifyEnvironments['main']!);
      });
      group('for data type', () {
        testWidgets('bytes', (_) async {
          final path = 'public/upload-data-from-bytes-${uuid()}';
          final data = 'from bytes'.codeUnits;
          addTearDownPath(StoragePath.fromString(path));
          final result = await Amplify.Storage.uploadData(
            data: StorageDataPayload.bytes(data),
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
          const contentType = 'text/plain; charset=utf-8';
          final dataUrl = 'data:$contentType;base64,${base64Encode(data)}';
          addTearDownPath(StoragePath.fromString(path));
          final result = await Amplify.Storage.uploadData(
            data: StorageDataPayload.dataUrl(dataUrl),
            path: StoragePath.fromString(path),
            options: const StorageUploadDataOptions(
              pluginOptions: S3UploadDataPluginOptions(getProperties: true),
            ),
          ).result;
          expect(result.uploadedItem.path, path);
          expect((result.uploadedItem as S3Item).contentType, contentType);

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
            data: StorageDataPayload.json(json),
            path: StoragePath.fromString(path),
            options: const StorageUploadDataOptions(
              pluginOptions: S3UploadDataPluginOptions(getProperties: true),
            ),
          ).result;
          expect(result.uploadedItem.path, path);
          expect(
            (result.uploadedItem as S3Item).contentType,
            'application/json; charset=utf-8',
          );

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
            data: StorageDataPayload.formFields({key: value}),
            path: StoragePath.fromString(path),
            options: const StorageUploadDataOptions(
              pluginOptions: S3UploadDataPluginOptions(getProperties: true),
            ),
          ).result;
          expect(result.uploadedItem.path, path);
          expect(
            (result.uploadedItem as S3Item).contentType,
            'application/x-www-form-urlencoded; charset=utf-8',
          );

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
            data: StorageDataPayload.string(data),
            path: StoragePath.fromString(path),
            options: const StorageUploadDataOptions(
              pluginOptions: S3UploadDataPluginOptions(getProperties: true),
            ),
          ).result;
          expect(result.uploadedItem.path, path);
          expect(
            (result.uploadedItem as S3Item).contentType,
            'text/plain; charset=utf-8',
          );

          final downloadResult = await Amplify.Storage.downloadData(
            path: StoragePath.fromString(path),
          ).result;
          expect(downloadResult.bytes, data.codeUnits);
        });

        testWidgets('empty', (_) async {
          final path = 'public/upload-data-empty-${uuid()}';
          addTearDownPath(StoragePath.fromString(path));
          final result = await Amplify.Storage.uploadData(
            data: const StorageDataPayload.empty(),
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
            data: StorageDataPayload.streaming(stream),
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
          data: StorageDataPayload.bytes(data),
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
        await expectLater(
          () => Amplify.Storage.uploadData(
            data: StorageDataPayload.bytes('unauthorized path'.codeUnits),
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
            data: StorageDataPayload.bytes(data),
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
            data: StorageDataPayload.bytes(data),
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
            data: StorageDataPayload.bytes(data),
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

      group('upload progress', () {
        testWidgets('reports progress for byte data', (_) async {
          final path = 'public/upload-data-progress-bytes-${uuid()}';
          final data = [1, 2, 3, 4, 5, 6];

          var fractionCompleted = 0.0;
          var totalBytes = 0;
          var transferredBytes = 0;

          addTearDownPath(StoragePath.fromString(path));
          await Amplify.Storage.uploadData(
            data: StorageDataPayload.bytes(data),
            path: StoragePath.fromString(path),
            onProgress: (StorageTransferProgress progress) {
              fractionCompleted = progress.fractionCompleted;
              totalBytes = progress.totalBytes;
              transferredBytes = progress.transferredBytes;
            },
          ).result;
          expect(fractionCompleted, 1.0);
          expect(totalBytes, data.length);
          expect(transferredBytes, data.length);
        });

        testWidgets('reports progress for string data', (_) async {
          final path = 'public/upload-data-progress-bytes-${uuid()}';
          const data = 'data to upload';
          final encoded = utf8.encode(data);

          var fractionCompleted = 0.0;
          var totalBytes = 0;
          var transferredBytes = 0;

          addTearDownPath(StoragePath.fromString(path));
          await Amplify.Storage.uploadData(
            data: StorageDataPayload.string(data),
            path: StoragePath.fromString(path),
            onProgress: (StorageTransferProgress progress) {
              fractionCompleted = progress.fractionCompleted;
              totalBytes = progress.totalBytes;
              transferredBytes = progress.transferredBytes;
            },
          ).result;
          expect(fractionCompleted, 1.0);
          expect(totalBytes, encoded.length);
          expect(transferredBytes, encoded.length);
        });

        testWidgets(
            'does not report fractionCompleted or totalBytes for streams',
            (_) async {
          final path = 'public/upload-data-progress-stream-${uuid()}';
          final data = [1, 2, 3, 4, 5, 6];

          var fractionCompleted = 0.0;
          var totalBytes = 0;
          var transferredBytes = 0;

          addTearDownPath(StoragePath.fromString(path));
          await Amplify.Storage.uploadData(
            data: StorageDataPayload.streaming(Stream.value(data)),
            path: StoragePath.fromString(path),
            onProgress: (StorageTransferProgress progress) {
              fractionCompleted = progress.fractionCompleted;
              totalBytes = progress.totalBytes;
              transferredBytes = progress.transferredBytes;
            },
          ).result;
          expect(fractionCompleted, -1);
          expect(totalBytes, -1);
          expect(transferredBytes, data.length);
        });
      });

      testWidgets('can cancel', (_) async {
        const size = 1024 * 1024 * 6;
        const chars = 'qwertyuiopasdfghjklzxcvbnm';
        final content = List.generate(size, (i) => chars[i % 25]).join();
        final fileId = uuid();
        final path = 'public/upload-data-cancel-$fileId';
        addTearDownPath(StoragePath.fromString(path));
        final operation = Amplify.Storage.uploadData(
          data: StorageDataPayload.string(content),
          path: StoragePath.fromString(path),
        );
        final expectException = expectLater(
          () => operation.result,
          throwsA(isA<StorageOperationCanceledException>()),
        );
        await operation.cancel();
        await expectException;
      });
    });
    group('config with dots in name', () {
      setUpAll(() async {
        await configure(amplifyEnvironments['dots-in-name']!);
      });
      testWidgets(
        'standard upload works',
        (_) async {
          final path = 'public/upload-data-from-bytes-${uuid()}';
          final data = 'from bytes'.codeUnits;
          addTearDownPath(StoragePath.fromString(path));
          final result = await Amplify.Storage.uploadData(
            data: StorageDataPayload.bytes(data),
            path: StoragePath.fromString(path),
          ).result;
          expect(result.uploadedItem.path, path);

          final downloadResult = await Amplify.Storage.downloadData(
            path: StoragePath.fromString(path),
          ).result;
          expect(downloadResult.bytes, data);
        },
      );

      testWidgets(
        'useAccelerateEndpoint throws',
        (_) async {
          final path = 'public/upload-data-from-bytes-${uuid()}';
          final data = 'from bytes'.codeUnits;
          await expectLater(
            () => Amplify.Storage.uploadData(
              data: StorageDataPayload.bytes(data),
              path: StoragePath.fromString(path),
              options: const StorageUploadDataOptions(
                pluginOptions: S3UploadDataPluginOptions(
                  useAccelerateEndpoint: true,
                ),
              ),
            ).result,
            // useAccelerateEndpoint is not supported with a bucket name with dots
            throwsA(isA<ConfigurationError>()),
          );
        },
      );
    });
  });
}
