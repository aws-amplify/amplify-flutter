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

import 'package:amplify_core/amplify_core.dart' hide PaginatedResult;
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smithy/smithy.dart';
import 'package:test/test.dart';

import '../test_utils/custom_matchers.dart';
import '../test_utils/mocks.dart';
import '../test_utils/test_token_provider.dart';

const testDelimiter = '#';

class TestPrefixResolver implements S3PrefixResolver {
  @override
  Future<String> resolvePrefix({
    required StorageAccessLevel accessLevel,
    String? identityId,
  }) async {
    if (identityId == 'throw exception for me') {
      throw Exception('elaborated exception');
    }

    return '${accessLevel.defaultPrefix}$testDelimiter';
  }
}

void main() {
  group('StorageS3Service', () {
    const testBucket = 'bucket1';
    const testRegion = 'west-2';
    final testPrefixResolver = TestPrefixResolver();
    late DependencyManager dependencyManager;
    late S3Client s3Client;
    late StorageS3Service storageS3Service;
    late AWSLogger logger;
    late AWSSigV4Signer awsSigV4Signer;

    setUp(() {
      s3Client = MockS3Client();
      logger = MockAWSLogger();
      awsSigV4Signer = MockAWSSigV4Signer();
      dependencyManager = DependencyManager()
        ..addInstance<S3Client>(s3Client)
        ..addInstance<AWSSigV4Signer>(awsSigV4Signer);
      storageS3Service = StorageS3Service(
        defaultBucket: testBucket,
        defaultRegion: testRegion,
        prefixResolver: testPrefixResolver,
        credentialsProvider: TestIamAuthProvider(),
        logger: logger,
        dependencyManager: dependencyManager,
      );
    });

    group('_getResolvedPrefix()', () {
      test(
          'should throw a StorageS3Exception if supplied prefix resolver throws an exception',
          () async {
        const testOptions = S3ListOptions.forIdentity('throw exception for me');

        try {
          await storageS3Service.list(path: 'a path', options: testOptions);
          fail('Expected exception wasn\'t thrown.');
        } on Object catch (error) {
          expect(error is S3Exception, isTrue);
        }

        verify(() => logger.error(any(), any(), any())).called(1);
      });
    });

    group('list() API', () {
      late S3ListResult listResult;
      const testNextContinuationToken = 'get-next-page';
      const testPageSize = 100;
      const testBucketName = 'a-bucket';
      const testStorageAccessLevel = StorageAccessLevel.protected;
      final testPrefixToDrop =
          '${testStorageAccessLevel.defaultPrefix}$testDelimiter';
      final testCommonPrefix = CommonPrefix(prefix: testPrefixToDrop);

      setUpAll(() {
        registerFallbackValue(ListObjectsV2Request(bucket: 'fake bucket'));
      });

      test('should invoke S3Client.listObjectsV2 with expected parameters',
          () async {
        final testS3Objects = [1, 2, 3, 4, 5]
            .map(
              (e) => S3Object(
                key: '${testPrefixToDrop}object-$e',
                size: Int64(100 * 4),
                eTag: 'object-$e-eTag',
              ),
            )
            .toList();
        const testPath = 'album';
        const testTargetIdentityId = 'someone-else-id';
        const testOptions = S3ListOptions.forIdentity(
          testTargetIdentityId,
          pageSize: testPageSize,
        );
        final testPaginatedResult =
            PaginatedResult<ListObjectsV2Output, int, String>(
          ListObjectsV2Output(
            contents: testS3Objects,
            commonPrefixes: [testCommonPrefix],
            delimiter: testDelimiter,
            name: testBucketName,
            maxKeys: testPageSize,
          ),
          nextContinuationToken: testNextContinuationToken,
          next: ([int? pageSize]) {
            throw UnimplementedError('not needed in unit tests');
          },
        );
        final smithyOperation = MockSmithyOperation<
            PaginatedResult<ListObjectsV2Output, int, String>>();

        when((() => smithyOperation.result))
            .thenAnswer((_) async => testPaginatedResult);

        when(
          () => s3Client.listObjectsV2(any()),
        ).thenAnswer((_) => smithyOperation);

        listResult = await storageS3Service.list(
          path: testPath,
          options: testOptions,
        );

        final capturedRequest = verify(
          () => s3Client.listObjectsV2(
            captureAny<ListObjectsV2Request>(),
          ),
        ).captured.last;
        expect(capturedRequest is ListObjectsV2Request, isTrue);

        final request = capturedRequest as ListObjectsV2Request;
        expect(request.bucket, testBucket);
        expect(
          request.prefix,
          '${await testPrefixResolver.resolvePrefix(
            accessLevel: testOptions.accessLevel,
            identityId: testTargetIdentityId,
          )}$testPath',
        );
        expect(request.maxKeys, testPageSize);
      });

      test('should return correct StorageS3ListResult', () async {
        listResult.items.asMap().forEach((index, item) {
          expect(item.key, isNot(contains(testPrefixToDrop)));
          expect(item.key, 'object-${index + 1}');
        });
        expect(listResult.hasNextPage, true);
        expect(listResult.nextToken, testNextContinuationToken);
      });

      test(
          'should attach delimiter to the ListObjectV2Request when options excludeSubPaths is set to true',
          () async {
        final testS3Objects = [1, 2, 3, 4, 5]
            .map(
              (e) => S3Object(
                key: '${testPrefixToDrop}object-$e',
                size: Int64(100 * 4),
                eTag: 'object-$e-eTag',
              ),
            )
            .toList();
        const testPath = 'album';
        const testOptions = S3ListOptions(
          accessLevel: testStorageAccessLevel,
          excludeSubPaths: true,
          pageSize: testPageSize,
        );
        const testSubPaths = [
          'album#folder1',
          'album#folder2',
          'album#folder1#sub-folder1',
        ];
        final testPaginatedResult =
            PaginatedResult<ListObjectsV2Output, int, String>(
          ListObjectsV2Output(
            contents: testS3Objects,
            commonPrefixes: [
              CommonPrefix(prefix: '$testPrefixToDrop${testSubPaths[0]}'),
              CommonPrefix(prefix: '$testPrefixToDrop${testSubPaths[1]}'),
              CommonPrefix(
                prefix: '$testPrefixToDrop${testSubPaths[2]}',
              ),
            ],
            delimiter: testDelimiter,
            name: testBucketName,
            maxKeys: testPageSize,
          ),
          next: ([int? pageSize]) {
            throw UnimplementedError();
          },
          nextContinuationToken: testNextContinuationToken,
        );
        final smithyOperation = MockSmithyOperation<
            PaginatedResult<ListObjectsV2Output, int, String>>();

        when(
          () => smithyOperation.result,
        ).thenAnswer((_) async => testPaginatedResult);

        when(
          () => s3Client.listObjectsV2(any()),
        ).thenAnswer((_) => smithyOperation);

        final result = await storageS3Service.list(
          path: testPath,
          options: testOptions,
        );

        expect(result.metadata.subPaths, equals(testSubPaths));
      });

      test(
          'should throw S3Exception when UnknownSmithyHttpException is returned from service',
          () async {
        const testOptions = S3ListOptions();
        const testUnknownException = UnknownSmithyHttpException(
          statusCode: 403,
          body: 'some exception',
        );

        when(
          () => s3Client.listObjectsV2(
            any(),
          ),
        ).thenThrow(testUnknownException);

        expect(
          storageS3Service.list(
            path: 'a path',
            options: testOptions,
          ),
          throwsA(isA<S3Exception>()),
        );
      });
    });

    group('getProperties() API', () {
      late S3GetPropertiesResult getPropertiesResult;
      const testKey = 'some-object';
      const testMetadata = {
        'filename': 'hello.jpg',
        'uploader': '123',
      };
      const testSize = 1024;
      const testETag = '12345';
      final testLastModified = DateTime(2022, 9, 19);

      setUpAll(() {
        registerFallbackValue(
          HeadObjectRequest(
            bucket: 'fake bucket',
            key: 'dummy key',
          ),
        );
      });

      test('should invoke S3Client.headObject with expected parameters',
          () async {
        const testTargetIdentityId = 'someone-else-id';
        const testOptions = S3GetPropertiesOptions.forIdentity(
          testTargetIdentityId,
        );
        final testHeadObjectOutput = HeadObjectOutput(
          eTag: testETag,
          contentLength: Int64(testSize),
          lastModified: testLastModified,
          metadata: testMetadata,
        );
        final smithyOperation = MockSmithyOperation<HeadObjectOutput>();

        when(
          () => smithyOperation.result,
        ).thenAnswer((_) async => testHeadObjectOutput);

        when(
          () => s3Client.headObject(any()),
        ).thenAnswer((_) => smithyOperation);

        getPropertiesResult = await storageS3Service.getProperties(
          key: testKey,
          options: testOptions,
        );

        final capturedRequest = verify(
          () => s3Client.headObject(
            captureAny<HeadObjectRequest>(),
          ),
        ).captured.last;
        expect(capturedRequest is HeadObjectRequest, isTrue);

        final request = capturedRequest as HeadObjectRequest;
        expect(request.bucket, testBucket);
        expect(
          request.key,
          '${await testPrefixResolver.resolvePrefix(
            accessLevel: testOptions.accessLevel,
            identityId: testTargetIdentityId,
          )}$testKey',
        );
      });

      test('should return correct S3GetProperties result', () async {
        final storageItem = getPropertiesResult.storageItem;
        expect(storageItem.key, testKey);
        expect(storageItem.metadata, testMetadata);
        expect(storageItem.eTag, testETag);
        expect(storageItem.size, testSize);
      });

      test(
          'should throw S3Exception when UnknownSmithyHttpException is returned from service',
          () async {
        const testOptions = S3GetPropertiesOptions();
        const testUnknownException = UnknownSmithyHttpException(
          statusCode: 404,
          body: 'Nod found.',
        );

        when(
          () => s3Client.headObject(
            any(),
          ),
        ).thenThrow(testUnknownException);

        expect(
          storageS3Service.getProperties(
            key: 'a key',
            options: testOptions,
          ),
          throwsA(isA<S3Exception>()),
        );
      });
    });

    group('getUrl() API', () {
      late S3GetUrlResult getUrlResult;
      const testExpiresIn = Duration(days: 1);
      const testKey = 'some-object';
      final testUrl = Uri(
        host: 's3.amazon.aws',
        path: 'album/1.jpg',
        scheme: 'https',
      );
      final testBaseDateTime = DateTime(2022, 09, 30);

      setUpAll(() {
        registerFallbackValue(
          AWSHttpRequest.get(testUrl),
        );
        registerFallbackValue(
          AWSCredentialScope(region: testRegion, service: AWSService.s3),
        );
        registerFallbackValue(S3ServiceConfiguration());
        registerFallbackValue(Duration.zero);
        registerFallbackValue(
          HeadObjectRequest(
            bucket: 'fake bucket',
            key: 'dummy key',
          ),
        );
      });

      test('should invoke AWSSigV4Signer.presign with correct parameters', () {
        runZoned(
          () async {
            const testTargetIdentityId = 'someone-else-id';
            const testOptions = S3GetUrlOptions.forIdentity(
              testTargetIdentityId,
              expiresIn: testExpiresIn,
            );

            when(
              () => awsSigV4Signer.presign(
                any(),
                credentialScope: any(named: 'credentialScope'),
                serviceConfiguration: any(named: 'serviceConfiguration'),
                expiresIn: any(named: 'expiresIn'),
              ),
            ).thenAnswer((_) async => testUrl);

            getUrlResult = await storageS3Service.getUrl(
              key: testKey,
              options: testOptions,
            );

            final capturedParams = verify(
              () => awsSigV4Signer.presign(
                captureAny<AWSHttpRequest>(),
                credentialScope:
                    captureAny<AWSCredentialScope>(named: 'credentialScope'),
                expiresIn: captureAny<Duration>(named: 'expiresIn'),
                serviceConfiguration: captureAny<S3ServiceConfiguration>(
                  named: 'serviceConfiguration',
                ),
              ),
            ).captured;

            expect(capturedParams.first is AWSHttpRequest, isTrue);
            final requestParam = capturedParams.first as AWSHttpRequest;
            expect(
              requestParam.uri.toString(),
              endsWith(
                Uri.encodeComponent('${await testPrefixResolver.resolvePrefix(
                  accessLevel: testOptions.accessLevel,
                  identityId: testTargetIdentityId,
                )}$testKey'),
              ),
            );

            expect(capturedParams[1] is AWSCredentialScope, isTrue);
            final credentialScopeParam =
                capturedParams[1] as AWSCredentialScope;
            expect(credentialScopeParam.region, testRegion);
            expect(credentialScopeParam.service, AWSService.s3.service);

            expect(capturedParams[2] is S3ServiceConfiguration, isTrue);
            final configParam = capturedParams[2] as S3ServiceConfiguration;
            expect(configParam.signPayload, true);
            expect(configParam.chunked, false);

            expect(capturedParams.last, testExpiresIn);
          },
          zoneValues: {
            testDateTimeNowOverride: testBaseDateTime,
          },
        );
      });

      test('should return correct url result', () {
        expect(getUrlResult.url, testUrl);
        expect(getUrlResult.expiresAt, testBaseDateTime.add(testExpiresIn));
      });

      test(
          'should invoke s3Client.headObject when checkObjectExistence option is set to true',
          () async {
        const testOptions = S3GetUrlOptions(
          accessLevel: StorageAccessLevel.private,
          checkObjectExistence: true,
        );
        const testUnknownException = UnknownSmithyHttpException(
          statusCode: 404,
          body: 'Nod found.',
        );

        when(
          () => s3Client.headObject(
            any(),
          ),
        ).thenThrow(testUnknownException);

        try {
          await storageS3Service.getUrl(
            key: testKey,
            options: testOptions,
          );
          fail('Expected exception wasn\'t thrown.');
        } on Object catch (error) {
          expect(error is S3Exception, isTrue);
        }

        final capturedRequest = verify(
          () => s3Client.headObject(
            captureAny<HeadObjectRequest>(),
          ),
        ).captured.last as HeadObjectRequest;

        expect(
          capturedRequest.key,
          '${await testPrefixResolver.resolvePrefix(
            accessLevel: testOptions.accessLevel,
          )}$testKey',
        );
      });

      test(
          'should invoke s3Client.headObject when checkObjectExistence option is set to true and specified targetIdentityId',
          () async {
        const testTargetIdentityId = 'some-else-id';
        const testOptions = S3GetUrlOptions.forIdentity(
          testTargetIdentityId,
          checkObjectExistence: true,
        );
        const testUnknownException = UnknownSmithyHttpException(
          statusCode: 404,
          body: 'Nod found.',
        );

        when(
          () => s3Client.headObject(
            any(),
          ),
        ).thenThrow(testUnknownException);

        try {
          await storageS3Service.getUrl(
            key: testKey,
            options: testOptions,
          );
          fail('Expected exception wasn\'t thrown.');
        } on Object catch (error) {
          expect(error is S3Exception, isTrue);
        }

        final capturedRequest = verify(
          () => s3Client.headObject(
            captureAny<HeadObjectRequest>(),
          ),
        ).captured.last as HeadObjectRequest;

        expect(
          capturedRequest.key,
          '${await testPrefixResolver.resolvePrefix(
            accessLevel: testOptions.accessLevel,
          )}$testKey',
        );
      });
    });

    group('copy() API', () {
      late S3CopyResult copyResult;
      const testSourceItem = S3Item(key: 'source');
      const testDestinationItem = S3Item(key: 'destination');
      const testSource = S3ItemWithAccessLevel(storageItem: testSourceItem);
      const testDestination =
          S3ItemWithAccessLevel(storageItem: testDestinationItem);

      setUpAll(() {
        registerFallbackValue(
          CopyObjectRequest(
            bucket: 'fake bucket',
            copySource: 'dummy source',
            key: 'imposing destination',
          ),
        );
        registerFallbackValue(
          HeadObjectRequest(
            bucket: 'fake bucket',
            key: 'dummy key',
          ),
        );
      });

      test('should invoke S3Client.copyObject with expected parameters',
          () async {
        const testOptions = S3CopyOptions();
        final testCopyObjectOutput = CopyObjectOutput();
        final smithyOperation = MockSmithyOperation<CopyObjectOutput>();

        when(
          () => smithyOperation.result,
        ).thenAnswer((_) async => testCopyObjectOutput);

        when(
          () => s3Client.copyObject(any()),
        ).thenAnswer((_) => smithyOperation);

        copyResult = await storageS3Service.copy(
          source: testSource,
          destination: testDestination,
          options: testOptions,
        );

        final capturedRequest = verify(
          () => s3Client.copyObject(captureAny<CopyObjectRequest>()),
        ).captured.last;

        expect(capturedRequest is CopyObjectRequest, isTrue);
        final request = capturedRequest as CopyObjectRequest;

        expect(request.bucket, testBucket);
        expect(
          request.copySource,
          '$testBucket/${await testPrefixResolver.resolvePrefix(
            accessLevel: testSource.accessLevel,
          )}${testSourceItem.key}',
        );
      });

      test('should return correct S3CopyResult', () {
        expect(copyResult.copiedItem.key, testDestination.storageItem.key);
      });

      test(
          'should throw S3Exception when UnknownSmithyHttpException is returned from service',
          () async {
        const testOptions = S3CopyOptions();
        const testUnknownException = UnknownSmithyHttpException(
          statusCode: 403,
          body: 'Access denied.',
        );

        when(
          () => s3Client.copyObject(
            any(),
          ),
        ).thenThrow(testUnknownException);

        expect(
          storageS3Service.copy(
            source: testSource,
            destination: testDestination,
            options: testOptions,
          ),
          throwsA(isA<S3Exception>()),
        );
      });

      test(
          'should invoke S3Client.headObject with correct parameters when getProperties option is set to true',
          () async {
        const testOptions = S3CopyOptions(getProperties: true);
        final testCopyObjectOutput = CopyObjectOutput();
        final testHeadObjectOutput = HeadObjectOutput();
        final copySmithyOperation = MockSmithyOperation<CopyObjectOutput>();
        final headSmithyOperation = MockSmithyOperation<HeadObjectOutput>();

        when(
          () => copySmithyOperation.result,
        ).thenAnswer((_) async => testCopyObjectOutput);

        when(
          () => headSmithyOperation.result,
        ).thenAnswer((_) async => testHeadObjectOutput);

        when(
          () => s3Client.copyObject(any()),
        ).thenAnswer((_) => copySmithyOperation);

        when(
          () => s3Client.headObject(any()),
        ).thenAnswer((_) => headSmithyOperation);

        await storageS3Service.copy(
          source: testSource,
          destination: testDestination,
          options: testOptions,
        );

        final headObjectRequest = verify(
          () => s3Client.headObject(captureAny<HeadObjectRequest>()),
        ).captured.last;

        expect(headObjectRequest is HeadObjectRequest, isTrue);
        final request = headObjectRequest as HeadObjectRequest;

        expect(request.bucket, testBucket);
        expect(
          request.key,
          '${await testPrefixResolver.resolvePrefix(
            accessLevel: testDestination.accessLevel,
          )}${testDestinationItem.key}',
        );
      });
    });

    group('move() API', () {
      late S3MoveResult moveResult;
      const testSourceItem = S3Item(key: 'source');
      const testDestinationItem = S3Item(key: 'destination');
      const testSource = S3ItemWithAccessLevel(storageItem: testSourceItem);
      const testDestination =
          S3ItemWithAccessLevel(storageItem: testDestinationItem);

      setUpAll(() {
        registerFallbackValue(
          CopyObjectRequest(
            bucket: 'fake bucket',
            copySource: 'dummy source',
            key: 'imposing destination',
          ),
        );
        registerFallbackValue(
          DeleteObjectRequest(
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

      test(
          'should invoke S3Client.copyObject and S3Client.deleteObject with expected parameters',
          () async {
        const testOptions = S3MoveOptions();
        final testCopyObjectOutput = CopyObjectOutput();
        final testDeleteObjectOutput = DeleteObjectOutput();
        final copySmithyOperation = MockSmithyOperation<CopyObjectOutput>();
        final deleteSmithyOperation = MockSmithyOperation<DeleteObjectOutput>();
        when(
          () => copySmithyOperation.result,
        ).thenAnswer((_) async => testCopyObjectOutput);

        when(
          () => deleteSmithyOperation.result,
        ).thenAnswer((_) async => testDeleteObjectOutput);

        when(
          () => s3Client.copyObject(any()),
        ).thenAnswer((_) => copySmithyOperation);

        when(
          () => s3Client.deleteObject(any()),
        ).thenAnswer((_) => deleteSmithyOperation);

        moveResult = await storageS3Service.move(
          source: testSource,
          destination: testDestination,
          options: testOptions,
        );

        final capturedCopyRequest = verify(
          () => s3Client.copyObject(captureAny<CopyObjectRequest>()),
        ).captured.last;

        final capturedDeleteRequest = verify(
          () => s3Client.deleteObject(captureAny<DeleteObjectRequest>()),
        ).captured.last;

        expect(capturedCopyRequest is CopyObjectRequest, isTrue);
        final copyRequest = capturedCopyRequest as CopyObjectRequest;

        expect(capturedDeleteRequest is DeleteObjectRequest, isTrue);
        final deleteRequest = capturedDeleteRequest as DeleteObjectRequest;

        expect(copyRequest.bucket, testBucket);
        expect(
          copyRequest.copySource,
          '$testBucket/${await testPrefixResolver.resolvePrefix(
            accessLevel: testSource.accessLevel,
          )}${testSourceItem.key}',
        );

        expect(deleteRequest.bucket, testBucket);
        expect(
          deleteRequest.key,
          '${await testPrefixResolver.resolvePrefix(
            accessLevel: testSource.accessLevel,
          )}${testSourceItem.key}',
        );
      });

      test('should return correct S3CopyResult', () {
        expect(moveResult.movedItem.key, testDestination.storageItem.key);
      });

      test(
          'should throw S3Exception when UnknownSmithyHttpException is returned from service while copying the source',
          () async {
        const testOptions = S3MoveOptions();
        const testUnknownException = UnknownSmithyHttpException(
          statusCode: 403,
          body: 'Access denied.',
        );

        when(
          () => s3Client.copyObject(
            any(),
          ),
        ).thenThrow(testUnknownException);

        expect(
          storageS3Service.move(
            source: testSource,
            destination: testDestination,
            options: testOptions,
          ),
          throwsA(isA<S3Exception>()),
        );
      });

      test(
          'should throw S3Exception when UnknownSmithyHttpException is returned from service while deleting the source',
          () async {
        const testOptions = S3MoveOptions();
        const testUnknownException = UnknownSmithyHttpException(
          statusCode: 500,
          body: 'Internal error',
        );
        final testCopyObjectOutput = CopyObjectOutput();
        final smithyOperation = MockSmithyOperation<CopyObjectOutput>();

        when(
          () => smithyOperation.result,
        ).thenAnswer((_) async => testCopyObjectOutput);

        when(
          () => s3Client.copyObject(any()),
        ).thenAnswer((_) => smithyOperation);

        when(
          () => s3Client.deleteObject(
            any(),
          ),
        ).thenThrow(testUnknownException);

        expect(
          storageS3Service.move(
            source: testSource,
            destination: testDestination,
            options: testOptions,
          ),
          throwsA(isA<S3Exception>()),
        );
      });

      test(
          'should invoke S3Client.headObject with correct parameters when getProperties option is set to true',
          () async {
        const testOptions = S3MoveOptions(getProperties: true);
        final testCopyObjectOutput = CopyObjectOutput();
        final testDeleteObjectOutput = DeleteObjectOutput();
        final testHeadObjectOutput = HeadObjectOutput();
        final copySmithyOperation = MockSmithyOperation<CopyObjectOutput>();
        final deleteSmithyOperation = MockSmithyOperation<DeleteObjectOutput>();
        final headSmithyOperation = MockSmithyOperation<HeadObjectOutput>();

        when(
          () => copySmithyOperation.result,
        ).thenAnswer((_) async => testCopyObjectOutput);

        when(
          () => deleteSmithyOperation.result,
        ).thenAnswer((_) async => testDeleteObjectOutput);

        when(
          () => headSmithyOperation.result,
        ).thenAnswer((_) async => testHeadObjectOutput);

        when(
          () => s3Client.copyObject(any()),
        ).thenAnswer((_) => copySmithyOperation);

        when(
          () => s3Client.deleteObject(any()),
        ).thenAnswer((_) => deleteSmithyOperation);

        when(
          () => s3Client.headObject(any()),
        ).thenAnswer((_) => headSmithyOperation);

        await storageS3Service.move(
          source: testSource,
          destination: testDestination,
          options: testOptions,
        );

        final headObjectRequest = verify(
          () => s3Client.headObject(captureAny<HeadObjectRequest>()),
        ).captured.last;

        expect(headObjectRequest is HeadObjectRequest, isTrue);
        final request = headObjectRequest as HeadObjectRequest;

        expect(request.bucket, testBucket);
        expect(
          request.key,
          '${await testPrefixResolver.resolvePrefix(
            accessLevel: testDestination.accessLevel,
          )}${testDestinationItem.key}',
        );
      });
    });

    group('remove() API', () {
      late S3RemoveResult removeResult;
      const testKey = 'object-to-remove';

      setUpAll(() {
        registerFallbackValue(
          DeleteObjectRequest(
            bucket: 'fake bucket',
            key: 'dummy key',
          ),
        );
      });

      test('should invoke S3Client.deleteObject with expected parameters',
          () async {
        const testOptions = S3RemoveOptions(
          accessLevel: StorageAccessLevel.private,
        );
        final testDeleteObjectOutput = DeleteObjectOutput();
        final smithyOperation = MockSmithyOperation<DeleteObjectOutput>();

        when(
          () => smithyOperation.result,
        ).thenAnswer((_) async => testDeleteObjectOutput);

        when(
          () => s3Client.deleteObject(any()),
        ).thenAnswer((_) => smithyOperation);

        removeResult = await storageS3Service.remove(
          key: testKey,
          options: testOptions,
        );

        final capturedRequest = verify(
          () => s3Client.deleteObject(
            captureAny<DeleteObjectRequest>(),
          ),
        ).captured.last;
        expect(capturedRequest is DeleteObjectRequest, isTrue);

        final request = capturedRequest as DeleteObjectRequest;
        expect(request.bucket, testBucket);
        expect(
          request.key,
          '${await testPrefixResolver.resolvePrefix(
            accessLevel: testOptions.accessLevel,
          )}$testKey',
        );
      });

      test('should return correct S3RemoveResult', () {
        expect(removeResult.removedItem.key, testKey);
      });

      test(
          'should throw S3Exception when UnknownSmithyHttpException is returned from service',
          () async {
        const testOptions = S3RemoveOptions();
        const testUnknownException = UnknownSmithyHttpException(
          statusCode: 403,
          body: 'Access denied.',
        );

        when(
          () => s3Client.deleteObject(any()),
        ).thenThrow(testUnknownException);

        expect(
          storageS3Service.remove(
            key: 'a key',
            options: testOptions,
          ),
          throwsA(isA<S3Exception>()),
        );
      });
    });

    group('removeMany() API', () {
      late S3RemoveManyResult removeManyResult;
      const testNumOfRemovedItems = 955;
      const testNumOfRemoveErrors = 50;
      final testKeys = List.generate(
        1005,
        (index) => 'object-to-remove-${index + 1}',
      ).toList();

      setUpAll(() {
        registerFallbackValue(
          DeleteObjectsRequest(
            bucket: 'fake bucket',
            delete: Delete(objects: const []),
          ),
        );
      });

      test('should invoke S3Client.deleteObjects with expected parameters',
          () async {
        const testOptions = S3RemoveManyOptions(
          accessLevel: StorageAccessLevel.protected,
        );
        final testPrefix =
            '${testOptions.accessLevel.defaultPrefix}$testDelimiter';
        final testDeleteObjectsOutput1 = DeleteObjectsOutput(
          deleted: testKeys
              .take(1000 - testNumOfRemoveErrors)
              .map((key) => DeletedObject(key: '$testPrefix$key'))
              .toList(),
          errors: testKeys
              .skip(1000 - testNumOfRemoveErrors)
              .take(testNumOfRemoveErrors)
              .map(
                (key) => Error(
                  key: '$testPrefix$key',
                  message: 'some error',
                ),
              )
              .toList(),
        );
        final testDeleteObjectsOutput2 = DeleteObjectsOutput(
          deleted: testKeys
              .skip(1000)
              .take(5)
              .map((key) => DeletedObject(key: '$testPrefix$key'))
              .toList(),
        );

        final smithyOperation1 = MockSmithyOperation<DeleteObjectsOutput>();
        final smithyOperation2 = MockSmithyOperation<DeleteObjectsOutput>();

        when(
          () => smithyOperation1.result,
        ).thenAnswer((_) async => testDeleteObjectsOutput1);

        when(
          () => smithyOperation2.result,
        ).thenAnswer((_) async => testDeleteObjectsOutput2);

        // response to the first 1000 delete objects request
        when(
          () => s3Client.deleteObjects(
            any(that: DeleteObjectsLength(equals(1000))),
          ),
        ).thenAnswer((_) => smithyOperation1);

        // response to the remaining delete objects request
        when(
          () => s3Client.deleteObjects(
            any(that: DeleteObjectsLength(equals(5))),
          ),
        ).thenAnswer((_) => smithyOperation2);

        removeManyResult = await storageS3Service.removeMany(
          keys: testKeys,
          options: testOptions,
        );

        final capturedRequests = verify(
          () => s3Client.deleteObjects(captureAny<DeleteObjectsRequest>()),
        ).captured;

        // 1005 objects to remove therefore should send 2 requests for
        // 2 batches
        expect(capturedRequests, hasLength(2));

        final capturedRequest1 = capturedRequests.first;
        final capturedRequest2 = capturedRequests.last;

        expect(capturedRequest1 is DeleteObjectsRequest, isTrue);
        expect(capturedRequest2 is DeleteObjectsRequest, isTrue);

        final request1 = capturedRequest1 as DeleteObjectsRequest;
        final request2 = capturedRequest2 as DeleteObjectsRequest;

        final expectedKeysForRequest1 = await Future.wait(
          testKeys.take(1000).map(
                (key) async => '${await testPrefixResolver.resolvePrefix(
                  accessLevel: testOptions.accessLevel,
                )}$key',
              ),
        );
        final expectedKeysForRequest2 = await Future.wait(
          testKeys.skip(1000).map(
                (key) async => '${await testPrefixResolver.resolvePrefix(
                  accessLevel: testOptions.accessLevel,
                )}$key',
              ),
        );

        expect(
          request1.delete.objects.map((object) => object.key),
          containsAllInOrder(expectedKeysForRequest1),
        );

        expect(
          request2.delete.objects.map((object) => object.key),
          containsAllInOrder(expectedKeysForRequest2),
        );
      });

      test('should return correct S3RemoveManyResult', () {
        final removedItems = removeManyResult.removedItems;
        final removeErrors = removeManyResult.removeErrors;

        expect(removedItems, hasLength(testNumOfRemovedItems));
        expect(removeErrors, hasLength(testNumOfRemoveErrors));

        removedItems.asMap().forEach((index, item) {
          final lookupIndex =
              index < 950 ? index : index + testNumOfRemoveErrors;
          expect(item.key, testKeys[lookupIndex]);
        });
      });

      test(
          'should throw S3Exception when UnknownSmithyHttpException is returned from service',
          () async {
        const testOptions = S3RemoveManyOptions();
        const testUnknownException = UnknownSmithyHttpException(
          statusCode: 403,
          body: 'Access denied.',
        );

        when(
          () => s3Client.deleteObjects(any()),
        ).thenThrow(testUnknownException);

        expect(
          storageS3Service.removeMany(
            keys: testKeys,
            options: testOptions,
          ),
          throwsA(isA<S3Exception>()),
        );
      });
    });
  });
}
