// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_storage_s3_example/amplifyconfiguration.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/configure.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('list()', () {
    late String uniquePrefix;
    late List<String> uploadedPaths;

    setUpAll(() async {
      await configure(amplifyEnvironments['main']!);

      uniquePrefix = 'public/test-list-${uuid()}';
      uploadedPaths = [
        '${uniquePrefix}/file1.txt',
        '${uniquePrefix}/file2.txt',
        '${uniquePrefix}/subdir/file3.txt',
      ];

      for (final path in uploadedPaths) {
        await Amplify.Storage.uploadData(
          path: StoragePath.fromString(path),
          data: HttpPayload.bytes('test content'.codeUnits),
        ).result;
      }

      addTearDown(() async {
        for (final path in uploadedPaths) {
          await Amplify.Storage.remove(path: StoragePath.fromString(path))
              .result;
        }
      });
    });

    group('list() without options', () {
      test('should list all files with unique prefix', () async {
        final listResult = await Amplify.Storage.list(
          path: StoragePath.fromString(uniquePrefix),
        ).result;

        for (final uploadedPath in uploadedPaths) {
          expect(
            listResult.items.any((item) => item.path == uploadedPath),
            isTrue,
          );
        }
      });

      test('should list files within a subdirectory', () async {
        final listResult = await Amplify.Storage.list(
          path: StoragePath.fromString('${uniquePrefix}subdir/'),
        ).result;

        expect(listResult.items.length, 1);
        expect(listResult.items.first.path, contains('file3.txt'));
      });
    });

    group('list() with options', () {
      test('should list all files with unique prefix excluding subPaths',
          () async {
        final listResult = await Amplify.Storage.list(
          path: StoragePath.fromString(uniquePrefix),
          options: const StorageListOptions(
            pluginOptions: S3ListPluginOptions(
              excludeSubPaths: true,
            ),
          ),
        ).result;

        expect(listResult.items.length, 2);
      });

      test('should respect pageSize limitation', () async {
        final listResult = await Amplify.Storage.list(
          path: StoragePath.fromString(uniquePrefix),
          options: const StorageListOptions(
            pageSize: 2,
          ),
        ).result;

        expect(listResult.items.length, 2);
      });

      test('should list files with pagination', () async {
        var listResult = await Amplify.Storage.list(
          path: StoragePath.fromString(uniquePrefix),
          options: const StorageListOptions(
            pageSize: 1,
          ),
        ).result;

        expect(listResult.items.length, 1);

        expect(listResult.nextToken, isNotNull);

        listResult = await Amplify.Storage.list(
          path: StoragePath.fromString(uniquePrefix),
          options: StorageListOptions(
            pageSize: 1,
            nextToken: listResult.nextToken,
          ),
        ).result;

        expect(listResult.items.length, 1);
      });
    });
  });
}
