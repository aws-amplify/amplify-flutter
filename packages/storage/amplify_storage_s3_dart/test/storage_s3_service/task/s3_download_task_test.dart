// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/exception/s3_storage_exception.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/service/task/s3_download_task.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/smithy_aws.dart';
import 'package:test/test.dart';

import '../../test_utils/helper_types.dart';
import '../../test_utils/mocks.dart';
import '../../test_utils/test_path_resolver.dart';

void main() {
  group('S3DownloadTask', () {
    const testBucket = 'bucket1';
    const testKey = 'some-object';
    const defaultTestOptions = StorageDownloadDataOptions();
    const defaultS3ClientConfig = S3ClientConfig();
    late S3Client s3Client;

    setUpAll(() {
      s3Client = MockS3Client();

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
        const testException = UnknownException('test exception');
        Future<void> testPreStart() async {
          throw testException;
        }

        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          bucket: testBucket,
          path: const StoragePath.fromString(testKey),
          pathResolver: TestPathResolver(),
          options: defaultTestOptions,
          preStart: testPreStart,
        );

        unawaited(downloadTask.start());

        expect(downloadTask.result, throwsA(testException));
      });

      test(
          'it should invoke S3Client.getObject API with correct parameters and default access level',
          () async {
        const testBodyBytes = [101, 102];
        final testGetObjectOutput = GetObjectOutput(
          contentLength: Int64(testBodyBytes.length),
          body: Stream.value(testBodyBytes),
        );
        final smithyOperation = MockSmithyOperation<GetObjectOutput>();
        late StorageTransferState finalState;

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
          bucket: testBucket,
          path: const StoragePath.fromString(testKey),
          pathResolver: TestPathResolver(),
          options: const StorageDownloadDataOptions(),
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
          TestPathResolver.path,
        );
        expect(request.checksumMode, ChecksumMode.enabled);

        await downloadTask.result;
        expect(finalState, StorageTransferState.success);
      });

      test(
          'it should invoke S3Client.getObject API with correct useAcceleration parameter',
          () async {
        const testUseAccelerateEndpoint = true;
        const testOptions = StorageDownloadDataOptions(
          pluginOptions: S3DownloadDataPluginOptions(
            useAccelerateEndpoint: testUseAccelerateEndpoint,
          ),
        );
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
          bucket: testBucket,
          path: const StoragePath.fromString(testKey),
          pathResolver: TestPathResolver(),
          options: testOptions,
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
            testUseAccelerateEndpoint,
          ),
        );
      });

      test(
          'it should throw StorageException when getObject response doesn\'t include a value contentLength header',
          () async {
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
          bucket: testBucket,
          path: const StoragePath.fromString(testKey),
          pathResolver: TestPathResolver(),
          options: defaultTestOptions,
          onError: () {
            onErrorHasBeenCalled = true;
          },
        );

        unawaited(downloadTask.start());

        await expectLater(
          downloadTask.result,
          throwsA(isA<StorageException>()),
        );
        expect(onErrorHasBeenCalled, isTrue);
      });

      test(
          'throw exception when attempt to use accelerate endpoint with path style URL',
          () {
        final downloadTask = S3DownloadTask(
          s3Client: s3Client,
          defaultS3ClientConfig: const S3ClientConfig(usePathStyle: true),
          bucket: 'bucket.name.has.dots.com',
          path: const StoragePath.fromString('public/$testKey'),
          pathResolver: TestPathResolver(),
          options: const StorageDownloadDataOptions(
            pluginOptions: S3DownloadDataPluginOptions(
              useAccelerateEndpoint: true,
            ),
          ),
        );

        unawaited(downloadTask.start());

        expect(
          downloadTask.result,
          throwsA(accelerateEndpointUnusable),
        );
      });
    });

    group('pause API()', () {
      test('it should pause the task', () async {
        var bodyStreamHasBeenCanceled = false;
        final testGetObjectOutput = GetObjectOutput(
          contentLength: Int64(1024),
          body: Stream<List<int>>.periodic(
            const Duration(microseconds: 200),
            (_) => [101],
          ).take(1024).asBroadcastStream(
            onCancel: (StreamSubscription<List<int>> subscription) {
              bodyStreamHasBeenCanceled = true;
            },
          ),
        );
        final smithyOperation = MockSmithyOperation<GetObjectOutput>();
        final receivedState = <StorageTransferState>[];

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
          bucket: testBucket,
          path: const StoragePath.fromString('public/$testKey'),
          pathResolver: TestPathResolver(),
          options: defaultTestOptions,
          onProgress: (progress) {
            receivedState.add(progress.state);
          },
        );

        // pause only takes effect after `start` gets called.
        // pause can be called without having to wait for start to complete.
        unawaited(downloadTask.start());
        await downloadTask.pause();

        expect(receivedState.last, StorageTransferState.paused);
        expect(bodyStreamHasBeenCanceled, isTrue);
      });
    });

    group('resume API()', () {
      test('it should resume the task from paused state', () async {
        final testGetObjectOutput1 = GetObjectOutput(
          contentLength: Int64(1024),
          body: Stream<List<int>>.periodic(
            const Duration(microseconds: 200),
            (_) => [101],
          ).take(1024),
        );
        final smithyOperation1 = MockSmithyOperation<GetObjectOutput>();
        final receivedState = <StorageTransferState>[];

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
          bucket: testBucket,
          path: const StoragePath.fromString('public/$testKey'),
          pathResolver: TestPathResolver(),
          options: defaultTestOptions,
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

        expect(receivedState.last, StorageTransferState.inProgress);
      });
    });

    group('cancel API()', () {
      test('it should cancel the task', () async {
        var bodyStreamHasBeenCanceled = false;
        final testGetObjectOutput = GetObjectOutput(
          contentLength: Int64(1024),
          body: Stream<List<int>>.periodic(
            const Duration(microseconds: 200),
            (_) => [101],
          ).take(1024).asBroadcastStream(
            onCancel: (StreamSubscription<List<int>> subscription) {
              bodyStreamHasBeenCanceled = true;
            },
          ),
        );
        final smithyOperation = MockSmithyOperation<GetObjectOutput>();
        final receivedState = <StorageTransferState>[];

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
          bucket: testBucket,
          path: const StoragePath.fromString('public/$testKey'),
          pathResolver: TestPathResolver(),
          options: defaultTestOptions,
          onProgress: (progress) {
            receivedState.add(progress.state);
          },
        );

        await downloadTask.start();
        await downloadTask.cancel();
        expect(receivedState.last, StorageTransferState.canceled);
        expect(
          downloadTask.result,
          throwsA(isA<StorageOperationCanceledException>()),
        );
        expect(bodyStreamHasBeenCanceled, isTrue);
      });
    });

    group('error handling around S3Client.getObject', () {
      final exceptionTestItems = [
        DownloadTaskExceptionConversionTestItem(
          description: 'it should complete with a StorageAccessDeniedException',
          originalException: const UnknownSmithyHttpException(
            statusCode: 403,
            body: 'Access denied!',
          ),
          exceptionTypeMatcher: isA<StorageAccessDeniedException>(),
        ),
        DownloadTaskExceptionConversionTestItem(
          description: 'it should complete with a StorageHttpStatusException',
          originalException: const UnknownSmithyHttpException(
            statusCode: 400,
            body: 'S3 Transfer Acceleration is disabled on this bucket',
          ),
          exceptionTypeMatcher: isA<StorageHttpStatusException>(),
        ),
        DownloadTaskExceptionConversionTestItem(
          description: 'it should complete with a StorageNotFoundException',
          originalException: NoSuchKey(),
          exceptionTypeMatcher: isA<StorageNotFoundException>(),
        ),
        DownloadTaskExceptionConversionTestItem(
          description: 'it should complete with a NetworkException',
          originalException: AWSHttpException(
            AWSHttpRequest(method: AWSHttpMethod.get, uri: Uri()),
          ),
          exceptionTypeMatcher: isA<NetworkException>(),
        ),
      ];

      test('should forward StorageException when getObject returns no body',
          () {
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
          bucket: testBucket,
          path: const StoragePath.fromString('public/$testKey'),
          pathResolver: TestPathResolver(),
          options: defaultTestOptions,
        );

        unawaited(downloadTask.start());

        expect(downloadTask.result, throwsA(isA<StorageException>()));
      });

      group('error handling on start()', () {
        late S3DownloadTask downloadTask;
        setUp(() {
          downloadTask = S3DownloadTask(
            s3Client: s3Client,
            defaultS3ClientConfig: defaultS3ClientConfig,
            bucket: testBucket,
            path: const StoragePath.fromString('public/$testKey'),
            pathResolver: TestPathResolver(),
            options: defaultTestOptions,
          );
        });

        for (final item in exceptionTestItems) {
          test(item.description, () async {
            when(
              () => s3Client.getObject(
                any(),
                s3ClientConfig: any(named: 's3ClientConfig'),
              ),
            ).thenThrow(item.originalException);

            unawaited(downloadTask.start());

            expect(downloadTask.result, throwsA(item.exceptionTypeMatcher));
          });
        }
      });

      group('error handling on resume()', () {
        late S3DownloadTask downloadTask;

        setUp(() {
          final testBody = Stream<List<int>>.periodic(
            const Duration(microseconds: 200),
            (_) => [101],
          ).take(1024);
          final testGetObjectOutput = GetObjectOutput(
            contentLength: Int64(1024),
            body: testBody,
          );
          final smithyOperation1 = MockSmithyOperation<GetObjectOutput>();

          when(
            () => smithyOperation1.result,
          ).thenAnswer((_) async => testGetObjectOutput);

          when(
            () => s3Client.getObject(
              any(),
              s3ClientConfig: any(named: 's3ClientConfig'),
            ),
          ).thenAnswer((_) => smithyOperation1);

          downloadTask = S3DownloadTask(
            s3Client: s3Client,
            defaultS3ClientConfig: defaultS3ClientConfig,
            bucket: testBucket,
            path: const StoragePath.fromString('public/$testKey'),
            pathResolver: TestPathResolver(),
            options: defaultTestOptions,
          );
        });

        for (final item in exceptionTestItems) {
          test(item.description, () async {
            // pause only takes effect after `start` gets called.
            // pause can be called without having to wait for start to complete.
            unawaited(downloadTask.start());
            await downloadTask.pause();

            when(
              () => s3Client.getObject(
                any(),
                s3ClientConfig: any(named: 's3ClientConfig'),
              ),
            ).thenThrow(item.originalException);

            unawaited(downloadTask.resume());

            expect(downloadTask.result, throwsA(item.exceptionTypeMatcher));
          });
        }
      });
    });

    group('download completion', () {
      test('download should complete', () async {
        const testBodyBytes = [101, 102];
        final testGetObjectOutput = GetObjectOutput(
          contentLength: Int64(testBodyBytes.length),
          body: Stream.value(testBodyBytes),
        );
        final smithOperation = MockSmithyOperation<GetObjectOutput>();
        late StorageTransferState finalState;

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
          bucket: testBucket,
          path: const StoragePath.fromString('public/$testKey'),
          pathResolver: TestPathResolver(),
          options: defaultTestOptions,
          onProgress: (progress) {
            finalState = progress.state;
          },
        );

        unawaited(downloadTask.start());

        await downloadTask.result;
        expect(finalState, StorageTransferState.success);
      });

      test(
          '`onDone` should be invoked when body stream is completed and ripples exception from onDone to the result Future',
          () async {
        const testBodyBytes = [101, 102];
        final testGetObjectOutput = GetObjectOutput(
          contentLength: Int64(testBodyBytes.length),
          body: Stream.value(testBodyBytes),
        );
        final smithyOperation = MockSmithyOperation<GetObjectOutput>();
        final testOnDoneException = Exception('some exception');
        var onDoneHasBeenCalled = false;
        late StorageTransferState finalState;

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
          bucket: testBucket,
          path: const StoragePath.fromString('public/$testKey'),
          pathResolver: TestPathResolver(),
          options: defaultTestOptions,
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
        expect(finalState, StorageTransferState.failure);
      });

      group('download result', () {
        const testBodyBytes = [101, 102];
        const testMetadata = {
          'filename': '1.jpg',
          'group': 'GroupA',
        };
        final testItems = [
          GetPropertiesTestItem(
            description:
                'should include metadata when getPropertiesValue is set to true',
            getPropertiesValue: true,
            expectedS3Item: S3Item(path: testKey, metadata: testMetadata),
          ),
          GetPropertiesTestItem(
            description:
                'should NOT include metadata when getPropertiesValue is set to false',
            getPropertiesValue: false,
            expectedS3Item: S3Item(path: testKey, metadata: {}),
          ),
        ];

        setUp(() {
          final testGetObjectOutput = GetObjectOutput(
            contentLength: Int64(testBodyBytes.length),
            body: Stream.value(testBodyBytes),
            metadata: testMetadata,
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
        });

        for (final item in testItems) {
          test(item.description, () async {
            final downloadTask = S3DownloadTask(
              s3Client: s3Client,
              defaultS3ClientConfig: defaultS3ClientConfig,
              bucket: testBucket,
              path: const StoragePath.fromString('public/$testKey'),
              pathResolver: TestPathResolver(),
              options: StorageDownloadDataOptions(
                pluginOptions: S3DownloadDataPluginOptions(
                  getProperties: item.getPropertiesValue,
                ),
              ),
            );

            unawaited(downloadTask.start());

            final result = await downloadTask.result;
            expect(result.metadata, item.expectedS3Item.metadata);
          });
        }
      });
    });
  });
}
