// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_storage_s3_example/amplifyconfiguration.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/configure.dart';
import 'utils/create_file/create_file.dart';
import 'utils/sign_in_new_user.dart';
import 'utils/tear_down.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('uploadFile()', () {
    group('standard config', () {
      setUpAll(() async {
        await configure(amplifyEnvironments['main']!);
      });
      group('for file type', () {
        testWidgets(
          'from data',
          (_) async {
            await Future<void>.delayed(const Duration(seconds: 5));
            final path = 'public/upload-file-from-data-${uuid()}';
            final data = 'data'.codeUnits;
            addTearDownPath(StoragePath.fromString(path));
            final result = await Amplify.Storage.uploadFile(
              localFile: AWSFile.fromData(data),
              path: StoragePath.fromString(path),
            ).result;
            expect(result.uploadedItem.path, path);

            final downloadResult = await Amplify.Storage.downloadData(
              path: StoragePath.fromString(path),
            ).result;
            expect(downloadResult.bytes, data);
          },
        );

        testWidgets('from path', (_) async {
          final fileId = uuid();
          final path = 'public/upload-file-from-path-$fileId';
          const content = 'upload data';
          final data = content.codeUnits;
          final filePath = await createFile(path: fileId, content: content);
          addTearDownPath(StoragePath.fromString(path));
          final result = await Amplify.Storage.uploadFile(
            localFile: AWSFile.fromPath(filePath),
            path: StoragePath.fromString(path),
          ).result;
          expect(result.uploadedItem.path, path);

          final downloadResult = await Amplify.Storage.downloadData(
            path: StoragePath.fromString(path),
          ).result;
          expect(downloadResult.bytes, data);
        });

        testWidgets('from stream', (_) async {
          final path = 'public/upload-file-from-stream-${uuid()}';
          final stream = Stream<List<int>>.value([1, 2, 3]);
          addTearDownPath(StoragePath.fromString(path));
          final result = await Amplify.Storage.uploadFile(
            localFile: AWSFile.fromStream(stream, size: 3),
            path: StoragePath.fromString(path),
          ).result;
          expect(result.uploadedItem.path, path);

          final downloadResult = await Amplify.Storage.downloadData(
            path: StoragePath.fromString(path),
          ).result;
          expect(downloadResult.bytes, [1, 2, 3]);
        });
      });

      group('content type inference', () {
        testWidgets('text/plain', (_) async {
          final fileId = '${uuid()}.txt';
          final path = 'public/upload-file-content-type-$fileId';
          final filePath = await createFile(
            path: fileId,
            content: '',
            contentType: 'text/plain',
          );
          final localFile = AWSFile.fromPath(filePath);
          final contentType = await localFile.contentType;
          expect(contentType, 'text/plain');
          addTearDownPath(StoragePath.fromString(path));
          final result = await Amplify.Storage.uploadFile(
            localFile: localFile,
            path: StoragePath.fromString(path),
            options: const StorageUploadFileOptions(
              pluginOptions: S3UploadFilePluginOptions(getProperties: true),
            ),
          ).result as S3UploadFileResult;
          expect(result.uploadedItem.contentType, 'text/plain');
        });

        testWidgets('image/jpeg', (_) async {
          final fileId = '${uuid()}.jpg';
          final path = 'public/upload-file-content-type-$fileId';
          final filePath = await createFile(
            path: fileId,
            content: '',
            contentType: 'image/jpeg',
          );
          final localFile = AWSFile.fromPath(filePath);
          final contentType = await localFile.contentType;
          expect(contentType, 'image/jpeg');
          addTearDownPath(StoragePath.fromString(path));
          final result = await Amplify.Storage.uploadFile(
            localFile: localFile,
            path: StoragePath.fromString(path),
            options: const StorageUploadFileOptions(
              pluginOptions: S3UploadFilePluginOptions(getProperties: true),
            ),
          ).result as S3UploadFileResult;
          expect(result.uploadedItem.contentType, 'image/jpeg');
        });
      });

      testWidgets('with identity ID', (_) async {
        final fileId = uuid();
        final userIdentityId = await signInNewUser();
        final name = 'upload-file-with-identity-id-$fileId';
        const content = 'upload data';
        final data = content.codeUnits;
        final expectedResolvedPath = 'private/$userIdentityId/$name';
        final filePath = await createFile(path: fileId, content: content);
        addTearDownPath(StoragePath.fromString(expectedResolvedPath));
        final result = await Amplify.Storage.uploadFile(
          localFile: AWSFile.fromPath(filePath),
          path: StoragePath.fromIdentityId(
            (identityId) => 'private/$identityId/$name',
          ),
        ).result;

        expect(result.uploadedItem.path, expectedResolvedPath);

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(expectedResolvedPath),
        ).result;
        expect(downloadResult.bytes, data);
      });

      testWidgets('unauthorized path', (_) async {
        await expectLater(
          () => Amplify.Storage.uploadFile(
            localFile: AWSFile.fromData('unauthorized path'.codeUnits),
            path: const StoragePath.fromString('unauthorized/path'),
          ).result,
          throwsA(isA<StorageAccessDeniedException>()),
        );
      });

      group('with options', () {
        testWidgets('metadata', (_) async {
          final path = 'public/upload-file-with-metadata-${uuid()}';
          final data = 'metadata'.codeUnits;
          const metadata = {'description': 'foo'};
          addTearDownPath(StoragePath.fromString(path));
          final result = await Amplify.Storage.uploadFile(
            localFile: AWSFile.fromData(data),
            path: StoragePath.fromString(path),
            options: const StorageUploadFileOptions(metadata: metadata),
          ).result;
          expect(result.uploadedItem.path, path);

          final propertiesResult = await Amplify.Storage.getProperties(
            path: StoragePath.fromString(path),
          ).result;
          expect(propertiesResult.storageItem.metadata, metadata);
        });

        testWidgets('getProperties', (_) async {
          final path = 'public/upload-file-get-properties-${uuid()}';
          final data = 'getProperties'.codeUnits;
          const metadata = {'description': 'foo'};
          addTearDownPath(StoragePath.fromString(path));
          final result = await Amplify.Storage.uploadFile(
            localFile: AWSFile.fromData(data),
            path: StoragePath.fromString(path),
            options: const StorageUploadFileOptions(
              metadata: metadata,
              pluginOptions: S3UploadFilePluginOptions(getProperties: true),
            ),
          ).result;
          expect(result.uploadedItem.path, path);
          expect(result.uploadedItem.metadata, metadata);
        });

        testWidgets('useAccelerateEndpoint', (_) async {
          final fileId = uuid();
          final path = 'public/upload-file-acceleration-$fileId';
          const content = 'upload data';
          final data = content.codeUnits;
          final filePath = await createFile(path: fileId, content: content);
          addTearDownPath(StoragePath.fromString(path));
          final result = await Amplify.Storage.uploadFile(
            localFile: AWSFile.fromPath(filePath),
            path: StoragePath.fromString(path),
            options: const StorageUploadFileOptions(
              pluginOptions: S3UploadFilePluginOptions(
                useAccelerateEndpoint: true,
              ),
            ),
          ).result;
          expect(result.uploadedItem.path, path);

          final downloadResult = await Amplify.Storage.downloadData(
            path: StoragePath.fromString(path),
          ).result;
          expect(downloadResult.bytes, data);
        });
      });

      group('upload progress', () {
        testWidgets('reports progress', (_) async {
          final fileId = uuid();
          final path = 'public/upload-file-path-progress-$fileId';
          const content = 'upload data';
          final data = content.codeUnits;
          final filePath = await createFile(path: fileId, content: content);

          var fractionCompleted = 0.0;
          var totalBytes = 0;
          var transferredBytes = 0;

          addTearDownPath(StoragePath.fromString(path));
          await Amplify.Storage.uploadFile(
            localFile: AWSFile.fromPath(filePath),
            path: StoragePath.fromString(path),
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

        testWidgets('reports progress for streams based on provided size',
            (_) async {
          final fileId = uuid();
          final path = 'public/upload-file-stream-progress-$fileId';
          const content = 'upload data';
          final data = content.codeUnits;

          var fractionCompleted = 0.0;
          var totalBytes = 0;
          var transferredBytes = 0;

          addTearDownPath(StoragePath.fromString(path));
          await Amplify.Storage.uploadFile(
            localFile: AWSFile.fromStream(
              Stream.value(data),
              size: data.length,
            ),
            path: StoragePath.fromString(path),
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
      });

      group('pause, resume, cancel', () {
        /// file sizes in mb
        const fileSizes = [
          1, // non multi part upload
          6, // small multi part upload (2 parts)
          50, // large multi part upload (10 parts)
        ];
        for (final fileSize in fileSizes) {
          final size = 1024 * 1024 * fileSize;
          const chars = 'qwertyuiopasdfghjklzxcvbnm';
          final content = List.generate(size, (i) => chars[i % 25]).join();
          testWidgets(
            'can pause (file size: $fileSize mb)',
            (_) async {
              final fileId = uuid();
              final path = 'public/upload-file-pause-$fileId';
              final filePath = await createFile(path: fileId, content: content);
              StorageTransferState? state;
              addTearDownPath(StoragePath.fromString(path));
              final operation = Amplify.Storage.uploadFile(
                localFile: AWSFile.fromPath(filePath),
                path: StoragePath.fromString(path),
                onProgress: (progress) {
                  state = progress.state;
                },
              );
              await operation.pause();
              // pause is only supported for multi part uploads (over 5 mb)
              // calling .pause() should not throw, but the operation will not
              // actually pause.
              if (fileSize > 5) {
                unawaited(
                  operation.result.then(
                    (value) => fail('should not complete after pause'),
                  ),
                );
                await Future<void>.delayed(const Duration(seconds: 15));
                expect(state, StorageTransferState.paused);
                await expectLater(
                  () => Amplify.Storage.downloadData(
                    path: StoragePath.fromString(path),
                  ).result,
                  throwsA(isA<StorageNotFoundException>()),
                );
              }
            },
          );

          testWidgets(
            'can resume (file size: $fileSize mb)',
            (_) async {
              final fileId = uuid();
              final path = 'public/upload-file-resume-$fileId';
              final filePath = await createFile(path: fileId, content: content);
              final state = StreamController<StorageTransferState>();
              addTearDownPath(StoragePath.fromString(path));
              final operation = Amplify.Storage.uploadFile(
                localFile: AWSFile.fromPath(filePath),
                path: StoragePath.fromString(path),
                onProgress: (progress) {
                  state.sink.add(progress.state);
                },
              );
              await operation.pause();
              await operation.resume();
              final nextProgressState = await state.stream.first;
              expect(nextProgressState, StorageTransferState.inProgress);
              final result = await operation.result;
              expect(result.uploadedItem.path, path);
              final downloadResult = await Amplify.Storage.downloadData(
                path: StoragePath.fromString(path),
              ).result;
              expect(downloadResult.bytes, content.codeUnits);
              await state.close();
            },
          );

          testWidgets('can cancel (file size: $fileSize mb)', (_) async {
            final fileId = uuid();
            final path = 'public/upload-file-cancel-$fileId';
            final filePath = await createFile(path: fileId, content: content);
            StorageTransferState? state;
            addTearDownPath(StoragePath.fromString(path));
            final operation = Amplify.Storage.uploadFile(
              localFile: AWSFile.fromPath(filePath),
              path: StoragePath.fromString(path),
              onProgress: (progress) {
                state = progress.state;
              },
            );
            final expectException = expectLater(
              () => operation.result,
              throwsA(isA<StorageOperationCanceledException>()),
            );
            await operation.cancel();
            expect(state, StorageTransferState.canceled);
            await expectException;
            await expectLater(
              () => Amplify.Storage.downloadData(
                path: StoragePath.fromString(path),
              ).result,
              throwsA(isA<StorageNotFoundException>()),
            );
          });
        }
      });
    });

    group('config with dots in name', () {
      setUpAll(() async {
        await configure(amplifyEnvironments['dots-in-name']!);
      });
      testWidgets(
        'standard upload works',
        (_) async {
          final fileId = uuid();
          final path = 'public/upload-file-from-path-$fileId';
          const content = 'upload data';
          final data = content.codeUnits;
          final filePath = await createFile(path: fileId, content: content);
          addTearDownPath(StoragePath.fromString(path));
          final result = await Amplify.Storage.uploadFile(
            localFile: AWSFile.fromPath(filePath),
            path: StoragePath.fromString(path),
          ).result;
          expect(result.uploadedItem.path, path);

          final downloadResult = await Amplify.Storage.downloadData(
            path: StoragePath.fromString(path),
          ).result;
          expect(downloadResult.bytes, data);
        },
      );

      testWidgets(
        'useAccelerateEndpoint throws',
        (_) async {
          await Future<void>.delayed(const Duration(seconds: 5));
          final path = 'public/upload-file-from-data-${uuid()}';
          final data = 'data'.codeUnits;
          addTearDownPath(StoragePath.fromString(path));
          await expectLater(
            () => Amplify.Storage.uploadFile(
              localFile: AWSFile.fromData(data),
              path: StoragePath.fromString(path),
              options: const StorageUploadFileOptions(
                pluginOptions: S3UploadFilePluginOptions(
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
