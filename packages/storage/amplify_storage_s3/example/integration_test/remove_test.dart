// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_example/amplifyconfiguration.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/configure.dart';
import 'utils/object_exists.dart';
import 'utils/sign_in_new_user.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('remove()', () {
    group('standard config', () {
      setUpAll(() async {
        await configure(amplifyEnvironments['main']!);
      });

      group('StoragePath from string', () {
        final path = 'public/remove-${uuid()}';
        final storagePath = StoragePath.fromString(path);
        setUp(() async {
          await Amplify.Storage.uploadData(
            data: StorageDataPayload.bytes('data'.codeUnits),
            path: storagePath,
          ).result;
        });

        testWidgets('removes object', (_) async {
          expect(await objectExists(storagePath), true);
          final result = await Amplify.Storage.remove(
            path: storagePath,
          ).result;
          expect(await objectExists(storagePath), false);
          expect(result.removedItem.path, path);
        });
      });

      group('StoragePath from identity Id', () {
        final fileName = 'remove-${uuid()}';
        final storagePath = StoragePath.fromIdentityId(
          ((identityId) => 'private/$identityId/$fileName'),
        );
        late String expectedResolvedPath;
        setUp(() async {
          final identityId = await signInNewUser();
          expectedResolvedPath = 'private/$identityId/$fileName';
          await Amplify.Storage.uploadData(
            data: StorageDataPayload.bytes('data'.codeUnits),
            path: StoragePath.fromString(expectedResolvedPath),
          ).result;
        });

        testWidgets('removes object', (_) async {
          expect(await objectExists(storagePath), true);
          final result = await Amplify.Storage.remove(
            path: storagePath,
          ).result;
          expect(await objectExists(storagePath), false);
          expect(result.removedItem.path, expectedResolvedPath);
        });
      });

      testWidgets('unauthorized path', (_) async {
        await expectLater(
          () => Amplify.Storage.remove(
            path: const StoragePath.fromString('unauthorized/path'),
          ).result,
          throwsA(isA<StorageAccessDeniedException>()),
        );
      });

      testWidgets('non existent path', (_) async {
        await expectLater(
          Amplify.Storage.remove(
            path: const StoragePath.fromString('public/not-existent-path'),
          ).result,
          completes,
        );
      });
    });
    group('config with dots in name', () {
      setUpAll(() async {
        await configure(amplifyEnvironments['dots-in-name']!);
      });

      testWidgets('remove works', (_) async {
        final path = 'public/remove-${uuid()}';
        final storagePath = StoragePath.fromString(path);
        await Amplify.Storage.uploadData(
          data: StorageDataPayload.bytes('data'.codeUnits),
          path: storagePath,
        ).result;
        expect(await objectExists(storagePath), true);
        final result = await Amplify.Storage.remove(
          path: storagePath,
        ).result;
        expect(await objectExists(storagePath), false);
        expect(result.removedItem.path, path);
      });
    });
  });
}
