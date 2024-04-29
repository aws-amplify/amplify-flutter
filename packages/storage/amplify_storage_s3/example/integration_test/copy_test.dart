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
import 'utils/tear_down.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('copy()', () {
    final srcPath = 'public/copy-source-${uuid()}';
    final srcStoragePath = StoragePath.fromString(srcPath);
    const metadata = {'description': 'foo'};
    group('standard config', () {
      setUpAll(() async {
        await configure(amplifyEnvironments['main']!);
        addTearDownPath(srcStoragePath);
        await Amplify.Storage.uploadData(
          data: StorageDataPayload.bytes('data'.codeUnits),
          path: srcStoragePath,
          options: const StorageUploadDataOptions(metadata: metadata),
        ).result;
      });

      testWidgets('StoragePath from string', (_) async {
        final destinationPath = 'public/copy-dest-${uuid()}';
        final destinationStoragePath = StoragePath.fromString(destinationPath);
        addTearDownPath(destinationStoragePath);
        final result = await Amplify.Storage.copy(
          source: srcStoragePath,
          destination: destinationStoragePath,
        ).result;
        expect(await objectExists(destinationStoragePath), true);
        expect(result.copiedItem.path, destinationPath);
      });

      testWidgets('StoragePath from identity Id', (_) async {
        final srcFileName = 'copy-source-identityId-${uuid()}';
        final srcStoragePath = StoragePath.fromIdentityId(
          ((identityId) => 'private/$identityId/$srcFileName'),
        );
        final identityId = await signInNewUser();
        addTearDownPath(srcStoragePath);
        await Amplify.Storage.uploadData(
          data: StorageDataPayload.bytes('data'.codeUnits),
          path: srcStoragePath,
        ).result;
        final destinationFileName = 'copy-source-${uuid()}';
        final destinationStoragePath = StoragePath.fromIdentityId(
          ((identityId) => 'private/$identityId/$destinationFileName'),
        );
        final expectedDestinationPath =
            'private/$identityId/$destinationFileName';
        addTearDownPath(destinationStoragePath);
        final result = await Amplify.Storage.copy(
          source: srcStoragePath,
          destination: destinationStoragePath,
        ).result;
        expect(await objectExists(destinationStoragePath), true);
        expect(result.copiedItem.path, expectedDestinationPath);
      });

      group('with options', () {
        testWidgets('getProperties', (_) async {
          final destinationPath = 'public/copy-dest-metadata-${uuid()}';
          final destinationStoragePath =
              StoragePath.fromString(destinationPath);
          addTearDownPath(destinationStoragePath);
          final result = await Amplify.Storage.copy(
            source: srcStoragePath,
            destination: destinationStoragePath,
            options: const StorageCopyOptions(
              pluginOptions: S3CopyPluginOptions(getProperties: true),
            ),
          ).result;
          expect(result.copiedItem.metadata, metadata);
        });
      });

      testWidgets('unauthorized path (src)', (_) async {
        await expectLater(
          () => Amplify.Storage.copy(
            source: const StoragePath.fromString('unauthorized/path'),
            destination: const StoragePath.fromString('public/foo'),
          ).result,
          throwsA(isA<StorageAccessDeniedException>()),
        );
      });

      testWidgets('unauthorized path (destination)', (_) async {
        await expectLater(
          () => Amplify.Storage.copy(
            source: srcStoragePath,
            destination: const StoragePath.fromString('unauthorized/path'),
          ).result,
          throwsA(isA<StorageAccessDeniedException>()),
        );
      });

      testWidgets('non existent path', (_) async {
        await expectLater(
          () => Amplify.Storage.copy(
            source: const StoragePath.fromString('public/non-existent-path'),
            destination: const StoragePath.fromString('public/foo'),
          ).result,
          throwsA(isA<StorageNotFoundException>()),
        );
      });
    });
    group('config with dots in name', () {
      setUpAll(() async {
        await configure(amplifyEnvironments['dots-in-name']!);
        addTearDownPath(srcStoragePath);
        await Amplify.Storage.uploadData(
          data: StorageDataPayload.bytes('data'.codeUnits),
          path: srcStoragePath,
          options: const StorageUploadDataOptions(metadata: metadata),
        ).result;
      });

      testWidgets('copy works', (_) async {
        final destinationPath = 'public/copy-dest-${uuid()}';
        final destinationStoragePath = StoragePath.fromString(destinationPath);
        addTearDownPath(destinationStoragePath);
        final result = await Amplify.Storage.copy(
          source: srcStoragePath,
          destination: destinationStoragePath,
        ).result;
        expect(await objectExists(destinationStoragePath), true);
        expect(result.copiedItem.path, destinationPath);
      });
    });
  });
}
