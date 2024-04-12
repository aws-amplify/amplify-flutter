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
    final metadata = {'foo': 'bar'};
    setUpAll(() async {
      await configure(amplifyEnvironments['main']!);
      addTearDownPath(StoragePath.fromString(path));
      await Amplify.Storage.uploadData(
        data: HttpPayload.bytes(data),
        path: StoragePath.fromString(path),
        options: StorageUploadDataOptions(metadata: metadata),
      ).result;
    });

    test('String StoragePath', () async {
      final result = await Amplify.Storage.getProperties(
        path: StoragePath.fromString(path),
      ).result;
      expect(result.storageItem.path, path);
      expect(result.storageItem.metadata, metadata);
      expect(result.storageItem.eTag, isNotNull);
      expect(result.storageItem.size, data.length);
    });

    test('with identity ID', () async {
      final userIdentityId = await signInNewUser();
      final name = 'get-properties-with-identity-id-${uuid()}';
      final data = 'with identity ID'.codeUnits;
      final expectedResolvedPath = 'private/$userIdentityId/$name';
      addTearDownPath(StoragePath.fromString(expectedResolvedPath));
      final result = await Amplify.Storage.getProperties(
        path: StoragePath.fromIdentityId(
          ((identityId) => 'private/$identityId/$name'),
        ),
      ).result;
      expect(result.storageItem.path, path);
      expect(result.storageItem.metadata, metadata);
      expect(result.storageItem.eTag, isNotNull);
      expect(result.storageItem.size, data.length);
    });

    test('unauthorized path', () async {
      expect(
        () => Amplify.Storage.getProperties(
          path: const StoragePath.fromString('unauthorized/path'),
        ).result,
        throwsA(isA<StorageAccessDeniedException>()),
      );
    });
  });
}
