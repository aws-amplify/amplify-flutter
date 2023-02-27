// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:typed_data';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart' as s3;
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/transfer_record.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/transfer.dart'
    as transfer;
import 'package:mocktail/mocktail.dart';
import 'package:smithy/smithy.dart' as smithy;
import 'package:smithy_aws/smithy_aws.dart' as smithy_aws;
import 'package:test/test.dart';

import '../../test_utils/mocks.dart';
import '../../test_utils/test_custom_prefix_resolver.dart';

void main() {
  group('S3UploadTask', () {
    late s3.S3Client s3Client;
    late AWSLogger logger;
    late transfer.TransferDatabase transferDatabase;
    const testBucket = 'fake-bucket';
    const defaultS3ClientConfig = smithy_aws.S3ClientConfig();
    final testPrefixResolver = TestCustomPrefixResolver();

    setUpAll(() {
      s3Client = MockS3Client();
      logger = MockAWSLogger();
      transferDatabase = MockTransferDatabase();

      registerFallbackValue(
        s3.PutObjectRequest(bucket: 'fake bucket', key: 'dummy key'),
      );
      registerFallbackValue(
        s3.HeadObjectRequest(bucket: 'fake bucket', key: 'dummy key'),
      );

      registerFallbackValue(
        s3.CreateMultipartUploadRequest(
          bucket: 'fake bucket',
          key: 'dummy key',
        ),
      );

      registerFallbackValue(
        s3.UploadPartRequest(
          bucket: 'fake bucket',
          key: 'dummy key',
          uploadId: 'uploadId',
        ),
      );

      registerFallbackValue(
        s3.CompleteMultipartUploadRequest(
          bucket: 'fake bucket',
          key: 'dummy key',
          uploadId: 'uploadId',
        ),
      );

      registerFallbackValue(
        s3.AbortMultipartUploadRequest(
          bucket: 'fake bucket',
          key: 'dummy key',
          uploadId: 'uploadId',
        ),
      );

      registerFallbackValue(
        TransferRecord(
          uploadId: 'uploadId',
          objectKey: 'dummy key',
          createdAt: DateTime(2022, 1, 1),
        ),
      );

      registerFallbackValue(const smithy_aws.S3ClientConfig());
    });

    group('Uploading S3DataPayload', () {
      final testDataPayload = S3DataPayload.string('Upload me please!');
      final testDataPayloadBytes = S3DataPayload.bytes([101, 102]);
      const testKey = 'object-upload-to';

      test('should invoke S3Client.putObject API with expected parameters',
          () async {
        const testUploadDataOptions = S3UploadDataOptions(
          accessLevel: StorageAccessLevel.private,
        );
        final testPutObjectOutput = s3.PutObjectOutput();
        final smithyOperation = MockSmithyOperation<s3.PutObjectOutput>();

        when(
          () => smithyOperation.result,
        ).thenAnswer((_) async => testPutObjectOutput);
        when(() => smithyOperation.requestProgress)
            .thenAnswer((_) => Stream.value(1));

        when(
          () => s3Client.putObject(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => smithyOperation);

        final uploadDataTask = S3UploadTask.fromDataPayload(
          testDataPayload,
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testUploadDataOptions,
          logger: logger,
          transferDatabase: transferDatabase,
        );

        unawaited(uploadDataTask.start());

        final result = await uploadDataTask.result;

        expect(result.key, testKey);

        final capturedRequest = verify(
          () => s3Client.putObject(
            captureAny<s3.PutObjectRequest>(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).captured.last;

        expect(capturedRequest is s3.PutObjectRequest, isTrue);
        final request = capturedRequest as s3.PutObjectRequest;
        expect(request.bucket, testBucket);
        expect(
          request.key,
          '${await testPrefixResolver.resolvePrefix(
            accessLevel: testUploadDataOptions.accessLevel,
          )}$testKey',
        );
        expect(request.body, testDataPayload);
      });

      test(
          'should invoke S3Client.putObject API with correct useAcceleration parameters',
          () async {
        const testUploadDataOptions = S3UploadDataOptions(
          accessLevel: StorageAccessLevel.private,
          useAccelerateEndpoint: true,
        );
        final testPutObjectOutput = s3.PutObjectOutput();
        final smithyOperation = MockSmithyOperation<s3.PutObjectOutput>();

        when(
          () => smithyOperation.result,
        ).thenAnswer((_) async => testPutObjectOutput);
        when(() => smithyOperation.requestProgress)
            .thenAnswer((_) => Stream.value(1));

        when(
          () => s3Client.putObject(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => smithyOperation);

        final uploadDataTask = S3UploadTask.fromDataPayload(
          testDataPayload,
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testUploadDataOptions,
          logger: logger,
          transferDatabase: transferDatabase,
        );

        unawaited(uploadDataTask.start());

        await uploadDataTask.result;

        final capturedS3ClientConfig = verify(
          () => s3Client.putObject(
            any(),
            s3ClientConfig:
                captureAny<smithy_aws.S3ClientConfig>(named: 's3ClientConfig'),
          ),
        ).captured.last;

        expect(
          capturedS3ClientConfig,
          isA<smithy_aws.S3ClientConfig>()
              .having((o) => o.useAcceleration, 'useAcceleration', true),
        );
      });

      test(
        'should use fallback contentType header when contentType of the data'
        ' payload is not determinable',
        () async {
          const testUploadDataOptions = S3UploadDataOptions(
            accessLevel: StorageAccessLevel.private,
          );
          final testPutObjectOutput = s3.PutObjectOutput();
          final smithyOperation = MockSmithyOperation<s3.PutObjectOutput>();

          when(
            () => smithyOperation.result,
          ).thenAnswer((_) async => testPutObjectOutput);
          when(() => smithyOperation.requestProgress)
              .thenAnswer((_) => Stream.value(1));
          when(
            () => s3Client.putObject(
              any(),
              s3ClientConfig: any(named: 's3ClientConfig'),
            ),
          ).thenAnswer((_) => smithyOperation);

          final uploadDataTask = S3UploadTask.fromDataPayload(
            testDataPayloadBytes,
            s3Client: s3Client,
            defaultS3ClientConfig: defaultS3ClientConfig,
            prefixResolver: testPrefixResolver,
            bucket: testBucket,
            key: testKey,
            options: testUploadDataOptions,
            logger: logger,
            transferDatabase: transferDatabase,
          );

          unawaited(uploadDataTask.start());

          await uploadDataTask.result;

          final capturedRequest = verify(
            () => s3Client.putObject(
              captureAny<s3.PutObjectRequest>(),
              s3ClientConfig: any(named: 's3ClientConfig'),
            ),
          ).captured.last;

          expect(
            capturedRequest,
            isA<s3.PutObjectRequest>().having(
              (o) => o.contentType,
              'contentType',
              fallbackContentType,
            ),
          );
        },
      );

      test(
          'should invoke S3Client.headObject API with correct parameters when getProperties is set to true in the options',
          () async {
        const testUploadDataOptions = S3UploadDataOptions(
          accessLevel: StorageAccessLevel.private,
          getProperties: true,
        );
        final testPutObjectOutput = s3.PutObjectOutput();
        final putSmithyOperation = MockSmithyOperation<s3.PutObjectOutput>();
        final testHeadObjectOutput = s3.HeadObjectOutput();
        final headSmithyOperation = MockSmithyOperation<s3.HeadObjectOutput>();

        when(
          () => putSmithyOperation.result,
        ).thenAnswer((_) async => testPutObjectOutput);
        when(
          () => putSmithyOperation.requestProgress,
        ).thenAnswer((_) => Stream.value(1));

        when(
          () => headSmithyOperation.result,
        ).thenAnswer((_) async => testHeadObjectOutput);

        when(
          () => s3Client.putObject(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => putSmithyOperation);

        when(
          () => s3Client.headObject(any()),
        ).thenAnswer((_) => headSmithyOperation);

        final uploadDataTask = S3UploadTask.fromDataPayload(
          testDataPayload,
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testUploadDataOptions,
          logger: logger,
          transferDatabase: transferDatabase,
        );

        unawaited(uploadDataTask.start());
        await uploadDataTask.result;

        final capturedRequest = verify(
          () => s3Client.headObject(captureAny<s3.HeadObjectRequest>()),
        ).captured.last;

        expect(capturedRequest is s3.HeadObjectRequest, isTrue);
        final request = capturedRequest as s3.HeadObjectRequest;
        expect(request.bucket, testBucket);
        expect(
          request.key,
          '${await testPrefixResolver.resolvePrefix(
            accessLevel: testUploadDataOptions.accessLevel,
          )}$testKey',
        );
      });

      test('should throw S3Exception when prefix resolving fails', () {
        const testUploadDataOptions = S3UploadDataOptions(
          accessLevel: StorageAccessLevel.private,
        );
        final prefixResolverThrowsException =
            TestCustomPrefixResolverThrowsException();

        final uploadDataTask = S3UploadTask.fromDataPayload(
          testDataPayload,
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: prefixResolverThrowsException,
          bucket: testBucket,
          key: testKey,
          options: testUploadDataOptions,
          logger: logger,
          transferDatabase: transferDatabase,
        );

        unawaited(uploadDataTask.start());
        expect(uploadDataTask.result, throwsA(isA<S3Exception>()));
      });

      test(
          'should throw StorageAccessDeniedException when S3Client.putObject'
          ' returned UnknownSmithyHttpException with status code 403', () {
        const testUploadDataOptions = S3UploadDataOptions(
          accessLevel: StorageAccessLevel.private,
        );
        const testException = smithy.UnknownSmithyHttpException(
          statusCode: 403,
          body: 'Access denied!',
        );

        when(
          () => s3Client.putObject(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenThrow(testException);

        final uploadDataTask = S3UploadTask.fromDataPayload(
          testDataPayload,
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testUploadDataOptions,
          logger: logger,
          transferDatabase: transferDatabase,
        );

        unawaited(uploadDataTask.start());

        expect(
          uploadDataTask.result,
          throwsA(isA<StorageAccessDeniedException>()),
        );
      });

      test(
          'cancel() should cancel underlying put object request and throw a S3Exception',
          () async {
        const testUploadDataOptions = S3UploadDataOptions(
          accessLevel: StorageAccessLevel.private,
          getProperties: true,
        );
        final putSmithyOperation = MockSmithyOperation<s3.PutObjectOutput>();

        final completer = Completer<void>();
        when(
          () => putSmithyOperation.result,
        ).thenAnswer((_) async {
          await completer.future;
          throw const CancellationException();
        });
        when(
          putSmithyOperation.cancel,
        ).thenAnswer((_) async {});
        when(() => putSmithyOperation.requestProgress)
            .thenAnswer((_) => Stream.value(1));

        when(
          () => s3Client.putObject(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => putSmithyOperation);

        final uploadDataTask = S3UploadTask.fromDataPayload(
          testDataPayload,
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testUploadDataOptions,
          logger: logger,
          transferDatabase: transferDatabase,
        );

        unawaited(uploadDataTask.start());
        await uploadDataTask.cancel();

        completer.complete();

        await expectLater(uploadDataTask.result, throwsA(isA<S3Exception>()));
        verify(putSmithyOperation.cancel).called(1);
      });
    });

    group('Uploading AWSFile (<=5MB) - putObject', () {
      final testBytes = [101, 102, 103];
      final testLocalFile = AWSFile.fromStream(
        Stream.value(testBytes),
        size: testBytes.length,
        contentType: 'image/jpeg',
      );
      const testKey = 'object-upload-to';

      test('should invoke S3Client.putObject with expected parameters',
          () async {
        const testUploadDataOptions = S3UploadDataOptions(
          accessLevel: StorageAccessLevel.private,
        );
        final testPutObjectOutput = s3.PutObjectOutput();
        final smithyOperation = MockSmithyOperation<s3.PutObjectOutput>();

        when(
          () => smithyOperation.result,
        ).thenAnswer((_) async => testPutObjectOutput);
        when(() => smithyOperation.requestProgress)
            .thenAnswer((_) => Stream.value(1));

        when(
          () => s3Client.putObject(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => smithyOperation);

        final uploadDataTask = S3UploadTask.fromAWSFile(
          testLocalFile,
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testUploadDataOptions,
          logger: logger,
          transferDatabase: transferDatabase,
        );

        unawaited(uploadDataTask.start());

        final result = await uploadDataTask.result;

        expect(result.key, testKey);

        final capturedRequest = verify(
          () => s3Client.putObject(
            captureAny<s3.PutObjectRequest>(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).captured.last;

        expect(capturedRequest is s3.PutObjectRequest, isTrue);
        final request = capturedRequest as s3.PutObjectRequest;
        expect(request.bucket, testBucket);
        expect(
          request.key,
          '${await testPrefixResolver.resolvePrefix(
            accessLevel: testUploadDataOptions.accessLevel,
          )}$testKey',
        );
        expect(request.contentType, await testLocalFile.contentType);
        expect(await request.body?.toList(), equals([testBytes]));
      });

      test(
          'should invoke S3Client.putObject with correct useAcceleration parameter',
          () async {
        const testUploadDataOptions = S3UploadDataOptions(
          accessLevel: StorageAccessLevel.private,
          useAccelerateEndpoint: true,
        );
        final testPutObjectOutput = s3.PutObjectOutput();
        final smithyOperation = MockSmithyOperation<s3.PutObjectOutput>();

        when(
          () => smithyOperation.result,
        ).thenAnswer((_) async => testPutObjectOutput);
        when(() => smithyOperation.requestProgress)
            .thenAnswer((_) => Stream.value(1));

        when(
          () => s3Client.putObject(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => smithyOperation);

        final uploadDataTask = S3UploadTask.fromAWSFile(
          testLocalFile,
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testUploadDataOptions,
          logger: logger,
          transferDatabase: transferDatabase,
        );

        unawaited(uploadDataTask.start());

        await uploadDataTask.result;

        final capturedS3ClientConfig = verify(
          () => s3Client.putObject(
            any(),
            s3ClientConfig:
                captureAny<smithy_aws.S3ClientConfig>(named: 's3ClientConfig'),
          ),
        ).captured.last;

        expect(
          capturedS3ClientConfig,
          isA<smithy_aws.S3ClientConfig>()
              .having((o) => o.useAcceleration, 'useAcceleration', true),
        );
      });

      test(
          'cancel() should cancel underlying put object request and throw a S3Exception',
          () async {
        const testUploadDataOptions = S3UploadDataOptions(
          accessLevel: StorageAccessLevel.private,
          getProperties: true,
        );
        final putSmithyOperation = MockSmithyOperation<s3.PutObjectOutput>();

        final completer = Completer<void>();
        when(
          () => putSmithyOperation.result,
        ).thenAnswer((_) async {
          await completer.future;
          throw const CancellationException();
        });
        when(
          putSmithyOperation.cancel,
        ).thenAnswer((_) async {});
        when(() => putSmithyOperation.requestProgress)
            .thenAnswer((_) => Stream.value(1));

        when(
          () => s3Client.putObject(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => putSmithyOperation);

        final uploadDataTask = S3UploadTask.fromAWSFile(
          testLocalFile,
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testUploadDataOptions,
          logger: logger,
          transferDatabase: transferDatabase,
        );

        unawaited(uploadDataTask.start());
        await uploadDataTask.cancel();

        completer.complete();

        await expectLater(uploadDataTask.result, throwsA(isA<S3Exception>()));
        verify(putSmithyOperation.cancel).called(1);
      });

      test('Emitting transferred bytes for uploading progress', () async {
        const mockEmittedBytes = [1, 2, 3];
        final completer = Completer<void>();

        const testUploadDataOptions = S3UploadDataOptions(
          accessLevel: StorageAccessLevel.private,
        );

        final putSmithyOperation = MockSmithyOperation<s3.PutObjectOutput>();
        final testPutObjectOutput = s3.PutObjectOutput();
        when(
          () => putSmithyOperation.result,
        ).thenAnswer((_) async {
          await completer.future;
          return testPutObjectOutput;
        });
        when(
          putSmithyOperation.cancel,
        ).thenAnswer((_) async {});
        when(() => putSmithyOperation.requestProgress).thenAnswer((_) async* {
          for (final num in mockEmittedBytes) {
            yield num;
          }
          completer.complete();
        });

        when(
          () => s3Client.putObject(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => putSmithyOperation);

        final emittedTransferredBytes = <int>[];

        final uploadDataTask = S3UploadTask.fromAWSFile(
          testLocalFile,
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testUploadDataOptions,
          logger: logger,
          transferDatabase: transferDatabase,
          onProgress: (event) {
            emittedTransferredBytes.add(event.transferredBytes);
          },
        );
        unawaited(uploadDataTask.start());
        await uploadDataTask.result;
        expect(emittedTransferredBytes, containsAllInOrder(mockEmittedBytes));
      });
    });

    group('Uploading AWSFile (> 5MB)', () {
      final testBytes = Uint8List(11 * 1024 * 1024); // 11MB
      late Stream<List<int>> testFileReadStream;
      late AWSFile testLocalFile;
      const testKey = 'object-upload-to';

      setUp(() {
        testFileReadStream = _getBytesStream(testBytes);
        testLocalFile = AWSFile.fromStream(
          testFileReadStream,
          size: testBytes.length,
          contentType: 'image/png',
        );
      });

      test(
          'should invoke corresponding S3Client APIs with in a happy path to complete the upload',
          () async {
        final receivedState = <S3TransferState>[];
        void onProgress(S3TransferProgress progress) {
          receivedState.add(progress.state);
        }

        const testUploadDataOptions = S3UploadDataOptions(
          accessLevel: StorageAccessLevel.protected,
          getProperties: true,
          metadata: {'filename': 'png.png'},
        );
        const testMultipartUploadId = 'awesome-upload';

        final testCreateMultipartUploadOutput = s3.CreateMultipartUploadOutput(
          uploadId: testMultipartUploadId,
        );
        final createMultipartUploadSmithyOperation =
            MockSmithyOperation<s3.CreateMultipartUploadOutput>();

        when(
          () => createMultipartUploadSmithyOperation.result,
        ).thenAnswer((_) async => testCreateMultipartUploadOutput);

        when(
          () => s3Client.createMultipartUpload(any()),
        ).thenAnswer((_) => createMultipartUploadSmithyOperation);

        when(
          () => transferDatabase.insertTransferRecord(any<TransferRecord>()),
        ).thenAnswer((_) async => '1');

        final testUploadPartOutput1 = s3.UploadPartOutput(eTag: 'eTag-part-1');
        final testUploadPartOutput2 = s3.UploadPartOutput(eTag: 'eTag-part-2');
        final testUploadPartOutput3 = s3.UploadPartOutput(eTag: 'eTag-part-3');
        final uploadPartSmithyOperation1 =
            MockSmithyOperation<s3.UploadPartOutput>();
        final uploadPartSmithyOperation2 =
            MockSmithyOperation<s3.UploadPartOutput>();
        final uploadPartSmithyOperation3 =
            MockSmithyOperation<s3.UploadPartOutput>();

        when(
          () => uploadPartSmithyOperation1.result,
        ).thenAnswer((_) async => testUploadPartOutput1);
        when(
          () => uploadPartSmithyOperation2.result,
        ).thenAnswer((_) async => testUploadPartOutput2);
        when(
          () => uploadPartSmithyOperation3.result,
        ).thenAnswer((_) async => testUploadPartOutput3);

        when(
          () => s3Client.uploadPart(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((invocation) {
          final request =
              invocation.positionalArguments.first as s3.UploadPartRequest;

          switch (request.partNumber) {
            case 1:
              return uploadPartSmithyOperation1;
            case 2:
              return uploadPartSmithyOperation2;
            case 3:
              return uploadPartSmithyOperation3;
          }

          throw Exception('this is not going to happen in this test setup');
        });

        final testCompleteMultipartUploadOutput =
            s3.CompleteMultipartUploadOutput();
        final completeMultipartUploadSmithyOperation =
            MockSmithyOperation<s3.CompleteMultipartUploadOutput>();

        when(
          () => completeMultipartUploadSmithyOperation.result,
        ).thenAnswer((_) async => testCompleteMultipartUploadOutput);

        when(
          () => s3Client.completeMultipartUpload(any()),
        ).thenAnswer((_) => completeMultipartUploadSmithyOperation);

        when(
          () => transferDatabase.deleteTransferRecords(any()),
        ).thenAnswer((_) async => 1);

        final testHeadObjectOutput = s3.HeadObjectOutput();
        final headSmithyOperation = MockSmithyOperation<s3.HeadObjectOutput>();

        when(
          () => headSmithyOperation.result,
        ).thenAnswer((_) async => testHeadObjectOutput);

        when(
          () => s3Client.headObject(any()),
        ).thenAnswer((_) => headSmithyOperation);

        final uploadTask = S3UploadTask.fromAWSFile(
          testLocalFile,
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testUploadDataOptions,
          logger: logger,
          transferDatabase: transferDatabase,
          onProgress: onProgress,
        );

        unawaited(uploadTask.start());

        await uploadTask.result;

        // verify generated CreateMultipartUploadRequest
        final capturedCreateMultipartUploadRequest = verify(
          () => s3Client.createMultipartUpload(
            captureAny<s3.CreateMultipartUploadRequest>(),
          ),
        ).captured.last;
        expect(
          capturedCreateMultipartUploadRequest,
          isA<s3.CreateMultipartUploadRequest>(),
        );
        final createMultipartUploadRequest =
            capturedCreateMultipartUploadRequest
                as s3.CreateMultipartUploadRequest;
        expect(createMultipartUploadRequest.bucket, testBucket);
        expect(
          createMultipartUploadRequest.contentType,
          await testLocalFile.contentType,
        );
        expect(
          createMultipartUploadRequest.key,
          '${await testPrefixResolver.resolvePrefix(
            accessLevel: testUploadDataOptions.accessLevel,
          )}$testKey',
        );
        expect(
          capturedCreateMultipartUploadRequest.metadata?['filename'],
          testUploadDataOptions.metadata?['filename'],
        );
        final capturedTransferDBInsertParam = verify(
          () => transferDatabase.insertTransferRecord(
            captureAny<TransferRecord>(),
          ),
        ).captured.last;
        expect(
          capturedTransferDBInsertParam,
          isA<TransferRecord>().having(
            (o) => o.uploadId,
            'uploadId',
            testMultipartUploadId,
          ),
        );

        // verify uploadPart calls
        final uploadPartVerification = verify(
          () => s3Client.uploadPart(
            captureAny<s3.UploadPartRequest>(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        )..called(3); // 11MB file creates 3 upload part requests
        final capturedUploadPartRequests = uploadPartVerification.captured;
        final partNumbers = <int>[];
        final bytes = BytesBuilder();

        await Future.forEach(capturedUploadPartRequests,
            (capturedRequest) async {
          expect(capturedRequest, isA<s3.UploadPartRequest>());
          final request = capturedRequest as s3.UploadPartRequest;
          expect(request.bucket, testBucket);
          expect(
            request.key,
            '${await testPrefixResolver.resolvePrefix(
              accessLevel: testUploadDataOptions.accessLevel,
            )}$testKey',
          );
          partNumbers.add(request.partNumber);
          bytes.add(
            await request.body!.toList().then(
                  (collectedBytes) =>
                      collectedBytes.expand((bytes) => bytes).toList(),
                ),
          );
        });
        expect(bytes.takeBytes(), equals(testBytes));
        expect(partNumbers, equals([1, 2, 3]));
        expect(
          receivedState,
          List.generate(4, (_) => S3TransferState.inProgress)
            ..add(S3TransferState.success),
        ); // upload start + 3 parts

        // verify the CompleteMultipartUpload request
        final capturedCompleteMultipartUploadRequest = verify(
          () => s3Client.completeMultipartUpload(
            captureAny<s3.CompleteMultipartUploadRequest>(),
          ),
        ).captured.last;
        expect(
          capturedCompleteMultipartUploadRequest,
          isA<s3.CompleteMultipartUploadRequest>(),
        );
        final completeMultipartUploadRequest =
            capturedCompleteMultipartUploadRequest
                as s3.CompleteMultipartUploadRequest;
        expect(completeMultipartUploadRequest.bucket, testBucket);
        expect(
          completeMultipartUploadRequest.key,
          '${await testPrefixResolver.resolvePrefix(
            accessLevel: testUploadDataOptions.accessLevel,
          )}$testKey',
        );

        final capturedTransferDBDeleteParam = verify(
          () => transferDatabase.deleteTransferRecords(
            captureAny(),
          ),
        ).captured.last;
        expect(
          capturedTransferDBDeleteParam,
          testMultipartUploadId,
        );
      });

      test(
          'should invoke S3Client uploadPart API with correct useAcceleration parameter',
          () async {
        final receivedState = <S3TransferState>[];
        void onProgress(S3TransferProgress progress) {
          receivedState.add(progress.state);
        }

        const testUploadDataOptions = S3UploadDataOptions(
          accessLevel: StorageAccessLevel.protected,
          useAccelerateEndpoint: true,
        );

        final testCreateMultipartUploadOutput = s3.CreateMultipartUploadOutput(
          uploadId: '123',
        );
        final createMultipartUploadSmithyOperation =
            MockSmithyOperation<s3.CreateMultipartUploadOutput>();

        when(
          () => createMultipartUploadSmithyOperation.result,
        ).thenAnswer((_) async => testCreateMultipartUploadOutput);

        when(
          () => s3Client.createMultipartUpload(any()),
        ).thenAnswer((_) => createMultipartUploadSmithyOperation);

        when(
          () => transferDatabase.insertTransferRecord(any()),
        ).thenAnswer((_) async => '1');

        final testUploadPartOutput = s3.UploadPartOutput(eTag: 'eTag');
        final uploadPartSmithyOperation =
            MockSmithyOperation<s3.UploadPartOutput>();

        when(
          () => uploadPartSmithyOperation.result,
        ).thenAnswer((_) async => testUploadPartOutput);

        when(
          () => s3Client.uploadPart(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => uploadPartSmithyOperation);

        final testCompleteMultipartUploadOutput =
            s3.CompleteMultipartUploadOutput();
        final completeMultipartUploadSmithyOperation =
            MockSmithyOperation<s3.CompleteMultipartUploadOutput>();

        when(
          () => completeMultipartUploadSmithyOperation.result,
        ).thenAnswer((_) async => testCompleteMultipartUploadOutput);

        when(
          () => s3Client.completeMultipartUpload(any()),
        ).thenAnswer((_) => completeMultipartUploadSmithyOperation);

        when(
          () => transferDatabase.deleteTransferRecords(any()),
        ).thenAnswer((_) async => 1);

        final uploadTask = S3UploadTask.fromAWSFile(
          testLocalFile,
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testUploadDataOptions,
          logger: logger,
          transferDatabase: transferDatabase,
          onProgress: onProgress,
        );

        unawaited(uploadTask.start());

        await uploadTask.result;

        // verify uploadPart calls
        final uploadPartVerification = verify(
          () => s3Client.uploadPart(
            any(),
            s3ClientConfig:
                captureAny<smithy_aws.S3ClientConfig>(named: 's3ClientConfig'),
          ),
        )..called(3); // 11MB file creates 3 upload part requests

        final capturedS3ClientConfigs = uploadPartVerification.captured;

        for (final s3ClientConfig in capturedS3ClientConfigs) {
          expect(
            s3ClientConfig,
            isA<smithy_aws.S3ClientConfig>()
                .having((o) => o.useAcceleration, 'useAcceleration', true),
          );
        }
      });

      test(
          'should use fallback contentType header when contentType of the data'
          ' payload is not determinable', () async {
        final testLocalFileWithoutContentType = AWSFile.fromData(testBytes);
        const testUploadDataOptions = S3UploadDataOptions(
          accessLevel: StorageAccessLevel.protected,
        );
        const testMultipartUploadId = 'awesome-upload';

        final testCreateMultipartUploadOutput = s3.CreateMultipartUploadOutput(
          uploadId: testMultipartUploadId,
        );
        final createMultipartUploadSmithyOperation =
            MockSmithyOperation<s3.CreateMultipartUploadOutput>();

        when(
          () => createMultipartUploadSmithyOperation.result,
        ).thenAnswer((_) async => testCreateMultipartUploadOutput);

        when(
          () => s3Client.createMultipartUpload(any()),
        ).thenAnswer((_) => createMultipartUploadSmithyOperation);

        when(
          () => transferDatabase.insertTransferRecord(any()),
        ).thenAnswer((_) async => '1');

        final testUploadPartOutput = s3.UploadPartOutput(eTag: 'eTag-part-1');
        final uploadPartSmithyOperation =
            MockSmithyOperation<s3.UploadPartOutput>();

        when(
          () => uploadPartSmithyOperation.result,
        ).thenAnswer((_) async => testUploadPartOutput);

        when(
          () => s3Client.uploadPart(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((invocation) => uploadPartSmithyOperation);

        final testCompleteMultipartUploadOutput =
            s3.CompleteMultipartUploadOutput();
        final completeMultipartUploadSmithyOperation =
            MockSmithyOperation<s3.CompleteMultipartUploadOutput>();

        when(
          () => completeMultipartUploadSmithyOperation.result,
        ).thenAnswer((_) async => testCompleteMultipartUploadOutput);

        when(
          () => s3Client.completeMultipartUpload(any()),
        ).thenAnswer((_) => completeMultipartUploadSmithyOperation);

        when(
          () => transferDatabase.deleteTransferRecords(any()),
        ).thenAnswer((_) async => 1);

        final uploadTask = S3UploadTask.fromAWSFile(
          testLocalFileWithoutContentType,
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: testUploadDataOptions,
          logger: logger,
          transferDatabase: transferDatabase,
        );

        unawaited(uploadTask.start());

        await uploadTask.result;

        // verify generated CreateMultipartUploadRequest
        final capturedCreateMultipartUploadRequest = verify(
          () => s3Client.createMultipartUpload(
            captureAny<s3.CreateMultipartUploadRequest>(),
          ),
        ).captured.last;
        expect(
          capturedCreateMultipartUploadRequest,
          isA<s3.CreateMultipartUploadRequest>().having(
            (o) => o.contentType,
            'contentType',
            fallbackContentType,
          ),
        );
      });

      test(
          'should throw exception if the file to be upload is too large to initiate a multipart upload',
          () async {
        late S3TransferState finalState;
        final testBadFile =
            AWSFile.fromStream(Stream.value([]), size: 10001 * 5 * 1024 * 1024);
        final uploadTask = S3UploadTask.fromAWSFile(
          testBadFile,
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: const S3UploadDataOptions(),
          logger: logger,
          transferDatabase: transferDatabase,
          onProgress: (progress) {
            finalState = progress.state;
          },
        );

        unawaited(uploadTask.start());

        await expectLater(
          uploadTask.result,
          throwsA(isA<S3Exception>()),
        );
        expect(finalState, S3TransferState.failure);
      });

      test(
          'should complete with StorageAccessDeniedException when CreateMultipartUploadRequest'
          ' returned UnknownSmithyHttpException with status code 403',
          () async {
        late S3TransferState finalState;
        final uploadTask = S3UploadTask.fromAWSFile(
          testLocalFile,
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: const S3UploadDataOptions(),
          logger: logger,
          transferDatabase: transferDatabase,
          onProgress: (progress) {
            finalState = progress.state;
          },
        );

        const testException = smithy.UnknownSmithyHttpException(
          statusCode: 403,
          body: 'Access denied!',
        );

        when(
          () => s3Client.createMultipartUpload(any()),
        ).thenThrow(testException);

        unawaited(uploadTask.start());

        await expectLater(
          uploadTask.result,
          throwsA(
            isA<StorageAccessDeniedException>().having(
              (o) => o.underlyingException,
              'underlyingException',
              testException,
            ),
          ),
        );

        expect(finalState, S3TransferState.failure);
      });

      test(
          'should complete with error when CreateMultipartUploadRequest does NOT return a valid uploadId',
          () async {
        late S3TransferState finalState;
        final uploadTask = S3UploadTask.fromAWSFile(
          testLocalFile,
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: const S3UploadDataOptions(),
          logger: logger,
          transferDatabase: transferDatabase,
          onProgress: (progress) {
            finalState = progress.state;
          },
        );

        final testCreateMultipartUploadOutput = s3.CreateMultipartUploadOutput(
          uploadId: null, // response should always contain valid uploadId
        );
        final createMultipartUploadSmithyOperation =
            MockSmithyOperation<s3.CreateMultipartUploadOutput>();

        when(
          () => createMultipartUploadSmithyOperation.result,
        ).thenAnswer((_) async => testCreateMultipartUploadOutput);

        when(
          () => s3Client.createMultipartUpload(any()),
        ).thenAnswer((_) => createMultipartUploadSmithyOperation);

        unawaited(uploadTask.start());

        await expectLater(
          uploadTask.result,
          throwsA(isA<S3Exception>()),
        );
        expect(finalState, S3TransferState.failure);
      });

      test(
          'should complete with StorageAccessDeniedException when'
          ' CompleteMultipartUploadRequest fails (should not happen just in case)',
          () async {
        late S3TransferState finalState;
        final uploadTask = S3UploadTask.fromAWSFile(
          testLocalFile,
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: const S3UploadDataOptions(),
          logger: logger,
          transferDatabase: transferDatabase,
          onProgress: (progress) {
            finalState = progress.state;
          },
        );

        final testCreateMultipartUploadOutput = s3.CreateMultipartUploadOutput(
          uploadId: 'some-upload-id',
        );
        final createMultipartUploadSmithyOperation =
            MockSmithyOperation<s3.CreateMultipartUploadOutput>();

        when(
          () => createMultipartUploadSmithyOperation.result,
        ).thenAnswer((_) async => testCreateMultipartUploadOutput);

        when(
          () => s3Client.createMultipartUpload(any()),
        ).thenAnswer((_) => createMultipartUploadSmithyOperation);

        when(
          () => transferDatabase.insertTransferRecord(any()),
        ).thenAnswer((_) async => '1');

        final testUploadPartOutput = s3.UploadPartOutput(eTag: 'eTag-part-1');
        final uploadPartSmithyOperation =
            MockSmithyOperation<s3.UploadPartOutput>();

        when(
          () => uploadPartSmithyOperation.result,
        ).thenAnswer((_) async => testUploadPartOutput);

        when(
          () => s3Client.uploadPart(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => uploadPartSmithyOperation);

        const testException = smithy.UnknownSmithyHttpException(
          statusCode: 403,
          body: 'Access denied!',
        );
        final completeMultipartUploadSmithyOperation =
            MockSmithyOperation<s3.CompleteMultipartUploadOutput>();

        when(
          () => completeMultipartUploadSmithyOperation.result,
        ).thenThrow(testException);
        when(
          () => s3Client.completeMultipartUpload(any()),
        ).thenAnswer((_) => completeMultipartUploadSmithyOperation);

        unawaited(uploadTask.start());

        await expectLater(
          uploadTask.result,
          throwsA(
            isA<StorageAccessDeniedException>().having(
              (o) => o.underlyingException,
              'underlyingException',
              testException,
            ),
          ),
        );
        expect(finalState, S3TransferState.failure);
      });

      test(
          'should terminate multipart upload when a UploadPartRequest fails due to 403'
          ' and should complete with StorageAccessDeniedException', () async {
        late S3TransferState finalState;
        final uploadTask = S3UploadTask.fromAWSFile(
          testLocalFile,
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: const S3UploadDataOptions(),
          logger: logger,
          transferDatabase: transferDatabase,
          onProgress: (progress) {
            finalState = progress.state;
          },
        );
        const testMultipartUploadId = 'some-upload-id';

        final testCreateMultipartUploadOutput = s3.CreateMultipartUploadOutput(
          uploadId: testMultipartUploadId,
        );
        final createMultipartUploadSmithyOperation =
            MockSmithyOperation<s3.CreateMultipartUploadOutput>();

        when(
          () => createMultipartUploadSmithyOperation.result,
        ).thenAnswer((_) async => testCreateMultipartUploadOutput);
        when(
          () => s3Client.createMultipartUpload(any()),
        ).thenAnswer((_) => createMultipartUploadSmithyOperation);

        when(
          () => transferDatabase.insertTransferRecord(any()),
        ).thenAnswer((_) async => '1');

        const testException = smithy.UnknownSmithyHttpException(
          statusCode: 403,
          body: 'Access denied!',
        );
        when(
          () => s3Client.uploadPart(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenThrow(testException);

        unawaited(uploadTask.start());

        final testAbortMultipartUploadOutput = s3.AbortMultipartUploadOutput();
        final abortMultipartUploadSmithyOperation =
            MockSmithyOperation<s3.AbortMultipartUploadOutput>();
        when(
          () => abortMultipartUploadSmithyOperation.result,
        ).thenAnswer((_) async => testAbortMultipartUploadOutput);
        when(
          () => s3Client.abortMultipartUpload(any()),
        ).thenAnswer((_) => abortMultipartUploadSmithyOperation);

        await expectLater(
          uploadTask.result,
          throwsA(
            isA<S3Exception>().having(
              (o) => o.underlyingException,
              'underlyingException',
              isA<StorageAccessDeniedException>().having(
                (o) => o.underlyingException,
                'underlyingException',
                testException,
              ),
            ),
          ),
        );

        final capturedAbortMultipartUploadRequest = verify(
          () => s3Client.abortMultipartUpload(
            captureAny<s3.AbortMultipartUploadRequest>(),
          ),
        ).captured.last;

        expect(
          capturedAbortMultipartUploadRequest,
          isA<s3.AbortMultipartUploadRequest>().having(
            (o) => o.uploadId,
            'uploadId',
            testMultipartUploadId,
          ),
        );
        expect(finalState, S3TransferState.failure);
      });

      test(
          'should terminate multipart upload when a UploadPartRequest does NOT return a valid eTag and complete with error',
          () async {
        late S3TransferState finalState;
        final uploadTask = S3UploadTask.fromAWSFile(
          testLocalFile,
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: const S3UploadDataOptions(),
          logger: logger,
          transferDatabase: transferDatabase,
          onProgress: (progress) {
            finalState = progress.state;
          },
        );
        const testMultipartUploadId = 'some-upload-id';

        final testCreateMultipartUploadOutput = s3.CreateMultipartUploadOutput(
          uploadId: testMultipartUploadId,
        );
        final createMultipartUploadSmithyOperation =
            MockSmithyOperation<s3.CreateMultipartUploadOutput>();
        when(
          () => createMultipartUploadSmithyOperation.result,
        ).thenAnswer((_) async => testCreateMultipartUploadOutput);
        when(
          () => s3Client.createMultipartUpload(any()),
        ).thenAnswer((_) => createMultipartUploadSmithyOperation);

        when(
          () => transferDatabase.insertTransferRecord(any()),
        ).thenAnswer((_) async => '1');

        final testUploadPartOutput = s3.UploadPartOutput(eTag: null);
        final uploadPartSmithyOperation =
            MockSmithyOperation<s3.UploadPartOutput>();

        when(
          () => uploadPartSmithyOperation.result,
        ).thenAnswer((_) async => testUploadPartOutput);
        when(
          () => s3Client.uploadPart(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenAnswer((_) => uploadPartSmithyOperation);

        unawaited(uploadTask.start());

        final testAbortMultipartUploadOutput = s3.AbortMultipartUploadOutput();
        final abortMultipartUploadSmithyOperation =
            MockSmithyOperation<s3.AbortMultipartUploadOutput>();
        when(
          () => abortMultipartUploadSmithyOperation.result,
        ).thenAnswer((_) async => testAbortMultipartUploadOutput);
        when(
          () => s3Client.abortMultipartUpload(any()),
        ).thenAnswer((_) => abortMultipartUploadSmithyOperation);

        await expectLater(
          uploadTask.result,
          throwsA(isA<S3Exception>()),
        );

        expect(finalState, S3TransferState.failure);
      });

      test(
          'should terminate multipart upload when a UploadPartRequest encountered NoSuchUpload error and complete with error',
          () async {
        late S3TransferState finalState;
        final uploadTask = S3UploadTask.fromAWSFile(
          testLocalFile,
          s3Client: s3Client,
          defaultS3ClientConfig: defaultS3ClientConfig,
          prefixResolver: testPrefixResolver,
          bucket: testBucket,
          key: testKey,
          options: const S3UploadDataOptions(),
          logger: logger,
          transferDatabase: transferDatabase,
          onProgress: (progress) {
            finalState = progress.state;
          },
        );
        const testMultipartUploadId = 'some-upload-id';

        final testCreateMultipartUploadOutput = s3.CreateMultipartUploadOutput(
          uploadId: testMultipartUploadId,
        );
        final createMultipartUploadSmithyOperation =
            MockSmithyOperation<s3.CreateMultipartUploadOutput>();
        when(
          () => createMultipartUploadSmithyOperation.result,
        ).thenAnswer((_) async => testCreateMultipartUploadOutput);
        when(
          () => s3Client.createMultipartUpload(any()),
        ).thenAnswer((_) => createMultipartUploadSmithyOperation);

        when(
          () => transferDatabase.insertTransferRecord(any()),
        ).thenAnswer((_) async => '1');

        final testException = s3.NoSuchUpload();
        when(
          () => s3Client.uploadPart(
            any(),
            s3ClientConfig: any(named: 's3ClientConfig'),
          ),
        ).thenThrow(testException);

        unawaited(uploadTask.start());

        final testAbortMultipartUploadOutput = s3.AbortMultipartUploadOutput();
        final abortMultipartUploadSmithyOperation =
            MockSmithyOperation<s3.AbortMultipartUploadOutput>();
        when(
          () => abortMultipartUploadSmithyOperation.result,
        ).thenAnswer((_) async => testAbortMultipartUploadOutput);
        when(
          () => s3Client.abortMultipartUpload(any()),
        ).thenAnswer((_) => abortMultipartUploadSmithyOperation);

        await expectLater(
          uploadTask.result,
          throwsA(
            isA<S3Exception>().having(
              (o) => o.underlyingException,
              'underlyingException',
              isA<S3Exception>().having(
                (o) => o.underlyingException,
                'underlyingException',
                testException,
              ),
            ),
          ),
        );
        expect(finalState, S3TransferState.failure);
      });

      group('Control APIs', () {
        final testUploadPartOutput1 = s3.UploadPartOutput(eTag: 'eTag-part-1');
        final testUploadPartOutput2 = s3.UploadPartOutput(eTag: 'eTag-part-2');
        final testUploadPartOutput3 = s3.UploadPartOutput(eTag: 'eTag-part-3');
        final uploadPartSmithyOperation1 =
            MockSmithyOperation<s3.UploadPartOutput>();
        final uploadPartSmithyOperation2 =
            MockSmithyOperation<s3.UploadPartOutput>();
        final uploadPartSmithyOperation3 =
            MockSmithyOperation<s3.UploadPartOutput>();

        setUpAll(() {
          final testCreateMultipartUploadOutput =
              s3.CreateMultipartUploadOutput(
            uploadId: 'some-upload-id',
          );
          final createMultipartUploadSmithyOperation =
              MockSmithyOperation<s3.CreateMultipartUploadOutput>();
          when(
            () => createMultipartUploadSmithyOperation.result,
          ).thenAnswer((_) async => testCreateMultipartUploadOutput);
          when(
            () => s3Client.createMultipartUpload(any()),
          ).thenAnswer((_) => createMultipartUploadSmithyOperation);

          when(
            () => transferDatabase.insertTransferRecord(any()),
          ).thenAnswer((_) async => '1');

          when(
            uploadPartSmithyOperation1.cancel,
          ).thenAnswer((_) async {});
          when(
            uploadPartSmithyOperation2.cancel,
          ).thenAnswer((_) async {});
          when(
            uploadPartSmithyOperation3.cancel,
          ).thenAnswer((_) async {});

          when(
            () => s3Client.uploadPart(
              any(),
              s3ClientConfig: any(named: 's3ClientConfig'),
            ),
          ).thenAnswer((invocation) {
            final request =
                invocation.positionalArguments.first as s3.UploadPartRequest;

            switch (request.partNumber) {
              case 1:
                return uploadPartSmithyOperation1;
              case 2:
                return uploadPartSmithyOperation2;
              case 3:
                return uploadPartSmithyOperation3;
            }

            throw Exception('this should not happen in this test');
          });

          final testCompleteMultipartUploadOutput =
              s3.CompleteMultipartUploadOutput();
          final completeMultipartUploadSmithyOperation =
              MockSmithyOperation<s3.CompleteMultipartUploadOutput>();
          when(
            () => completeMultipartUploadSmithyOperation.result,
          ).thenAnswer((_) async => testCompleteMultipartUploadOutput);
          when(
            () => s3Client.completeMultipartUpload(any()),
          ).thenAnswer((_) => completeMultipartUploadSmithyOperation);

          when(
            () => transferDatabase.deleteTransferRecords(any()),
          ).thenAnswer((_) async => 1);

          final testAbortMultipartUploadOutput =
              s3.AbortMultipartUploadOutput();
          final abortMultipartUploadSmithyOperation =
              MockSmithyOperation<s3.AbortMultipartUploadOutput>();
          when(
            () => abortMultipartUploadSmithyOperation.result,
          ).thenAnswer((_) async => testAbortMultipartUploadOutput);
          when(
            () => s3Client.abortMultipartUpload(any()),
          ).thenAnswer((_) => abortMultipartUploadSmithyOperation);
        });

        test('pause()/resume() should emit paused stat and complete the upload',
            () async {
          final receivedState = <S3TransferState>[];
          final uploadTask = S3UploadTask.fromAWSFile(
            testLocalFile,
            s3Client: s3Client,
            defaultS3ClientConfig: defaultS3ClientConfig,
            prefixResolver: testPrefixResolver,
            bucket: testBucket,
            key: testKey,
            options: const S3UploadDataOptions(),
            logger: logger,
            transferDatabase: transferDatabase,
            onProgress: (progress) {
              receivedState.add(progress.state);
            },
          );

          when(
            () => uploadPartSmithyOperation1.result,
          ).thenThrow(const CancellationException());
          when(
            () => uploadPartSmithyOperation2.result,
          ).thenThrow(const CancellationException());
          when(
            () => uploadPartSmithyOperation3.result,
          ).thenThrow(const CancellationException());

          unawaited(uploadTask.start());

          await uploadTask.pause();

          when(
            () => uploadPartSmithyOperation1.result,
          ).thenAnswer((_) async => testUploadPartOutput1);
          when(
            () => uploadPartSmithyOperation2.result,
          ).thenAnswer((_) async => testUploadPartOutput2);
          when(
            () => uploadPartSmithyOperation3.result,
          ).thenAnswer((_) async => testUploadPartOutput3);

          // add a manual delay to avoid ignoring pause state on back to back calls
          await Future<void>.delayed(const Duration(microseconds: 500));
          await uploadTask.resume();

          await uploadTask.result;
          expect(
            receivedState,
            contains(S3TransferState.paused),
          );

          verify(uploadPartSmithyOperation1.cancel).called(1);
          verify(uploadPartSmithyOperation2.cancel).called(1);
          verify(uploadPartSmithyOperation3.cancel).called(1);
        });

        test(
            'cancel() should terminate ongoing multipart upload and throw a S3Exception',
            () async {
          final receivedState = <S3TransferState>[];
          final uploadTask = S3UploadTask.fromAWSFile(
            testLocalFile,
            s3Client: s3Client,
            defaultS3ClientConfig: defaultS3ClientConfig,
            prefixResolver: testPrefixResolver,
            bucket: testBucket,
            key: testKey,
            options: const S3UploadDataOptions(),
            logger: logger,
            transferDatabase: transferDatabase,
            onProgress: (progress) {
              receivedState.add(progress.state);
            },
          );

          final completer1 = Completer<void>();
          final completer2 = Completer<void>();
          final completer3 = Completer<void>();

          when(
            () => uploadPartSmithyOperation1.result,
          ).thenAnswer((_) async {
            await completer1.future;
            throw const CancellationException();
          });
          when(
            () => uploadPartSmithyOperation2.result,
          ).thenAnswer((_) async {
            await completer2.future;
            throw const CancellationException();
          });
          when(
            () => uploadPartSmithyOperation3.result,
          ).thenAnswer((_) async {
            await completer3.future;
            throw const CancellationException();
          });

          await uploadTask.start();

          // add a manual delay to ensure upload parts are scheduled before
          // canceling
          await Future<void>.delayed(const Duration(milliseconds: 500));
          await uploadTask.cancel();

          completer1.complete();
          completer2.complete();
          completer3.complete();

          await expectLater(
            uploadTask.result,
            throwsA(isA<S3Exception>()),
          );

          verify(uploadPartSmithyOperation1.cancel).called(1);
          verify(uploadPartSmithyOperation2.cancel).called(1);
          verify(uploadPartSmithyOperation3.cancel).called(1);
        });
      });
    });
  });
}

Stream<List<int>> _getBytesStream(Uint8List bytes) async* {
  const chunkSize = 64 * 1024;
  var currentPosition = 0;
  while (currentPosition < bytes.length) {
    final readRange = currentPosition + chunkSize > bytes.length
        ? bytes.length
        : currentPosition + chunkSize;
    yield bytes.sublist(currentPosition, readRange);
    currentPosition += chunkSize;
  }
}
