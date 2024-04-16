// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_storage_s3_example/amplifyconfiguration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/configure.dart';
import 'utils/create_file/create_file_io.dart';
import 'utils/sign_in_new_user.dart';
import 'utils/tear_down.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('uploadFile()', () {
    setUpAll(() async {
      await configure(amplifyEnvironments['main']!);
    });
    group('for file type', () {
      testWidgets(
        'from data',
        (_) async {
          await Future<void>.delayed(const Duration(seconds: 5));
          final path = 'public/upload-file-from-data-${uuid()}';
          final data = 'data'.codeUnits;
          addTearDownPath(StoragePath.fromString(path));
          final result = await Amplify.Storage.uploadFile(
            localFile: AWSFile.fromData(data),
            path: StoragePath.fromString(path),
          ).result;
          expect(result.uploadedItem.path, path);

          final downloadResult = await Amplify.Storage.downloadData(
            path: StoragePath.fromString(path),
          ).result;
          expect(downloadResult.bytes, data);
        },
        // TODO(Jordan-Nelson): Resolve bu with `AWSFile.fromData` on web.
        skip: kIsWeb,
      );

      testWidgets('from path', (_) async {
        final path = 'public/upload-file-from-path-${uuid()}';
        const content = 'upload data';
        final data = content.codeUnits;
        final filePath = await createFile(path: path, content: content);
        addTearDownPath(StoragePath.fromString(path));
        final result = await Amplify.Storage.uploadFile(
          localFile: AWSFile.fromPath(filePath),
          path: StoragePath.fromString(path),
        ).result;
        expect(result.uploadedItem.path, path);

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(path),
        ).result;
        expect(downloadResult.bytes, data);
      });

      testWidgets('from stream', (_) async {
        final path = 'public/upload-file-from-stream-${uuid()}';
        final stream = Stream<List<int>>.value([1, 2, 3]);
        addTearDownPath(StoragePath.fromString(path));
        final result = await Amplify.Storage.uploadFile(
          localFile: AWSFile.fromStream(stream, size: 3),
          path: StoragePath.fromString(path),
        ).result;
        expect(result.uploadedItem.path, path);

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(path),
        ).result;
        expect(downloadResult.bytes, [1, 2, 3]);
      });
    });

    testWidgets('with identity ID', (_) async {
      final userIdentityId = await signInNewUser();
      final name = 'upload-file-with-identity-id-${uuid()}';
      final data = 'upload data'.codeUnits;
      final expectedResolvedPath = 'private/$userIdentityId/$name';
      addTearDownPath(StoragePath.fromString(expectedResolvedPath));
      final result = await Amplify.Storage.uploadFile(
        localFile: AWSFile.fromData(data),
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
        () => Amplify.Storage.uploadFile(
          localFile: AWSFile.fromData('unauthorized path'.codeUnits),
          path: const StoragePath.fromString('unauthorized/path'),
        ).result,
        throwsA(isA<StorageAccessDeniedException>()),
      );
    });

    group('with options', () {
      testWidgets('metadata', (_) async {
        final path = 'public/upload-file-with-metadata-${uuid()}';
        final data = 'metadata'.codeUnits;
        const metadata = {'description': 'foo'};
        addTearDownPath(StoragePath.fromString(path));
        final result = await Amplify.Storage.uploadFile(
          localFile: AWSFile.fromData(data),
          path: StoragePath.fromString(path),
          options: const StorageUploadFileOptions(metadata: metadata),
        ).result;
        expect(result.uploadedItem.path, path);

        final propertiesResult = await Amplify.Storage.getProperties(
          path: StoragePath.fromString(path),
        ).result;
        expect(propertiesResult.storageItem.metadata, metadata);
      });

      testWidgets('getProperties', (_) async {
        final path = 'public/upload-file-get-properties-${uuid()}';
        final data = 'getProperties'.codeUnits;
        const metadata = {'description': 'foo'};
        addTearDownPath(StoragePath.fromString(path));
        final result = await Amplify.Storage.uploadFile(
          localFile: AWSFile.fromData(data),
          path: StoragePath.fromString(path),
          options: const StorageUploadFileOptions(
            metadata: metadata,
            pluginOptions: S3UploadFilePluginOptions(getProperties: true),
          ),
        ).result;
        expect(result.uploadedItem.path, path);
        expect(result.uploadedItem.metadata, metadata);
      });

      testWidgets('useAccelerateEndpoint', (_) async {
        final path = 'public/upload-file-acceleration-${uuid()}';
        final data = 'useAccelerateEndpoint'.codeUnits;
        addTearDownPath(StoragePath.fromString(path));
        final result = await Amplify.Storage.uploadFile(
          localFile: AWSFile.fromData(data),
          path: StoragePath.fromString(path),
          options: const StorageUploadFileOptions(
            pluginOptions: S3UploadFilePluginOptions(
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
