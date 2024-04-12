// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_storage_s3_example/amplifyconfiguration.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/configure.dart';
import 'utils/sign_in_new_user.dart';
import 'utils/tear_down.dart';

Future<List<int>> readData(Uri uri) async {
  return (await read(uri)).codeUnits;
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('getUrl()', () {
    final path = 'public/get-url-${uuid()}';
    final data = 'get url data'.codeUnits;
    setUpAll(() async {
      await configure(amplifyEnvironments['main']!);
      addTearDownPath(StoragePath.fromString(path));
      await Amplify.Storage.uploadData(
        data: HttpPayload.bytes(data),
        path: StoragePath.fromString(path),
      ).result;
    });

    test('String StoragePath', () async {
      final result = await Amplify.Storage.getUrl(
        path: StoragePath.fromString(path),
      ).result;
      expect(result.url.path, '/$path');
      final actualData = await readData(result.url);
      expect(actualData, data);
    });

    test('with identity ID', () async {
      final userIdentityId = await signInNewUser();
      final name = 'get-url-with-identity-id-${uuid()}';
      final data = 'with identity ID'.codeUnits;
      final expectedResolvedPath = 'private/$userIdentityId/$name';
      addTearDownPath(StoragePath.fromString(expectedResolvedPath));
      await Amplify.Storage.uploadData(
        data: HttpPayload.bytes(data),
        path: StoragePath.fromIdentityId(
          (identityId) => 'private/$identityId/$name',
        ),
      ).result;

      final result = await Amplify.Storage.getUrl(
        path: StoragePath.fromIdentityId(
          (identityId) => 'private/$identityId/$name',
        ),
      ).result;
      expect(result.url.path, '/$expectedResolvedPath');
      final actualData = await readData(result.url);
      expect(actualData, data);
    });

    group('unauthorized path', () {
      test('validateObjectExistence true', () async {
        expect(
          () => Amplify.Storage.getUrl(
            path: const StoragePath.fromString('unauthorized/path'),
            options: const StorageGetUrlOptions(
              pluginOptions: S3GetUrlPluginOptions(
                validateObjectExistence: true,
              ),
            ),
          ).result,
          throwsA(isA<StorageAccessDeniedException>()),
        );
      });

      test('validateObjectExistence false', () async {
        final result = await Amplify.Storage.getUrl(
          path: const StoragePath.fromString('unauthorized/path'),
          options: const StorageGetUrlOptions(
            pluginOptions: S3GetUrlPluginOptions(
              validateObjectExistence: false,
            ),
          ),
        ).result;
        expect(
          () => readData(result.url),
          throwsA(isA<ClientException>()),
        );
      });
    });

    group('with options', () {
      test('expiresIn', () async {
        const duration = Duration(seconds: 10);
        final result = await Amplify.Storage.getUrl(
          path: StoragePath.fromString(path),
          options: const StorageGetUrlOptions(
            pluginOptions: S3GetUrlPluginOptions(
              expiresIn: duration,
            ),
          ),
        ).result;
        expect(result.url.path, '/$path');
        final actualData = await readData(result.url);
        expect(actualData, data);
        await Future<void>.delayed(duration);
        expect(
          () => readData(result.url),
          throwsA(isA<ClientException>()),
        );
      });

      test('validateObjectExistence true', () async {
        expect(
          () => Amplify.Storage.getUrl(
            path: const StoragePath.fromString('public/non-existent-path'),
            options: const StorageGetUrlOptions(
              pluginOptions: S3GetUrlPluginOptions(
                validateObjectExistence: true,
              ),
            ),
          ).result,
          throwsA(isA<StorageKeyNotFoundException>()),
        );
      });

      test('validateObjectExistence false', () async {
        expect(
          Amplify.Storage.getUrl(
            path: const StoragePath.fromString('public/non-existent-path'),
            options: const StorageGetUrlOptions(
              pluginOptions: S3GetUrlPluginOptions(
                validateObjectExistence: false,
              ),
            ),
          ).result,
          completes,
        );
      });

      test('useAccelerateEndpoint', () async {
        final result = await Amplify.Storage.getUrl(
          path: StoragePath.fromString(path),
          options: const StorageGetUrlOptions(
            pluginOptions: S3GetUrlPluginOptions(
              useAccelerateEndpoint: true,
            ),
          ),
        ).result;
        expect(result.url.path, '/$path');
        final actualData = await readData(result.url);
        expect(actualData, data);
      });
    });
  });
}
