// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_example/amplifyconfiguration.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/configure.dart';
import 'utils/sign_in_new_user.dart';
import 'utils/tear_down.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('getProperties()', () {
    final path = 'public/get-properties-${uuid()}';
    final data = 'get properties data'.codeUnits;
    const metadata = {'description': 'foo'};

    group('standard config', () {
      setUpAll(() async {
        await configure(amplifyEnvironments['main']!);
        addTearDownPath(StoragePath.fromString(path));
        await Amplify.Storage.uploadData(
          data: StorageDataPayload.bytes(data),
          path: StoragePath.fromString(path),
          options: const StorageUploadDataOptions(metadata: metadata),
        ).result;
      });

      testWidgets('String StoragePath', (_) async {
        final result = await Amplify.Storage.getProperties(
          path: StoragePath.fromString(path),
        ).result;
        expect(result.storageItem.path, path);
        expect(result.storageItem.metadata, metadata);
        expect(result.storageItem.eTag, isNotNull);
        expect(result.storageItem.size, data.length);
      });

      testWidgets('with identity ID', (_) async {
        final userIdentityId = await signInNewUser();
        final name = 'get-properties-with-identity-id-${uuid()}';
        final data = 'with identity ID'.codeUnits;
        final expectedResolvedPath = 'private/$userIdentityId/$name';
        addTearDownPath(StoragePath.fromString(expectedResolvedPath));
        await Amplify.Storage.uploadData(
          data: StorageDataPayload.bytes(data),
          path: StoragePath.fromString(expectedResolvedPath),
          options: const StorageUploadDataOptions(metadata: metadata),
        ).result;
        final result = await Amplify.Storage.getProperties(
          path: StoragePath.fromIdentityId(
            ((identityId) => 'private/$identityId/$name'),
          ),
        ).result;
        expect(result.storageItem.path, expectedResolvedPath);
        expect(result.storageItem.metadata, metadata);
        expect(result.storageItem.eTag, isNotNull);
        expect(result.storageItem.size, data.length);
      });

      testWidgets('unauthorized path', (_) async {
        await expectLater(
          () => Amplify.Storage.getProperties(
            path: const StoragePath.fromString('unauthorized/path'),
          ).result,
          throwsA(isA<StorageAccessDeniedException>()),
        );
      });

      testWidgets('not existent path', (_) async {
        await expectLater(
          () => Amplify.Storage.getProperties(
            path: const StoragePath.fromString('public/not-existent-path'),
          ).result,
          throwsA(isA<StorageNotFoundException>()),
        );
      });
    });

    group('config with dots in name', () {
      setUpAll(() async {
        await configure(amplifyEnvironments['dots-in-name']!);
        addTearDownPath(StoragePath.fromString(path));
        await Amplify.Storage.uploadData(
          data: StorageDataPayload.bytes(data),
          path: StoragePath.fromString(path),
          options: const StorageUploadDataOptions(metadata: metadata),
        ).result;
      });

      testWidgets('getProperties works', (_) async {
        final result = await Amplify.Storage.getProperties(
          path: StoragePath.fromString(path),
        ).result;
        expect(result.storageItem.path, path);
        expect(result.storageItem.metadata, metadata);
        expect(result.storageItem.eTag, isNotNull);
        expect(result.storageItem.size, data.length);
      });
    });
  });
}
