// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_storage_s3_example/amplifyconfiguration.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/configure.dart';
import 'utils/object_exists.dart';
import 'utils/sign_in_new_user.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('removeMany()', () {
    group('standard config', () {
      setUpAll(() async {
        await configure(amplifyEnvironments['main']!);
      });

      group('StoragePath from string', () {
        final path1 = 'public/remove-${uuid()}';
        final path2 = 'public/remove-${uuid()}';
        final storagePath1 = StoragePath.fromString(path1);
        final storagePath2 = StoragePath.fromString(path2);
        setUp(() async {
          await Amplify.Storage.uploadData(
            data: StorageDataPayload.bytes('data'.codeUnits),
            path: storagePath1,
          ).result;
          await Amplify.Storage.uploadData(
            data: StorageDataPayload.bytes('data'.codeUnits),
            path: storagePath2,
          ).result;
        });

        testWidgets('removes objects', (_) async {
          expect(await objectExists(storagePath1), true);
          expect(await objectExists(storagePath2), true);
          final result = await Amplify.Storage.removeMany(
            paths: [storagePath1, storagePath2],
          ).result;
          expect(await objectExists(storagePath1), false);
          expect(await objectExists(storagePath2), false);
          final removedPaths = result.removedItems.map((i) => i.path).toList();
          expect(removedPaths, unorderedEquals([path1, path2]));
        });
      });

      group('StoragePath from identity Id', () {
        final fileName1 = 'remove-${uuid()}';
        final fileName2 = 'remove-${uuid()}';
        final storagePath1 = StoragePath.fromIdentityId(
          ((identityId) => 'private/$identityId/$fileName1'),
        );
        final storagePath2 = StoragePath.fromIdentityId(
          ((identityId) => 'private/$identityId/$fileName2'),
        );
        late String expectedResolvedPath1;
        late String expectedResolvedPath2;
        setUp(() async {
          final identityId = await signInNewUser();
          expectedResolvedPath1 = 'private/$identityId/$fileName1';
          expectedResolvedPath2 = 'private/$identityId/$fileName2';
          await Amplify.Storage.uploadData(
            data: StorageDataPayload.bytes('data'.codeUnits),
            path: StoragePath.fromString(expectedResolvedPath1),
          ).result;
          await Amplify.Storage.uploadData(
            data: StorageDataPayload.bytes('data'.codeUnits),
            path: StoragePath.fromString(expectedResolvedPath2),
          ).result;
        });

        testWidgets('removes objects', (_) async {
          expect(await objectExists(storagePath1), true);
          expect(await objectExists(storagePath2), true);
          final result = await Amplify.Storage.removeMany(
            paths: [storagePath1, storagePath2],
          ).result;
          expect(await objectExists(storagePath1), false);
          expect(await objectExists(storagePath2), false);
          final removedPaths = result.removedItems.map((i) => i.path).toList();
          expect(
            removedPaths,
            unorderedEquals([expectedResolvedPath1, expectedResolvedPath2]),
          );
        });
      });

      testWidgets('unauthorized path', (_) async {
        final result = await Amplify.Storage.removeMany(
          paths: [const StoragePath.fromString('unauthorized/path')],
        ).result as S3RemoveManyResult;

        expect(result.errors.first.code, 'AccessDenied');
      });

      testWidgets('non existent path', (_) async {
        await expectLater(
          Amplify.Storage.removeMany(
            paths: [const StoragePath.fromString('public/not-existent-path')],
          ).result,
          completes,
        );
      });

      testWidgets('partial success', (_) async {
        final result = await Amplify.Storage.removeMany(
          paths: [
            const StoragePath.fromString('unauthorized/path'),
            const StoragePath.fromString('public/path'),
          ],
        ).result as S3RemoveManyResult;

        expect(result.removedItems.length, 1);
        expect(result.removedItems.first.path, 'public/path');
        expect(result.errors.length, 1);
        expect(result.errors.first.code, 'AccessDenied');
      });
    });
    group('config with dots in name', () {
      setUpAll(() async {
        await configure(amplifyEnvironments['dots-in-name']!);
      });

      testWidgets('remove many works', (_) async {
        final path1 = 'public/remove-${uuid()}';
        final path2 = 'public/remove-${uuid()}';
        final storagePath1 = StoragePath.fromString(path1);
        final storagePath2 = StoragePath.fromString(path2);
        await Amplify.Storage.uploadData(
          data: StorageDataPayload.bytes('data'.codeUnits),
          path: storagePath1,
        ).result;
        await Amplify.Storage.uploadData(
          data: StorageDataPayload.bytes('data'.codeUnits),
          path: storagePath2,
        ).result;
        expect(await objectExists(storagePath1), true);
        expect(await objectExists(storagePath2), true);
        final result = await Amplify.Storage.removeMany(
          paths: [storagePath1, storagePath2],
        ).result;
        expect(await objectExists(storagePath1), false);
        expect(await objectExists(storagePath2), false);
        final removedPaths = result.removedItems.map((i) => i.path).toList();
        expect(removedPaths, unorderedEquals([path1, path2]));
      });
    });
  });
}
