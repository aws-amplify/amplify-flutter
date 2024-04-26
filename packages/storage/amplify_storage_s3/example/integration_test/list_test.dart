// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_storage_s3_example/amplifyconfiguration.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/configure.dart';
import 'utils/tear_down.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('list()', () {
    final uniquePrefix = 'public/test-list-${uuid()}';
    final uploadedPaths = <String>[
      '$uniquePrefix/file1.txt',
      '$uniquePrefix/file2.txt',
      '$uniquePrefix/subdir/file3.txt',
      '$uniquePrefix/subdir2#file4.txt',
    ];
    group('standard config', () {
      setUpAll(() async {
        await configure(amplifyEnvironments['main']!);

        for (final path in uploadedPaths) {
          await Amplify.Storage.uploadData(
            path: StoragePath.fromString(path),
            data: StorageDataPayload.bytes('test content'.codeUnits),
          ).result;
        }

        for (final path in uploadedPaths) {
          addTearDownPath(StoragePath.fromString(path));
        }
      });

      group('list() without options', () {
        testWidgets('should list all files with unique prefix', (_) async {
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

        testWidgets('should list files within a subdirectory', (_) async {
          final listResult = await Amplify.Storage.list(
            path: StoragePath.fromString('$uniquePrefix/subdir/'),
          ).result;

          expect(listResult.items.length, 1);
          expect(listResult.items.first.path, contains('file3.txt'));
        });

        testWidgets('unauthorized path', (_) async {
          await expectLater(
            () => Amplify.Storage.list(
              path: const StoragePath.fromString('unauthorized/path'),
            ).result,
            throwsA(isA<StorageAccessDeniedException>()),
          );
        });
      });

      group('list() with options', () {
        group('excluding sub paths', () {
          testWidgets('default delimiter', (_) async {
            final listResult = await Amplify.Storage.list(
              path: StoragePath.fromString('$uniquePrefix/'),
              options: const StorageListOptions(
                pluginOptions: S3ListPluginOptions(
                  excludeSubPaths: true,
                ),
              ),
            ).result as S3ListResult;

            expect(listResult.items.length, 3);
            expect(listResult.items.first.path, contains('file1.txt'));

            expect(listResult.metadata.subPaths.length, 1);
            expect(listResult.metadata.subPaths.first, '$uniquePrefix/subdir/');
            expect(listResult.metadata.delimiter, '/');
          });

          testWidgets('custom delimiter', (_) async {
            final listResult = await Amplify.Storage.list(
              path: StoragePath.fromString('$uniquePrefix/'),
              options: const StorageListOptions(
                pluginOptions: S3ListPluginOptions(
                  excludeSubPaths: true,
                  delimiter: '#',
                ),
              ),
            ).result as S3ListResult;

            expect(listResult.items.length, 3);
            expect(listResult.items.first.path, contains('file1.txt'));

            expect(listResult.metadata.subPaths.length, 1);
            expect(
              listResult.metadata.subPaths.first,
              '$uniquePrefix/subdir2#',
            );
            expect(listResult.metadata.delimiter, '#');
          });
        });

        testWidgets('should respect pageSize limitation', (_) async {
          final listResult = await Amplify.Storage.list(
            path: StoragePath.fromString(uniquePrefix),
            options: const StorageListOptions(
              pageSize: 2,
            ),
          ).result;

          expect(listResult.items.length, 2);
          expect(listResult.items.first.path, contains('file1.txt'));
        });

        testWidgets('should list files with pagination', (_) async {
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
          expect(listResult.items.first.path, contains('file2.txt'));
        });

        testWidgets('listAll', (_) async {
          final listResult = await Amplify.Storage.list(
            path: StoragePath.fromString(uniquePrefix),
            options: const StorageListOptions(
              pluginOptions: S3ListPluginOptions.listAll(),
            ),
          ).result;

          expect(listResult.items.length, uploadedPaths.length);
          expect(listResult.nextToken, isNull);
        });
      });
    });

    group('config with dots in name', () {
      setUpAll(() async {
        await configure(amplifyEnvironments['dots-in-name']!);
        for (final path in uploadedPaths) {
          await Amplify.Storage.uploadData(
            path: StoragePath.fromString(path),
            data: StorageDataPayload.bytes('test content'.codeUnits),
          ).result;
        }

        for (final path in uploadedPaths) {
          addTearDownPath(StoragePath.fromString(path));
        }
      });
      testWidgets('list works', (_) async {
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
    });
  });
}
