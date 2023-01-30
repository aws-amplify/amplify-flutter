// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/service/task/s3_download_task.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/smithy_aws.dart';
import 'package:test/test.dart';

import '../../test_utils/mocks.dart';
import '../storage_s3_service_test.dart';

void main() {
  group('S3DownloadTask', () {
    const testBucket = 'bucket1';
    const testKey = 'some-object';
    final testPrefixResolver = TestPrefixResolver();
    const defaultS3ClientConfig = S3ClientConfig();
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

      registerFallbackValue(const S3ClientConfig());
    });

    group('start() API', () {
      test(
          'it should ripple exception thrown from `preStart` to the result Future',
          () {
        const testOptions = S3DownloadDataOptions();
        final testException = S3Exception.unknownException();
        Future<void> testPreStart() async {
          throw testException;
        }

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
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
        const testOptions = S3DownloadDataOptions();
        const testBodyBytes = [101, 102];
        final testGetObjectOutput = GetObjectOutput(
          contentLength: Int64(testBodyBytes.length),
          body: Stream.value(testBodyBytes),
        );
        final smithyOperation = MockSmithyOperation<GetObjectOutput>();
        late S3TransferState finalState;

        when(
          () => smithyOperation.result,
        ).thenAnswer((_) async => testGetObjectOutput);

        when(
          () => s3Client.getObject(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => smithyOperation);

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
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
          () => s3Client.getObject(
            captureAny<GetObjectRequest>(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).captured.last;

        expect(capturedRequest is GetObjectRequest, isTrue);

        final request = capturedRequest as GetObjectRequest;
        expect(request.bucket, testBucket);
        expect(
          request.key,
          '${await testPrefixResolver.resolvePrefix(
            accessLevel: testOptions.accessLevel,
          )}$testKey',
        );
        expect(request.checksumMode, ChecksumMode.enabled);

        await downloadTask.result;
        expect(finalState, S3TransferState.success);
      });

      test(
          'it should invoke S3Client.getObject API with correct useAcceleration parameter',
          () async {
        const testOptions = S3DownloadDataOptions(useAccelerateEndpoint: true);
        const testBodyBytes = [101, 102];
        final testGetObjectOutput = GetObjectOutput(
          contentLength: Int64(testBodyBytes.length),
          body: Stream.value(testBodyBytes),
        );
        final smithyOperation = MockSmithyOperation<GetObjectOutput>();

        when(
          () => smithyOperation.result,
        ).thenAnswer((_) async => testGetObjectOutput);

        when(
          () => s3Client.getObject(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => smithyOperation);

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testOptions,
          logger: logger,
        );

        await downloadTask.start();

        final capturedS3ClientConfig = verify(
          () => s3Client.getObject(
            any(),
            s3ClientConfig: captureAny<S3ClientConfig>(named: 's3ClientConfig'),
          ),
        ).captured.last;

        expect(
          capturedS3ClientConfig,
          isA<S3ClientConfig>().having(
            (o) => o.useAcceleration,
            'useAcceleration',
            testOptions.useAccelerateEndpoint,
          ),
        );
      });

      test(
          'it should throw S3Exception when getObject response doesn\'t include a value contentLength header',
          () async {
        const testOptions = S3DownloadDataOptions();
        final testGetObjectOutput = GetObjectOutput(
          body: Stream.value([101]),
        );
        final smithyOperation = MockSmithyOperation<GetObjectOutput>();
        var onErrorHasBeenCalled = false;

        when(
          () => smithyOperation.result,
        ).thenAnswer((_) async => testGetObjectOutput);

        when(
          () => s3Client.getObject(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => smithyOperation);

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
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
          throwsA(isA<S3Exception>()),
        );
        expect(onErrorHasBeenCalled, isTrue);
      });
    });

    group('pause API()', () {
      test('it should pause the task', () async {
        const testOptions = S3DownloadDataOptions();
        final testGetObjectOutput = GetObjectOutput(
          contentLength: Int64(1024),
          body: Stream<List<int>>.periodic(
            const Duration(microseconds: 200),
            (_) => [101],
          ).take(1024),
        );
        final smithyOperation = MockSmithyOperation<GetObjectOutput>();
        final receivedState = <S3TransferState>[];

        when(
          () => smithyOperation.result,
        ).thenAnswer((_) async => testGetObjectOutput);
        when(
          () => s3Client.getObject(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => smithyOperation);

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
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
        const testOptions = S3DownloadDataOptions();
        final testGetObjectOutput1 = GetObjectOutput(
          contentLength: Int64(1024),
          body: Stream<List<int>>.periodic(
            const Duration(microseconds: 200),
            (_) => [101],
          ).take(1024),
        );
        final smithyOperation1 = MockSmithyOperation<GetObjectOutput>();
        final receivedState = <S3TransferState>[];

        when(
          () => smithyOperation1.result,
        ).thenAnswer((_) async => testGetObjectOutput1);

        when(
          () => s3Client.getObject(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => smithyOperation1);

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
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
        final smithyOperation2 = MockSmithyOperation<GetObjectOutput>();

        when(
          () => smithyOperation2.result,
        ).thenAnswer((_) async => testGetObjectOutput2);

        when(
          () => s3Client.getObject(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => smithyOperation2);

        await downloadTask.resume();

        expect(receivedState.last, S3TransferState.inProgress);
      });

      test('should throw exception when attempt to resume a canceled task',
          () async {
        const testOptions = S3DownloadDataOptions();
        final testGetObjectOutput = GetObjectOutput(
          contentLength: Int64(1024),
          body: Stream<List<int>>.periodic(
            const Duration(microseconds: 200),
            (_) => [101],
          ).take(1024),
        );
        final smithyOperation = MockSmithyOperation<GetObjectOutput>();
        final receivedState = <S3TransferState>[];

        when(
          () => smithyOperation.result,
        ).thenAnswer((_) async => testGetObjectOutput);

        when(
          () => s3Client.getObject(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => smithyOperation);

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
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

        expect(downloadTask.result, throwsA(isA<S3Exception>()));
        expect(downloadTask.resume, throwsA(isA<S3Exception>()));
      });
    });

    group('cancel API()', () {
      test('it should cancel the task', () async {
        const testOptions = S3DownloadDataOptions();
        final testGetObjectOutput = GetObjectOutput(
          contentLength: Int64(1024),
          body: Stream<List<int>>.periodic(
            const Duration(microseconds: 200),
            (_) => [101],
          ).take(1024),
        );
        final smithyOperation = MockSmithyOperation<GetObjectOutput>();
        final receivedState = <S3TransferState>[];

        when(
          () => smithyOperation.result,
        ).thenAnswer((_) async => testGetObjectOutput);

        when(
          () => s3Client.getObject(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => smithyOperation);

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
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
        expect(downloadTask.result, throwsA(isA<S3Exception>()));
      });
    });

    group('error handling around S3Client.getObject', () {
      test('should forward S3Exception when getObject returns no body', () {
        const testOptions = S3DownloadDataOptions();
        final testGetObjectOutput = GetObjectOutput(contentLength: Int64(1024));
        final smithyOperation = MockSmithyOperation<GetObjectOutput>();

        when(
          () => smithyOperation.result,
        ).thenAnswer((_) async => testGetObjectOutput);

        when(
          () => s3Client.getObject(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => smithyOperation);

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testOptions,
          logger: logger,
        );

        unawaited(downloadTask.start());

        expect(downloadTask.result, throwsA(isA<S3Exception>()));
      });

      final _ = {
        'UnknownSmithyHttpException': const UnknownSmithyHttpException(
          statusCode: 403,
          body: 'Access denied!',
        ),
        'UnknownSmithyHttpException for Acceleration':
            const UnknownSmithyHttpException(
          statusCode: 400,
          body: 'S3 Transfer Acceleration is disabled on this bucket',
        ),
        'NoSuchKey': NoSuchKey(),
      }
        ..forEach((exceptionType, exception) {
          test(
              'it should complete with an exception on $exceptionType of getObject on start',
              () async {
            const testOptions = S3DownloadDataOptions();

            when(
              () => s3Client.getObject(
                any(),
                s3ClientConfig: any(named: 's3ClientConfig'),
              ),
            ).thenThrow(exception);

            final downloadTask = S3DownloadTask(
              s3Client: s3Client,
              defaultS3ClientConfig: defaultS3ClientConfig,
              prefixResolver: testPrefixResolver,
              bucket: testBucket,
              key: testKey,
              options: testOptions,
              logger: logger,
            );

            unawaited(downloadTask.start());

            if (exception is UnknownSmithyHttpException) {
              if (exception.statusCode == 403) {
                expect(
                  downloadTask.result,
                  throwsA(isA<StorageAccessDeniedException>()),
                );
              } else {
                expect(
                  downloadTask.result,
                  throwsA(isA<StorageHttpStatusException>()),
                );
              }
            } else {
              expect(
                downloadTask.result,
                throwsA(isA<StorageKeyNotFoundException>()),
              );
            }
          });
        })
        ..forEach((exceptionType, exception) {
          test(
              'it should complete with an exception on $exceptionType of getObject on resume',
              () async {
            const testOptions = S3DownloadDataOptions();
            final testGetObjectOutput1 = GetObjectOutput(
              contentLength: Int64(1024),
              body: Stream<List<int>>.periodic(
                const Duration(microseconds: 200),
                (_) => [101],
              ).take(1024),
            );
            final smithyOperation1 = MockSmithyOperation<GetObjectOutput>();
            final receivedState = <S3TransferState>[];

            when(
              () => smithyOperation1.result,
            ).thenAnswer((_) async => testGetObjectOutput1);

            when(
              () => s3Client.getObject(
                any(),
                s3ClientConfig: any(named: 's3ClientConfig'),
              ),
            ).thenAnswer((_) => smithyOperation1);

            final downloadTask = S3DownloadTask(
              s3Client: s3Client,
              defaultS3ClientConfig: defaultS3ClientConfig,
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
              () => s3Client.getObject(
                any(),
                s3ClientConfig: any(named: 's3ClientConfig'),
              ),
            ).thenThrow(exception);

            unawaited(downloadTask.resume());

            if (exception is UnknownSmithyHttpException) {
              if (exception.statusCode == 403) {
                expect(
                  downloadTask.result,
                  throwsA(isA<StorageAccessDeniedException>()),
                );
              } else {
                expect(
                  downloadTask.result,
                  throwsA(isA<StorageHttpStatusException>()),
                );
              }
            } else {
              expect(
                downloadTask.result,
                throwsA(isA<StorageKeyNotFoundException>()),
              );
            }
          });
        });
    });

    group('download completion', () {
      test('download should complete', () async {
        const testOptions = S3DownloadDataOptions();
        const testBodyBytes = [101, 102];
        final testGetObjectOutput = GetObjectOutput(
          contentLength: Int64(testBodyBytes.length),
          body: Stream.value(testBodyBytes),
        );
        final smithOperation = MockSmithyOperation<GetObjectOutput>();
        late S3TransferState finalState;

        when(
          () => smithOperation.result,
        ).thenAnswer((_) async => testGetObjectOutput);

        when(
          () => s3Client.getObject(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => smithOperation);

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
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
        const testOptions = S3DownloadDataOptions();
        const testBodyBytes = [101, 102];
        final testGetObjectOutput = GetObjectOutput(
          contentLength: Int64(testBodyBytes.length),
          body: Stream.value(testBodyBytes),
        );
        final smithyOperation = MockSmithyOperation<GetObjectOutput>();
        final testOnDoneException = Exception('some exception');
        var onDoneHasBeenCalled = false;
        late S3TransferState finalState;

        when(
          () => smithyOperation.result,
        ).thenAnswer((_) async => testGetObjectOutput);

        when(
          () => s3Client.getObject(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => smithyOperation);

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
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
        const testOptions = S3DownloadDataOptions.forIdentity(
          testTargetIdentity,
          getProperties: true,
        );
        const testBodyBytes = [101, 102];
        final testGetObjectOutput = GetObjectOutput(
          contentLength: Int64(testBodyBytes.length),
          body: Stream.value(testBodyBytes),
        );
        final getSmithyOperation = MockSmithyOperation<GetObjectOutput>();
        const testETag = '123';
        final testHeadObjectOutput = HeadObjectOutput(eTag: testETag);
        final headSmithyOperation = MockSmithyOperation<HeadObjectOutput>();

        when(
          () => getSmithyOperation.result,
        ).thenAnswer((_) async => testGetObjectOutput);

        when(
          () => headSmithyOperation.result,
        ).thenAnswer((_) async => testHeadObjectOutput);

        when(
          () => s3Client.getObject(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => getSmithyOperation);

        when(
          () => s3Client.headObject(any()),
        ).thenAnswer((_) => headSmithyOperation);

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
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
              accessLevel: testOptions.accessLevel,
              identityId: testTargetIdentity,
            )}$testKey',
          ),
        );
      });
    });
  });
}
