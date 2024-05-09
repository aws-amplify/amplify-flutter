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
    group('standard config', () {
      setUpAll(() async {
        await configure(amplifyEnvironments['main']!);
        addTearDownPath(StoragePath.fromString(path));
        await Amplify.Storage.uploadData(
          data: StorageDataPayload.bytes(data),
          path: StoragePath.fromString(path),
        ).result;
      });

      testWidgets('String StoragePath', (_) async {
        final result = await Amplify.Storage.getUrl(
          path: StoragePath.fromString(path),
        ).result;
        expect(result.url.path, '/$path');
        final actualData = await readData(result.url);
        expect(actualData, data);
      });

      // ref: https://github.com/aws-amplify/amplify-flutter/issues/2711
      testWidgets('StoragePath with special characters', (_) async {
        final date = DateTime(2020, 1, 1, 10);
        final path = 'public/get-url-special-char-$date/${uuid()}';
        addTearDownPath(StoragePath.fromString(path));
        await Amplify.Storage.uploadData(
          data: S3DataPayload.bytes(data),
          path: StoragePath.fromString(path),
        ).result;
        final result = await Amplify.Storage.getUrl(
          path: StoragePath.fromString(path),
        ).result;
        final actualData = await readData(result.url);
        expect(actualData, data);
      });

      testWidgets('with identity ID', (_) async {
        final userIdentityId = await signInNewUser();
        final name = 'get-url-with-identity-id-${uuid()}';
        final data = 'with identity ID'.codeUnits;
        final expectedResolvedPath = 'private/$userIdentityId/$name';
        addTearDownPath(StoragePath.fromString(expectedResolvedPath));
        await Amplify.Storage.uploadData(
          data: StorageDataPayload.bytes(data),
          path: StoragePath.fromString(expectedResolvedPath),
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
        testWidgets('validateObjectExistence true', (_) async {
          await expectLater(
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

        testWidgets('validateObjectExistence false', (_) async {
          final result = await Amplify.Storage.getUrl(
            path: const StoragePath.fromString('unauthorized/path'),
            options: const StorageGetUrlOptions(
              pluginOptions: S3GetUrlPluginOptions(
                validateObjectExistence: false,
              ),
            ),
          ).result;
          await expectLater(
            () => readData(result.url),
            throwsA(isA<ClientException>()),
          );
        });
      });

      group('with options', () {
        testWidgets('expiresIn', (_) async {
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
          await expectLater(
            () => readData(result.url),
            throwsA(isA<ClientException>()),
          );
        });

        testWidgets('validateObjectExistence true', (_) async {
          await expectLater(
            () => Amplify.Storage.getUrl(
              path: const StoragePath.fromString('public/non-existent-path'),
              options: const StorageGetUrlOptions(
                pluginOptions: S3GetUrlPluginOptions(
                  validateObjectExistence: true,
                ),
              ),
            ).result,
            throwsA(isA<StorageNotFoundException>()),
          );
        });

        testWidgets('validateObjectExistence false', (_) async {
          await expectLater(
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

        testWidgets('useAccelerateEndpoint', (_) async {
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

    group('config with dots in name', () {
      setUpAll(() async {
        await configure(amplifyEnvironments['dots-in-name']!);
        addTearDownPath(StoragePath.fromString(path));
        await Amplify.Storage.uploadData(
          data: StorageDataPayload.bytes(data),
          path: StoragePath.fromString(path),
        ).result;
      });
      testWidgets(
        'standard getUrl works',
        (_) async {
          final result = await Amplify.Storage.getUrl(
            path: StoragePath.fromString(path),
          ).result;
          expect(result.url.path, contains('/$path'));
          final actualData = await readData(result.url);
          expect(actualData, data);
        },
      );

      testWidgets(
        'useAccelerateEndpoint throws',
        (_) async {
          await expectLater(
            () => Amplify.Storage.getUrl(
              path: StoragePath.fromString(path),
              options: const StorageGetUrlOptions(
                pluginOptions: S3GetUrlPluginOptions(
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
