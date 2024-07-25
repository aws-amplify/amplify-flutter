// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_storage_s3_example/amplifyconfiguration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:path_provider/path_provider.dart';

import 'utils/configure.dart';
import 'utils/file_ops/file_ops.dart';
import 'utils/sign_in_new_user.dart';
import 'utils/tear_down.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('downloadFile()', () {
    late String identityPath;
    late String directory;
    late String userIdentityId;
    final publicPath = 'public/download-file-from-data-${uuid()}';
    final data = 'test data'.codeUnits;
    final name = 'download-file-with-identity-id-${uuid()}';
    final metadataFilePath = 'public/download-file-get-properties-${uuid()}';
    final metadata = {'description': 'foo'};

    setUpAll(() async {
      directory = kIsWeb ? '/' : (await getTemporaryDirectory()).path;
    });

    group('standard config', () {
      setUpAll(() async {
        await configure(amplifyEnvironments['main']!);
        await Amplify.Storage.uploadData(
          data: StorageDataPayload.bytes(data),
          path: StoragePath.fromString(publicPath),
        ).result;

        userIdentityId = await signInNewUser();
        identityPath = 'private/$userIdentityId/$name';

        await Amplify.Storage.uploadData(
          data: StorageDataPayload.bytes(data),
          path: StoragePath.fromIdentityId(
            (identityId) => 'private/$identityId/$name',
          ),
        ).result;

        await Amplify.Storage.uploadData(
          data: StorageDataPayload.bytes(data),
          path: StoragePath.fromString(metadataFilePath),
          options: StorageUploadDataOptions(
            metadata: metadata,
          ),
        ).result;

        addTearDownPaths(
          [
            StoragePath.fromString(publicPath),
            StoragePath.fromString(metadataFilePath),
            StoragePath.fromString(identityPath),
          ],
        );
      });

      group('for file type', () {
        testWidgets('to file', (_) async {
          final downloadFilePath = '$directory/downloaded-file.txt';

          final result = await Amplify.Storage.downloadFile(
            path: StoragePath.fromString(publicPath),
            localFile: AWSFile.fromPath(downloadFilePath),
          ).result;

          // Web browsers do not grant access to read arbitrary files
          if (!kIsWeb) {
            final downloadedFile = await readFile(path: downloadFilePath);
            expect(downloadedFile, data);
          }

          expect(result.localFile.path, downloadFilePath);
          expect(result.downloadedItem.path, publicPath);
        });
      });

      testWidgets('from identity ID', (_) async {
        final downloadFilePath = '$directory/downloaded-file.txt';
        final result = await Amplify.Storage.downloadFile(
          path: StoragePath.fromIdentityId(
            (identityId) => 'private/$identityId/$name',
          ),
          localFile: AWSFile.fromPath(downloadFilePath),
        ).result;

        if (!kIsWeb) {
          final downloadedFile = await readFile(path: downloadFilePath);
          expect(downloadedFile, data);
        }
        expect(result.localFile.path, downloadFilePath);
        expect(result.downloadedItem.path, identityPath);
      });

      group('with options', () {
        testWidgets('useAccelerateEndpoint', (_) async {
          final downloadFilePath = '$directory/downloaded-file.txt';

          final result = await Amplify.Storage.downloadFile(
            path: StoragePath.fromString(publicPath),
            options: const StorageDownloadFileOptions(
              pluginOptions: S3DownloadFilePluginOptions(
                useAccelerateEndpoint: true,
              ),
            ),
            localFile: AWSFile.fromPath(downloadFilePath),
          ).result;

          if (!kIsWeb) {
            final downloadedFile = await readFile(path: downloadFilePath);
            expect(downloadedFile, data);
          }
          expect(result.localFile.path, downloadFilePath);
          expect(result.downloadedItem.path, publicPath);
        });

        testWidgets('getProperties', (_) async {
          final downloadFilePath = '$directory/downloaded-file.txt';
          final downloadResult = await Amplify.Storage.downloadFile(
            path: StoragePath.fromString(metadataFilePath),
            options: const StorageDownloadFileOptions(
              pluginOptions: S3DownloadFilePluginOptions(
                getProperties: true,
              ),
            ),
            localFile: AWSFile.fromPath(downloadFilePath),
          ).result;

          if (!kIsWeb) {
            final downloadedFile = await readFile(path: downloadFilePath);
            expect(downloadedFile, data);
          }
          expect(downloadResult.localFile.path, downloadFilePath);
          expect(downloadResult.downloadedItem.path, metadataFilePath);
        });

        testWidgets('unauthorized path', (_) async {
          final downloadFilePath = '$directory/downloaded-file.txt';

          await expectLater(
            () => Amplify.Storage.downloadFile(
              path: const StoragePath.fromString('unauthorized/path'),
              localFile: AWSFile.fromPath(downloadFilePath),
            ).result,
            throwsA(isA<StorageAccessDeniedException>()),
          );
        });
      });

      group(
        'download progress',
        () {
          testWidgets('reports progress', skip: kIsWeb, (_) async {
            final downloadFilePath = '$directory/downloaded-file.txt';
            var fractionCompleted = 0.0;
            var totalBytes = 0;
            var transferredBytes = 0;

            await Amplify.Storage.downloadFile(
              path: StoragePath.fromString(publicPath),
              localFile: AWSFile.fromPath(downloadFilePath),
              onProgress: (StorageTransferProgress progress) {
                fractionCompleted = progress.fractionCompleted;
                totalBytes = progress.totalBytes;
                transferredBytes = progress.transferredBytes;
              },
            ).result;
            expect(fractionCompleted, 1.0);
            expect(totalBytes, data.length);
            expect(transferredBytes, data.length);
          });
        },
        // TODO(Jordan-Nelson): Determine why these are failing on web
        skip: kIsWeb,
      );

      group(
        'pause, resume, cancel',
        () {
          const size = 1024 * 1024 * 6;
          const chars = 'qwertyuiopasdfghjklzxcvbnm';
          final content = List.generate(size, (i) => chars[i % 25]).join();
          final fileId = uuid();
          final path = 'public/download-file-pause-$fileId';
          setUpAll(() async {
            addTearDownPath(StoragePath.fromString(path));
            await Amplify.Storage.uploadData(
              data: StorageDataPayload.string(content),
              path: StoragePath.fromString(path),
            ).result;
          });
          testWidgets('can pause', (_) async {
            final filePath = '$directory/downloaded-file.txt';
            final operation = Amplify.Storage.downloadFile(
              localFile: AWSFile.fromPath(filePath),
              path: StoragePath.fromString(path),
            );
            await operation.pause();
            unawaited(
              operation.result.then(
                (value) => fail('should not complete after pause'),
              ),
            );
            await Future<void>.delayed(const Duration(seconds: 15));
          });

          testWidgets('can resume', (_) async {
            final filePath = '$directory/downloaded-file.txt';
            final operation = Amplify.Storage.downloadFile(
              localFile: AWSFile.fromPath(filePath),
              path: StoragePath.fromString(path),
            );
            await operation.pause();
            await operation.resume();
            final result = await operation.result;
            expect(result.downloadedItem.path, path);
          });

          testWidgets(
            'can cancel',
            (_) async {
              final filePath = '$directory/downloaded-file.txt';
              final operation = Amplify.Storage.downloadFile(
                localFile: AWSFile.fromPath(filePath),
                path: StoragePath.fromString(path),
              );
              final expectException = expectLater(
                () => operation.result,
                throwsA(isA<StorageOperationCanceledException>()),
              );
              await operation.cancel();
              await expectException;
            },
            // TODO(Jordan-Nelson): resolve issue and re-enable test
            // This test is failing as of flutter v3.22
            skip: true,
          );
        },
        // TODO(Jordan-Nelson): Determine why these are failing on web
        skip: kIsWeb,
      );
    });

    group('config with dots in name', () {
      setUpAll(() async {
        await configure(amplifyEnvironments['dots-in-name']!);
        addTearDownPath(StoragePath.fromString(publicPath));
        await Amplify.Storage.uploadData(
          data: StorageDataPayload.bytes(data),
          path: StoragePath.fromString(publicPath),
        ).result;
      });
      testWidgets(
        'standard download works',
        (_) async {
          final downloadFilePath = '$directory/downloaded-file.txt';
          final result = await Amplify.Storage.downloadFile(
            path: StoragePath.fromString(publicPath),
            localFile: AWSFile.fromPath(downloadFilePath),
          ).result;
          expect(result.localFile.path, downloadFilePath);
          expect(result.downloadedItem.path, publicPath);
        },
      );

      testWidgets(
        'useAccelerateEndpoint throws',
        (_) async {
          final downloadFilePath = '$directory/downloaded-file.txt';
          await expectLater(
            () => Amplify.Storage.downloadFile(
              path: StoragePath.fromString(publicPath),
              options: const StorageDownloadFileOptions(
                pluginOptions: S3DownloadFilePluginOptions(
                  useAccelerateEndpoint: true,
                ),
              ),
              localFile: AWSFile.fromPath(downloadFilePath),
            ).result,
            // useAccelerateEndpoint is not supported with a bucket name with dots
            throwsA(isA<ConfigurationError>()),
          );
        },
      );
    });
  });
}
