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

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/service/task/s3_download_task.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smithy/smithy.dart';
import 'package:test/test.dart';

import '../../test_utils/mocks.dart';
import '../storage_s3_service_test.dart';

void main() {
  group('S3DownloadTask', () {
    const testBucket = 'bucket1';
    const testKey = 'some-object';
    final testPrefixResolver = TestPrefixResolver();
    late S3Client s3Client;
    late AWSLogger logger;

    setUpAll(() {
      s3Client = MockS3Client();
      logger = MockAWSLogger();

      registerFallbackValue(
        GetObjectRequest(
          bucket: 'fake bucket',
          key: 'dummy key',
        ),
      );

      registerFallbackValue(
        HeadObjectRequest(
          bucket: 'fake bucket',
          key: 'dummy key',
        ),
      );
    });

    group('start() API', () {
      test(
          'it should ripple exception thrown from `preStart` to the result Future',
          () {
        const testOptions = S3StorageDownloadDataOptions();
        final testException = S3StorageException.unknownException();
        Future<void> testPreStart() async {
          throw testException;
        }

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testOptions,
          logger: logger,
          preStart: testPreStart,
        );

        unawaited(downloadTask.start());

        expect(downloadTask.result, throwsA(testException));
      });

      test('it should invoke S3Client.getObject API with correct parameters',
          () async {
        const testOptions = S3StorageDownloadDataOptions();
        const testBodyBytes = [101, 102];
        final testGetObjectOutput = GetObjectOutput(
          contentLength: Int64(testBodyBytes.length),
          body: Stream.value(testBodyBytes),
        );
        late S3TransferState finalState;

        when(
          () => s3Client.getObject(any()),
        ).thenAnswer((_) async => testGetObjectOutput);

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testOptions,
          logger: logger,
          onProgress: (progress) {
            finalState = progress.state;
          },
        );

        await downloadTask.start();

        final capturedRequest = verify(
          () => s3Client.getObject(captureAny<GetObjectRequest>()),
        ).captured.last;

        expect(capturedRequest is GetObjectRequest, isTrue);

        final request = capturedRequest as GetObjectRequest;
        expect(request.bucket, testBucket);
        expect(
          request.key,
          '${await testPrefixResolver.resolvePrefix(
            storageAccessLevel: testOptions.storageAccessLevel,
          )}$testKey',
        );
        expect(request.checksumMode, ChecksumMode.enabled);

        await downloadTask.result;
        expect(finalState, S3TransferState.success);
      });

      test(
          'it should throw S3StorageException when getObject response doesn\'t include a value contentLength header',
          () async {
        const testOptions = S3StorageDownloadDataOptions();
        final testGetObjectOutput = GetObjectOutput(
          body: Stream.value([101]),
        );
        var onErrorHasBeenCalled = false;

        when(
          () => s3Client.getObject(any()),
        ).thenAnswer((_) async => testGetObjectOutput);

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testOptions,
          logger: logger,
          onError: () {
            onErrorHasBeenCalled = true;
          },
        );

        unawaited(downloadTask.start());

        await expectLater(
          downloadTask.result,
          throwsA(isA<S3StorageException>()),
        );
        expect(onErrorHasBeenCalled, isTrue);
      });
    });

    group('pause API()', () {
      test('it should pause the task', () async {
        const testOptions = S3StorageDownloadDataOptions();
        final testGetObjectOutput = GetObjectOutput(
          contentLength: Int64(1024),
          body: Stream<List<int>>.periodic(
            const Duration(microseconds: 200),
            (_) => [101],
          ).take(1024),
        );
        final receivedState = <S3TransferState>[];

        when(
          () => s3Client.getObject(any()),
        ).thenAnswer((_) async => testGetObjectOutput);

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testOptions,
          logger: logger,
          onProgress: (progress) {
            receivedState.add(progress.state);
          },
        );

        unawaited(downloadTask.start());
        await downloadTask.pause();

        expect(receivedState.last, S3TransferState.paused);
      });
    });

    group('resume API()', () {
      test('it should resume the task from paused state', () async {
        const testOptions = S3StorageDownloadDataOptions();
        final testGetObjectOutput1 = GetObjectOutput(
          contentLength: Int64(1024),
          body: Stream<List<int>>.periodic(
            const Duration(microseconds: 200),
            (_) => [101],
          ).take(1024),
        );
        final receivedState = <S3TransferState>[];

        when(
          () => s3Client.getObject(any()),
        ).thenAnswer((_) async => testGetObjectOutput1);

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testOptions,
          logger: logger,
          onProgress: (progress) {
            receivedState.add(progress.state);
          },
        );

        unawaited(downloadTask.start());
        await downloadTask.pause();

        final testGetObjectOutput2 = GetObjectOutput(
          contentLength: Int64(1024),
          body: Stream<List<int>>.periodic(
            const Duration(microseconds: 200),
            (_) => [102],
          ).take(1024),
        );
        when(
          () => s3Client.getObject(any()),
        ).thenAnswer((_) async => testGetObjectOutput2);

        await downloadTask.resume();

        expect(receivedState.last, S3TransferState.inProgress);
      });

      test('should throw exception when attempt to resume a canceled task',
          () async {
        const testOptions = S3StorageDownloadDataOptions();
        final testGetObjectOutput = GetObjectOutput(
          contentLength: Int64(1024),
          body: Stream<List<int>>.periodic(
            const Duration(microseconds: 200),
            (_) => [101],
          ).take(1024),
        );
        final receivedState = <S3TransferState>[];

        when(
          () => s3Client.getObject(any()),
        ).thenAnswer((_) async => testGetObjectOutput);

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testOptions,
          logger: logger,
          onProgress: (progress) {
            receivedState.add(progress.state);
          },
        );

        await downloadTask.start();
        await downloadTask.cancel();

        expect(downloadTask.result, throwsA(isA<S3StorageException>()));
        expect(downloadTask.resume, throwsA(isA<S3StorageException>()));
      });
    });

    group('cancel API()', () {
      test('it should cancel the task', () async {
        const testOptions = S3StorageDownloadDataOptions();
        final testGetObjectOutput = GetObjectOutput(
          contentLength: Int64(1024),
          body: Stream<List<int>>.periodic(
            const Duration(microseconds: 200),
            (_) => [101],
          ).take(1024),
        );
        final receivedState = <S3TransferState>[];

        when(
          () => s3Client.getObject(any()),
        ).thenAnswer((_) async => testGetObjectOutput);

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testOptions,
          logger: logger,
          onProgress: (progress) {
            receivedState.add(progress.state);
          },
        );

        await downloadTask.start();
        await downloadTask.cancel();
        expect(receivedState.last, S3TransferState.canceled);
        expect(downloadTask.result, throwsA(isA<S3StorageException>()));
      });
    });

    group('error handling around S3Client.getObject', () {
      test('should forward S3StorageException when getObject returns no body',
          () {
        const testOptions = S3StorageDownloadDataOptions();
        final testGetObjectOutput = GetObjectOutput(contentLength: Int64(1024));

        when(
          () => s3Client.getObject(any()),
        ).thenAnswer((_) async => testGetObjectOutput);

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testOptions,
          logger: logger,
        );

        unawaited(downloadTask.start());

        expect(downloadTask.result, throwsA(isA<S3StorageException>()));
      });

      final _ = {
        'UnknownSmithyHttpException': const UnknownSmithyHttpException(
          statusCode: 403,
          body: 'Access denied!',
        ),
        'NoSuchKey': NoSuchKey(),
      }
        ..forEach((exceptionType, exception) {
          test(
              'it should complete with a S3StorageException on $exceptionType of getObject on start',
              () async {
            const testOptions = S3StorageDownloadDataOptions();

            when(
              () => s3Client.getObject(any()),
            ).thenThrow(exception);

            final downloadTask = S3DownloadTask(
              s3Client: s3Client,
              prefixResolver: testPrefixResolver,
              bucket: testBucket,
              key: testKey,
              options: testOptions,
              logger: logger,
            );

            unawaited(downloadTask.start());

            expect(
              downloadTask.result,
              throwsA(isA<S3StorageException>()),
            );
          });
        })
        ..forEach((exceptionType, exception) {
          test(
              'it should complete with a S3StorageException on $exceptionType of getObject on resume',
              () async {
            const testOptions = S3StorageDownloadDataOptions();
            final testGetObjectOutput1 = GetObjectOutput(
              contentLength: Int64(1024),
              body: Stream<List<int>>.periodic(
                const Duration(microseconds: 200),
                (_) => [101],
              ).take(1024),
            );
            final receivedState = <S3TransferState>[];

            when(
              () => s3Client.getObject(any()),
            ).thenAnswer((_) async => testGetObjectOutput1);

            final downloadTask = S3DownloadTask(
              s3Client: s3Client,
              prefixResolver: testPrefixResolver,
              bucket: testBucket,
              key: testKey,
              options: testOptions,
              logger: logger,
              onProgress: (progress) {
                receivedState.add(progress.state);
              },
            );

            unawaited(downloadTask.start());
            await downloadTask.pause();

            when(
              () => s3Client.getObject(any()),
            ).thenThrow(exception);

            unawaited(downloadTask.resume());

            expect(
              downloadTask.result,
              throwsA(isA<S3StorageException>()),
            );
          });
        });
    });

    group('download completion', () {
      test('download should complete', () async {
        const testOptions = S3StorageDownloadDataOptions();
        const testBodyBytes = [101, 102];
        final testGetObjectOutput = GetObjectOutput(
          contentLength: Int64(testBodyBytes.length),
          body: Stream.value(testBodyBytes),
        );
        late S3TransferState finalState;

        when(
          () => s3Client.getObject(any()),
        ).thenAnswer((_) async => testGetObjectOutput);

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testOptions,
          logger: logger,
          onProgress: (progress) {
            finalState = progress.state;
          },
        );

        unawaited(downloadTask.start());

        await downloadTask.result;
        expect(finalState, S3TransferState.success);
      });
      test(
          '`onDone` should be invoked when body stream is completed and ripples exception from onDone to the result Future',
          () async {
        const testOptions = S3StorageDownloadDataOptions();
        const testBodyBytes = [101, 102];
        final testGetObjectOutput = GetObjectOutput(
          contentLength: Int64(testBodyBytes.length),
          body: Stream.value(testBodyBytes),
        );
        final testOnDoneException = Exception('some exception');
        var onDoneHasBeenCalled = false;
        late S3TransferState finalState;

        when(
          () => s3Client.getObject(any()),
        ).thenAnswer((_) async => testGetObjectOutput);

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testOptions,
          logger: logger,
          onDone: () async {
            onDoneHasBeenCalled = true;
            throw testOnDoneException;
          },
          onProgress: (progress) {
            finalState = progress.state;
          },
        );

        unawaited(downloadTask.start());

        await expectLater(downloadTask.result, throwsA(testOnDoneException));
        expect(onDoneHasBeenCalled, isTrue);
        expect(finalState, S3TransferState.failure);
      });

      test(
          'should invoke S3Client.headObject to retrieve properties of object when getProperties is set to true in the options',
          () async {
        const testTargetIdentity = 'some-else-id';
        const testOptions = S3StorageDownloadDataOptions.forIdentity(
          testTargetIdentity,
          getProperties: true,
        );
        const testBodyBytes = [101, 102];
        final testGetObjectOutput = GetObjectOutput(
          contentLength: Int64(testBodyBytes.length),
          body: Stream.value(testBodyBytes),
        );
        const testETag = '123';
        final testHeadObjectOutput = HeadObjectOutput(eTag: testETag);
        when(
          () => s3Client.getObject(any()),
        ).thenAnswer((_) async => testGetObjectOutput);

        when(
          () => s3Client.headObject(any()),
        ).thenAnswer((_) async => testHeadObjectOutput);

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testOptions,
          logger: logger,
        );

        unawaited(downloadTask.start());

        final result = await downloadTask.result;
        expect(result.eTag, testETag);

        final capturedRequest = verify(
          () => s3Client.headObject(captureAny<HeadObjectRequest>()),
        ).captured.last;

        expect(
          capturedRequest,
          isA<HeadObjectRequest>().having(
            (o) => o.key,
            'key',
            '${await testPrefixResolver.resolvePrefix(
              storageAccessLevel: testOptions.storageAccessLevel,
              identityId: testTargetIdentity,
            )}$testKey',
          ),
        );
      });
    });
  });
}
