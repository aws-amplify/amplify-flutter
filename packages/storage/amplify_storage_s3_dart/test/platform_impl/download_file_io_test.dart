// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

@TestOn('vm')

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/platform_impl/download_file/download_file.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';
import 'package:amplify_storage_s3_dart/src/utils/app_path_provider/app_path_provider.dart';
import 'package:mocktail/mocktail.dart';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';

import '../test_utils/mocks.dart';

void main() {
  group('downloadFile() io implementation', () {
    late StorageS3Service storageS3Service;
    late S3DownloadTask downloadTask;
    late FutureOr<void> Function() preStart;
    late void Function(S3TransferProgress) onProgress;
    late void Function(List<int>) onData;
    late FutureOr<void> Function() onDone;
    const appPathProvider = S3DartAppPathProvider();
    final testDestinationPath = path.join(Directory.current.path, 'test.txt');
    const testS3pluginConfig = S3PluginConfig(
      bucket: 'fake-bucket',
      region: 'west-2',
    );
    const testKey = 'upload-key.text';
    const testFileContent = 'Hello world!';
    const testItem = S3Item(key: testKey);
    final testFileBytes = utf8.encode(testFileContent);
    final testDownloadFileRequest = StorageDownloadFileRequest(
      key: testKey,
      localFile: AWSFile.fromPath(testDestinationPath),
      options: const S3DownloadFileOptions(
        getProperties: true,
        accessLevel: StorageAccessLevel.private,
      ),
    );

    late S3TransferProgress expectedProgress;

    setUpAll(() {
      storageS3Service = MockStorageS3Service();
      downloadTask = MockS3DownloadTask();
      registerFallbackValue(const S3DownloadDataOptions());

      when(
        () => storageS3Service.downloadData(
          key: testKey,
          options: any(named: 'options'),
          preStart: any(named: 'preStart'),
          onProgress: any(named: 'onProgress'),
          onData: any(named: 'onData'),
          onDone: any(named: 'onDone'),
          onError: any(named: 'onError'),
        ),
      ).thenAnswer((_) => downloadTask);

      when(
        () => downloadTask.result,
      ).thenAnswer((_) async => testItem);
    });

    test('should invoke StorageS3Service.downloadData with expected parameters',
        () async {
      final downloadFileOperation = downloadFile(
        request: testDownloadFileRequest,
        s3pluginConfig: testS3pluginConfig,
        storageS3Service: storageS3Service,
        appPathProvider: appPathProvider,
        onProgress: (progress) {
          expectedProgress = progress;
        },
      );

      final captureParams = verify(
        () => storageS3Service.downloadData(
          key: testKey,
          options: captureAny<S3DownloadDataOptions>(named: 'options'),
          preStart: captureAny<FutureOr<void> Function()?>(named: 'preStart'),
          onProgress: captureAny<void Function(S3TransferProgress)?>(
            named: 'onProgress',
          ),
          onData: captureAny<void Function(List<int>)?>(named: 'onData'),
          onDone: captureAny<FutureOr<void> Function()?>(named: 'onDone'),
          onError: captureAny<FutureOr<void> Function()?>(named: 'onError'),
        ),
      ).captured;

      expect(
        captureParams[0],
        isA<S3DownloadDataOptions>().having(
          (o) => o.accessLevel,
          'accessLevel',
          testDownloadFileRequest.options?.accessLevel,
        ),
      );

      expect(captureParams[1] is Function, true);
      preStart = captureParams[1] as FutureOr<void> Function();
      expect(captureParams[2] is Function, true);
      onProgress = captureParams[2] as void Function(S3TransferProgress);
      expect(captureParams[3] is Function, true);
      onData = captureParams[3] as void Function(List<int>);
      expect(captureParams[4] is Function, true);
      onDone = captureParams[4] as FutureOr<void> Function();

      final result = await downloadFileOperation.result;
      expect(result.downloadedItem, testItem);
    });

    test('supplied callback parameters should function correctly', () async {
      // 0. create a existing file on the destination path
      final existingFile = File(testDestinationPath);
      await existingFile.writeAsString('你好世界！');
      // 1. preStart check if destination is writable and to create temporary file
      await preStart();
      // 2. supplied onProgress callback should be invoked
      const testProgress = S3TransferProgress(
        totalBytes: 1024,
        transferredBytes: 1024,
        state: S3TransferState.inProgress,
      );
      onProgress(testProgress);
      expect(testProgress, expectedProgress);
      // 3. onData should write bytes to temporary file
      onData(testFileBytes);
      // 4. onDone should flush bytes to the temporary file, close and copy the
      // file to destination
      await onDone();
      // verify the destination file has the content
      final downloadedFile = File(testDestinationPath);
      expect(await downloadedFile.readAsString(), testFileContent);
      await downloadedFile.delete();
    });

    test(
        'should correctly create S3DownloadDataOptions with default storage access level',
        () {
      downloadFile(
        request: StorageDownloadFileRequest(
          key: testKey,
          localFile: AWSFile.fromPath('path'),
        ),
        s3pluginConfig: testS3pluginConfig,
        storageS3Service: storageS3Service,
        appPathProvider: appPathProvider,
        onProgress: (progress) {
          expectedProgress = progress;
        },
      );

      final capturedOptions = verify(
        () => storageS3Service.downloadData(
          key: testKey,
          options: captureAny<S3DownloadDataOptions>(named: 'options'),
          preStart: any(named: 'preStart'),
          onProgress: any(named: 'onProgress'),
          onData: any(named: 'onData'),
          onDone: any(named: 'onDone'),
          onError: any(named: 'onError'),
        ),
      ).captured.last;

      expect(
        capturedOptions,
        isA<S3DownloadDataOptions>().having(
          (o) => o.accessLevel,
          'accessLevel',
          testS3pluginConfig.defaultAccessLevel,
        ),
      );
    });

    test(
        'should correctly create S3DownloadDataOptions with correct targetIdentityId',
        () {
      const testTargetIdentity = 'someone-else';
      downloadFile(
        request: StorageDownloadFileRequest(
          key: testKey,
          localFile: AWSFile.fromPath('path'),
          options: const S3DownloadFileOptions.forIdentity(
            testTargetIdentity,
          ),
        ),
        s3pluginConfig: testS3pluginConfig,
        storageS3Service: storageS3Service,
        appPathProvider: appPathProvider,
        onProgress: (progress) {
          expectedProgress = progress;
        },
      );

      final capturedOptions = verify(
        () => storageS3Service.downloadData(
          key: testKey,
          options: captureAny<S3DownloadDataOptions>(named: 'options'),
          preStart: any(named: 'preStart'),
          onProgress: any(named: 'onProgress'),
          onData: any(named: 'onData'),
          onDone: any(named: 'onDone'),
          onError: any(named: 'onError'),
        ),
      ).captured.last;

      expect(
        capturedOptions,
        isA<S3DownloadDataOptions>().having(
          (o) => o.accessLevel,
          'accessLevel',
          StorageAccessLevel.protected,
        ),
      );

      expect(
        capturedOptions,
        isA<S3DownloadDataOptions>().having(
          (o) => o.targetIdentityId,
          'targetIdentityId',
          testTargetIdentity,
        ),
      );
    });

    group('preStart callback should throw exceptions', () {
      test(
          'when destination path is null is throws StorageLocalFileNotFoundException',
          () {
        downloadFile(
          request: StorageDownloadFileRequest(
            key: testKey,
            localFile: AWSFile.fromData([101]),
          ),
          s3pluginConfig: testS3pluginConfig,
          storageS3Service: storageS3Service,
          appPathProvider: appPathProvider,
          onProgress: (progress) {
            expectedProgress = progress;
          },
        );

        final capturedPreStart = verify(
          () => storageS3Service.downloadData(
            key: testKey,
            options: any(named: 'options'),
            preStart: captureAny<FutureOr<void> Function()?>(named: 'preStart'),
            onProgress: any(named: 'onProgress'),
            onData: any(named: 'onData'),
            onDone: any(named: 'onDone'),
            onError: any(named: 'onError'),
          ),
        ).captured.last;
        final preStart = capturedPreStart as FutureOr<void> Function();
        expect(preStart(), throwsA(isA<StorageLocalFileNotFoundException>()));
      });

      test(
          'when destination path is a directory instead of a file it throws StorageLocalFileNotFoundException',
          () {
        downloadFile(
          request: StorageDownloadFileRequest(
            key: testKey,
            localFile: AWSFile.fromPath(Directory.systemTemp.path),
          ),
          s3pluginConfig: testS3pluginConfig,
          storageS3Service: storageS3Service,
          appPathProvider: appPathProvider,
          onProgress: (progress) {
            expectedProgress = progress;
          },
        );

        final capturedPreStart = verify(
          () => storageS3Service.downloadData(
            key: testKey,
            options: any(named: 'options'),
            preStart: captureAny<FutureOr<void> Function()?>(named: 'preStart'),
            onProgress: any(named: 'onProgress'),
            onData: any(named: 'onData'),
            onDone: any(named: 'onDone'),
            onError: any(named: 'onError'),
          ),
        ).captured.last;
        final preStart = capturedPreStart as FutureOr<void> Function();
        expect(preStart(), throwsA(isA<StorageLocalFileNotFoundException>()));
      });
    });

    // TODO(HuiSF): re-enable controllable APIs when SmithyOperation.cancel
    // can cancel underlying http request.
    // test(
    //     'returned S3DownloadFileOperation pause resume and cancel APIs should interact with S3DownloadTask',
    //     () async {
    //   when(() => downloadTask.result).thenAnswer((_) async => testItem);
    //   when(downloadTask.pause).thenAnswer((_) async {});
    //   when(downloadTask.resume).thenAnswer((_) async {});
    //   when(downloadTask.cancel).thenAnswer((_) async {});

    //   final downloadFileOperation = downloadFile(
    //     request: StorageDownloadFileRequest(
    //       key: testKey,
    //       localFile: AWSFile.fromPath('path'),
    //     ),
    //     s3pluginConfig: testS3pluginConfig,
    //     storageS3Service: storageS3Service,
    //     appPathProvider: appPathProvider,
    //     onProgress: (progress) {
    //       expectedProgress = progress;
    //     },
    //   );

    //   await downloadFileOperation.pause();
    //   await downloadFileOperation.resume();
    //   await downloadFileOperation.cancel();

    //   verify(downloadTask.pause).called(1);
    //   verify(downloadTask.resume).called(1);
    //   verify(downloadTask.cancel).called(1);
    // });
  });
}
