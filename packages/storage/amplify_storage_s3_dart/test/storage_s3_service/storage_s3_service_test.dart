// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart' hide PaginatedResult;
import 'package:amplify_core/src/config/amplify_outputs/storage/storage_outputs.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/exception/s3_storage_exception.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:mocktail/mocktail.dart';
import 'package:smithy/smithy.dart';
import 'package:test/test.dart';

import '../test_utils/custom_matchers.dart';
import '../test_utils/mocks.dart';
import '../test_utils/test_path_resolver.dart';
import '../test_utils/test_token_provider.dart';

const testDelimiter = '#';
const testPath = StoragePath.fromString('some/path.txt');

void main() {
  group('StorageS3Service', () {
    const testBucket = 'bucket1';
    const testRegion = 'west-2';
    const storageOutputs =
        StorageOutputs(bucketName: testBucket, awsRegion: testRegion);

    final pathResolver = TestPathResolver();
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
        storageOutputs: storageOutputs,
        pathResolver: pathResolver,
        credentialsProvider: TestIamAuthProvider(),
        logger: logger,
        dependencyManager: dependencyManager,
      );
    });

    test('log a warning when should use path style URLs', () {
      StorageS3Service(
        storageOutputs: const StorageOutputs(
          bucketName: 'bucket.name.has.dots.com',
          awsRegion: 'us-west-2',
        ),
        pathResolver: pathResolver,
        credentialsProvider: TestIamAuthProvider(),
        logger: logger,
        dependencyManager: dependencyManager,
      );

      final message = verify(() => logger.warn(captureAny())).captured.last;

      expect(message, contains('Since your bucket name contains dots'));
    });

    group('list() API', () {
      late S3ListResult listResult;
      const testNextContinuationToken = 'get-next-page';
      const testPageSize = 100;
      const testBucketName = 'a-bucket';
      const testPrefix = 'public$testDelimiter';
      final testCommonPrefix = CommonPrefix(prefix: testPrefix);

      setUpAll(() {
        registerFallbackValue(ListObjectsV2Request(bucket: 'fake bucket'));
      });

      test('should invoke S3Client.listObjectsV2 with expected parameters',
          () async {
        final testCommonPrefix = CommonPrefix(prefix: testPrefix);
        final testS3Objects = [1, 2, 3, 4, 5]
            .map(
              (e) => S3Object(
                key: '${testPrefix}object-$e',
                size: Int64(100 * 4),
                eTag: 'object-$e-eTag',
              ),
            )
            .toList();
        const testPath = StoragePath.fromString('album');
        const testOptions = StorageListOptions(
          pageSize: testPageSize,
          pluginOptions: S3ListPluginOptions(),
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
          TestPathResolver.path,
        );
        expect(request.maxKeys, testPageSize);
      });

      test('should return correct StorageS3ListResult', () async {
        listResult.items.asMap().forEach((index, item) {
          expect(item.path, '${testPrefix}object-${index + 1}');
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
                key: '${testPrefix}object-$e',
                size: Int64(100 * 4),
                eTag: 'object-$e-eTag',
              ),
            )
            .toList();
        const testPath = StoragePath.fromString('album');
        const testOptions = StorageListOptions(
          pageSize: testPageSize,
          pluginOptions: S3ListPluginOptions(excludeSubPaths: true),
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
              CommonPrefix(prefix: testSubPaths[0]),
              CommonPrefix(prefix: testSubPaths[1]),
              CommonPrefix(
                prefix: testSubPaths[2],
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
          'should throw StorageAccessDeniedException when UnknownSmithyHttpException'
          ' with status code 403 returned from service', () async {
        const testOptions = StorageListOptions();
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
            path: const StoragePath.fromString('apath'),
            options: testOptions,
          ),
          throwsA(isA<StorageAccessDeniedException>()),
        );
      });

      test(
          'should invoke S3Object.listObjectV2 with expected parameters and return expected results with listAll is set to true in the options',
          () async {
        final testS3Objects = List.generate(2001, (index) => '$index')
            .map(
              (e) => S3Object(
                key: '${testPrefix}object-$e',
                size: Int64(100 * 4),
                eTag: 'object-$e-eTag',
              ),
            )
            .toList();
        const testPath = StoragePath.fromString('album');
        const testOptions = StorageListOptions(
          pageSize: testPageSize,
          pluginOptions: S3ListPluginOptions.listAll(),
        );

        const defaultPageSize = 1000;
        const testNextToken1 = 'next-token-1';
        const testNextToken2 = 'next-token-2';
        final smithyOperation1 = MockSmithyOperation<
            PaginatedResult<ListObjectsV2Output, int, String>>();
        final smithyOperation2 = MockSmithyOperation<
            PaginatedResult<ListObjectsV2Output, int, String>>();
        final smithyOperation3 = MockSmithyOperation<
            PaginatedResult<ListObjectsV2Output, int, String>>();
        final testPaginatedResult1 =
            PaginatedResult<ListObjectsV2Output, int, String>(
          ListObjectsV2Output(
            contents: testS3Objects.take(defaultPageSize).toList(),
            commonPrefixes: [testCommonPrefix],
            delimiter: testDelimiter,
            name: testBucketName,
          ),
          nextContinuationToken: testNextToken1,
          next: ([int? pageSize]) {
            return smithyOperation2;
          },
        );
        final testPaginatedResult2 =
            PaginatedResult<ListObjectsV2Output, int, String>(
          ListObjectsV2Output(
            contents: testS3Objects
                .skip(defaultPageSize)
                .take(defaultPageSize)
                .toList(),
            commonPrefixes: [testCommonPrefix],
            delimiter: testDelimiter,
            name: testBucketName,
          ),
          nextContinuationToken: testNextToken2,
          next: ([int? pageSize]) {
            return smithyOperation3;
          },
        );
        final testPaginatedResult3 =
            PaginatedResult<ListObjectsV2Output, int, String>(
          ListObjectsV2Output(
            contents: testS3Objects.skip(2 * defaultPageSize).toList(),
            commonPrefixes: [testCommonPrefix],
            delimiter: testDelimiter,
            name: testBucketName,
          ),
          nextContinuationToken: null,
          next: ([int? pageSize]) {
            return smithyOperation3;
          },
        );

        when(
          () => s3Client.listObjectsV2(any()),
        ).thenAnswer((invocation) => smithyOperation1);
        when((() => smithyOperation1.result))
            .thenAnswer((_) async => testPaginatedResult1);
        when((() => smithyOperation2.result))
            .thenAnswer((_) async => testPaginatedResult2);
        when((() => smithyOperation3.result))
            .thenAnswer((_) async => testPaginatedResult3);

        listResult = await storageS3Service.list(
          path: testPath,
          options: testOptions,
        );

        final capturedRequest = verify(
          () => s3Client.listObjectsV2(captureAny<ListObjectsV2Request>()),
        ).captured.last;

        expect(
          capturedRequest,
          isA<ListObjectsV2Request>().having(
            (o) => o.prefix,
            'prefix',
            TestPathResolver.path,
          ),
        );

        expect(listResult.hasNextPage, false);
        expect(listResult.nextToken, isNull);
        expect(listResult.items.length, testS3Objects.length);
        expect(
          listResult.items.map((e) => e.eTag),
          equals(testS3Objects.map((e) => e.eTag)),
        );
      });

      test('should handle AWSHttpException and throw NetworkException', () {
        const testOptions = StorageListOptions();
        final testException = AWSHttpException(
          AWSHttpRequest(method: AWSHttpMethod.get, uri: Uri()),
        );

        when(
          () => s3Client.listObjectsV2(any()),
        ).thenThrow(testException);

        expect(
          storageS3Service.list(
            path: const StoragePath.fromString('a path'),
            options: testOptions,
          ),
          throwsA(isA<NetworkException>()),
        );
      });
    });

    group('getProperties() API', () {
      late S3GetPropertiesResult getPropertiesResult;
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

      test(
          'should invoke S3Client.headObject with default access level as the key prefix',
          () async {
        const testOptions = StorageGetPropertiesOptions();
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
          path: testPath,
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
        expect(request.key, TestPathResolver.path);
      });

      test('should invoke S3Client.headObject with expected parameters',
          () async {
        const testOptions = StorageGetPropertiesOptions(
          pluginOptions: S3GetPropertiesPluginOptions(),
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
          path: testPath,
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
        expect(request.key, TestPathResolver.path);
      });

      test('should return correct S3GetProperties result', () async {
        final storageItem = getPropertiesResult.storageItem;
        expect(storageItem.metadata, testMetadata);
        expect(storageItem.eTag, testETag);
        expect(storageItem.size, testSize);
      });

      test(
          'should throw StorageNotFoundException when UnknownSmithyHttpException'
          ' with status code 404 returned from service', () async {
        const testOptions = StorageGetPropertiesOptions();
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
            path: const StoragePath.fromString('a key'),
            options: testOptions,
          ),
          throwsA(isA<StorageNotFoundException>()),
        );
      });

      test('should handle AWSHttpException and throw NetworkException', () {
        const testOptions = StorageGetPropertiesOptions();
        final testException = AWSHttpException(
          AWSHttpRequest(method: AWSHttpMethod.head, uri: Uri()),
        );

        when(
          () => s3Client.headObject(any()),
        ).thenThrow(testException);

        expect(
          storageS3Service.getProperties(
            path: const StoragePath.fromString('a key'),
            options: testOptions,
          ),
          throwsA(isA<NetworkException>()),
        );
      });
    });

    group('getUrl() API', () {
      late S3GetUrlResult getUrlResult;
      const testExpiresIn = Duration(days: 1);
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
            const testOptions = StorageGetUrlOptions(
              pluginOptions: S3GetUrlPluginOptions(
                expiresIn: testExpiresIn,
              ),
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
              path: testPath,
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
              endsWith(TestPathResolver.path),
            );

            expect(capturedParams[2] is S3ServiceConfiguration, isTrue);
            final configParam = capturedParams[2] as S3ServiceConfiguration;
            expect(configParam.signBody, false);
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

      test('should create a new signer scope on every call of getUrl',
          () async {
        const testOptions = StorageGetUrlOptions();

        when(
          () => awsSigV4Signer.presign(
            any(),
            credentialScope: any(named: 'credentialScope'),
            serviceConfiguration: any(named: 'serviceConfiguration'),
            expiresIn: any(named: 'expiresIn'),
          ),
        ).thenAnswer((_) async => testUrl);

        getUrlResult = await storageS3Service.getUrl(
          path: testPath,
          options: testOptions,
        );
        final capturedSignerScope1 = verify(
          () => awsSigV4Signer.presign(
            any(),
            credentialScope:
                captureAny<AWSCredentialScope>(named: 'credentialScope'),
            expiresIn: any(named: 'expiresIn'),
            serviceConfiguration: any(
              named: 'serviceConfiguration',
            ),
          ),
        ).captured.first;
        expect(capturedSignerScope1, isA<AWSCredentialScope>());

        getUrlResult = await storageS3Service.getUrl(
          path: testPath,
          options: testOptions,
        );
        final capturedSignerScope2 = verify(
          () => awsSigV4Signer.presign(
            any(),
            credentialScope:
                captureAny<AWSCredentialScope>(named: 'credentialScope'),
            expiresIn: any(named: 'expiresIn'),
            serviceConfiguration: any(
              named: 'serviceConfiguration',
            ),
          ),
        ).captured.first;
        expect(capturedSignerScope2, isA<AWSCredentialScope>());

        expect(capturedSignerScope1, isNot(equals(capturedSignerScope2)));
      });

      test(
          'should invoke s3Client.headObject when validateObjectExistence option is set to true',
          () async {
        const testOptions = StorageGetUrlOptions(
          pluginOptions: S3GetUrlPluginOptions(
            validateObjectExistence: true,
          ),
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

        await expectLater(
          storageS3Service.getUrl(
            path: testPath,
            options: testOptions,
          ),
          throwsA(isA<StorageNotFoundException>()),
        );

        final capturedRequest = verify(
          () => s3Client.headObject(
            captureAny<HeadObjectRequest>(),
          ),
        ).captured.last as HeadObjectRequest;

        expect(
          capturedRequest.key,
          TestPathResolver.path,
        );
      });

      test(
          'should invoke s3Client.headObject when validateObjectExistence option is'
          ' set to true and specified targetIdentityId', () async {
        const testOptions = StorageGetUrlOptions(
          pluginOptions: S3GetUrlPluginOptions(
            validateObjectExistence: true,
          ),
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

        await expectLater(
          storageS3Service.getUrl(
            path: testPath,
            options: testOptions,
          ),
          throwsA(isA<StorageNotFoundException>()),
        );

        final capturedRequest = verify(
          () => s3Client.headObject(
            captureAny<HeadObjectRequest>(),
          ),
        ).captured.last as HeadObjectRequest;

        expect(
          capturedRequest.key,
          TestPathResolver.path,
        );
      });

      test('generate transfer acceleration enabled URL', () async {
        const testOptions = StorageGetUrlOptions(
          pluginOptions: S3GetUrlPluginOptions(
            useAccelerateEndpoint: true,
          ),
        );

        when(
          () => awsSigV4Signer.presign(
            any(),
            credentialScope: any(named: 'credentialScope'),
            serviceConfiguration: any(named: 'serviceConfiguration'),
            expiresIn: any(named: 'expiresIn'),
          ),
        ).thenAnswer((_) async => testUrl);

        await storageS3Service.getUrl(
          path: testPath,
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

        expect(
          capturedParams[0],
          isA<AWSHttpRequest>().having(
            (o) => o.uri.host,
            'AWSHttpRequest URI',
            contains('.s3-accelerate.'),
          ),
        );
      });

      group('bucket name has dots (".")', () {
        late AWSSigV4Signer pathStyleAwsSigV4Signer;
        late StorageS3Service pathStyleStorageS3Service;
        const pathStyleBucket = 'bucket.name.has.dots.com';
        const pathStyleRegion = 'west-2';
        const pathStyleStorageOutputs = StorageOutputs(
          bucketName: pathStyleBucket,
          awsRegion: pathStyleRegion,
        );
        final pathStyleURL = Uri(
          host: 's3.amazonaws.com',
          path: '/bucket.name.has.dots.com/album/1.jpg',
          scheme: 'https',
        );

        setUpAll(() {
          pathStyleAwsSigV4Signer = MockAWSSigV4Signer();
          dependencyManager = DependencyManager()
            ..addInstance<S3Client>(MockS3Client())
            ..addInstance<AWSSigV4Signer>(pathStyleAwsSigV4Signer);
          pathStyleStorageS3Service = StorageS3Service(
            storageOutputs: pathStyleStorageOutputs,
            pathResolver: pathResolver,
            credentialsProvider: TestIamAuthProvider(),
            logger: MockAWSLogger(),
            dependencyManager: dependencyManager,
          );
        });

        test(
          'generate path style URL',
          () async {
            const testOptions = StorageGetUrlOptions();

            when(
              () => pathStyleAwsSigV4Signer.presign(
                any(),
                credentialScope: any(named: 'credentialScope'),
                serviceConfiguration: any(named: 'serviceConfiguration'),
                expiresIn: any(named: 'expiresIn'),
              ),
            ).thenAnswer((_) async => pathStyleURL);

            getUrlResult = await pathStyleStorageS3Service.getUrl(
              path: testPath,
              options: testOptions,
            );

            final capturedRequest = verify(
              () => pathStyleAwsSigV4Signer.presign(
                captureAny<AWSHttpRequest>(),
                credentialScope: any(named: 'credentialScope'),
                expiresIn: any(named: 'expiresIn'),
                serviceConfiguration: any(
                  named: 'serviceConfiguration',
                ),
              ),
            ).captured.first;

            expect(
              capturedRequest,
              isA<AWSHttpRequest>()
                  .having(
                    (o) => o.host,
                    'host',
                    's3.${pathStyleStorageOutputs.awsRegion}.amazonaws.com',
                  )
                  .having(
                    (o) => o.path,
                    'path',
                    '/bucket.name.has.dots.com/${TestPathResolver.path}',
                  ),
            );
          },
        );

        test(
          'throw exception when attempt to use accelerate endpoint with path style URL',
          () {
            const testOptions = StorageGetUrlOptions(
              pluginOptions: S3GetUrlPluginOptions(
                useAccelerateEndpoint: true,
              ),
            );

            expect(
              pathStyleStorageS3Service.getUrl(
                path: testPath,
                options: testOptions,
              ),
              throwsA(
                isA<ConfigurationError>().having(
                  (o) => o.message,
                  'message',
                  equals(accelerateEndpointUnusable.message),
                ),
              ),
            );
          },
        );
      });
    });

    group('copy() API', () {
      late S3CopyResult copyResult;
      const testSourcePath = 'public/source';
      const testDestinationPath = 'public/destination';
      const testSource = StoragePath.fromString(testSourcePath);
      const testDestination = StoragePath.fromString(testDestinationPath);

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
        const testOptions = StorageCopyOptions();
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
        expect(request.copySource, '$testBucket/$testSourcePath');

        expect(copyResult.copiedItem.path, testDestinationPath);
      });

      test(
          'should throw StorageAccessDeniedException when UnknownSmithyHttpException'
          ' with status code 403 returned from service', () async {
        const testOptions = StorageCopyOptions();
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
          throwsA(isA<StorageAccessDeniedException>()),
        );
      });

      test('should handle AWSHttpException and throw NetworkException',
          () async {
        const testOptions = StorageCopyOptions();
        final testException = AWSHttpException(
          AWSHttpRequest(method: AWSHttpMethod.put, uri: Uri()),
        );

        when(
          () => s3Client.copyObject(any()),
        ).thenThrow(testException);

        expect(
          storageS3Service.copy(
            source: testSource,
            destination: testDestination,
            options: testOptions,
          ),
          throwsA(isA<NetworkException>()),
        );
      });

      test(
          'should invoke S3Client.headObject with correct parameters when getProperties option is set to true',
          () async {
        const testOptions = StorageCopyOptions(
          pluginOptions: S3CopyPluginOptions(
            getProperties: true,
          ),
        );
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
        expect(request.key, testDestinationPath);
      });
    });

    group('remove() API', () {
      late S3RemoveResult removeResult;
      const testPath = StoragePath.fromString('object-to-remove');

      setUpAll(() {
        registerFallbackValue(
          DeleteObjectRequest(
            bucket: 'fake bucket',
            key: 'dummy key',
          ),
        );
      });

      test('should invoke S3Client.deleteObject with default access level',
          () async {
        const testOptions = StorageRemoveOptions();
        final testDeleteObjectOutput = DeleteObjectOutput();
        final smithyOperation = MockSmithyOperation<DeleteObjectOutput>();

        when(
          () => smithyOperation.result,
        ).thenAnswer((_) async => testDeleteObjectOutput);

        when(
          () => s3Client.deleteObject(any()),
        ).thenAnswer((_) => smithyOperation);

        removeResult = await storageS3Service.remove(
          path: testPath,
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
          TestPathResolver.path,
        );
      });

      test('should invoke S3Client.deleteObject with expected parameters',
          () async {
        const testOptions = StorageRemoveOptions();
        final testDeleteObjectOutput = DeleteObjectOutput();
        final smithyOperation = MockSmithyOperation<DeleteObjectOutput>();

        when(
          () => smithyOperation.result,
        ).thenAnswer((_) async => testDeleteObjectOutput);

        when(
          () => s3Client.deleteObject(any()),
        ).thenAnswer((_) => smithyOperation);

        removeResult = await storageS3Service.remove(
          path: testPath,
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
          TestPathResolver.path,
        );
      });

      test('should return correct S3RemoveResult', () {
        expect(removeResult.removedItem.path, TestPathResolver.path);
      });

      test(
          'should throw StorageAccessDeniedException when UnknownSmithyHttpException'
          ' with status code 403 returned from service', () async {
        const testOptions = StorageRemoveOptions();
        const testUnknownException = UnknownSmithyHttpException(
          statusCode: 403,
          body: 'Access denied.',
        );

        when(
          () => s3Client.deleteObject(any()),
        ).thenThrow(testUnknownException);

        expect(
          storageS3Service.remove(
            path: const StoragePath.fromString('a key'),
            options: testOptions,
          ),
          throwsA(isA<StorageAccessDeniedException>()),
        );
      });

      test('should handle AWSHttpException and throw NetworkException',
          () async {
        const testOptions = StorageRemoveOptions();
        final testException = AWSHttpException(
          AWSHttpRequest(method: AWSHttpMethod.delete, uri: Uri()),
        );

        when(
          () => s3Client.deleteObject(any()),
        ).thenThrow(testException);

        expect(
          storageS3Service.remove(
            path: const StoragePath.fromString('a key'),
            options: testOptions,
          ),
          throwsA(isA<NetworkException>()),
        );
      });
    });

    group('removeMany() API', () {
      late S3RemoveManyResult removeManyResult;
      const testNumOfRemovedItems = 955;
      const testNumOfRemoveErrors = 50;
      final testPaths = List.generate(
        1005,
        (index) => 'object-to-remove-${index + 1}',
      ).map(StoragePath.fromString).toList();
      late List<String> resolvedPaths;

      setUpAll(() async {
        resolvedPaths = await pathResolver.resolvePaths(
          paths: testPaths,
        );
        registerFallbackValue(
          DeleteObjectsRequest(
            bucket: 'fake bucket',
            delete: Delete(objects: const []),
          ),
        );
      });

      test('should invoke S3Client.deleteObjects with default access level',
          () async {
        const testOptions = StorageRemoveManyOptions();
        final testDeleteObjectsOutput = DeleteObjectsOutput(
          deleted: resolvedPaths
              .take(2)
              .map((path) => DeletedObject(key: path))
              .toList(),
        );

        final smithyOperation = MockSmithyOperation<DeleteObjectsOutput>();

        when(
          () => smithyOperation.result,
        ).thenAnswer((_) async => testDeleteObjectsOutput);

        when(
          () => s3Client.deleteObjects(
            any(),
          ),
        ).thenAnswer((_) => smithyOperation);

        removeManyResult = await storageS3Service.removeMany(
          paths: testPaths.take(2).toList(),
          options: testOptions,
        );

        final capturedRequests = verify(
          () => s3Client.deleteObjects(captureAny<DeleteObjectsRequest>()),
        ).captured;

        expect(capturedRequests, hasLength(1));

        final capturedRequest = capturedRequests.first;

        expect(capturedRequest is DeleteObjectsRequest, isTrue);

        final request = capturedRequest as DeleteObjectsRequest;
        final expectedKeysForRequest = resolvedPaths.take(2).toList();

        expect(
          request.delete.objects.map((object) => object.key),
          containsAllInOrder(expectedKeysForRequest),
        );
      });

      test('should invoke S3Client.deleteObjects with expected parameters',
          () async {
        const testOptions = StorageRemoveManyOptions();
        final testDeleteObjectsOutput1 = DeleteObjectsOutput(
          deleted: List.generate(
            1000 - testNumOfRemoveErrors,
            (index) => DeletedObject(key: resolvedPaths[index]),
          ),
          errors: List.generate(
            testNumOfRemoveErrors,
            (index) => Error(
              key: resolvedPaths[index],
              message: 'some error',
            ),
          ),
        );
        final testDeleteObjectsOutput2 = DeleteObjectsOutput(
          deleted: List.generate(
            5,
            (index) => DeletedObject(key: resolvedPaths[1000 + index]),
          ),
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
          paths: testPaths,
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

        final expectedKeysForRequest1 = await pathResolver.resolvePaths(
          paths: testPaths.take(1000).toList(),
        );

        final expectedKeysForRequest2 = await pathResolver.resolvePaths(
          paths: testPaths.skip(1000).toList(),
        );

        expect(
          request1.delete.objects.map((object) => object.key),
          containsAllInOrder(expectedKeysForRequest1),
        );

        expect(
          request2.delete.objects.map((object) => object.key),
          containsAllInOrder(expectedKeysForRequest2),
        );
        final removedItems = removeManyResult.removedItems;
        final removeErrors = removeManyResult.errors;

        expect(removedItems, hasLength(testNumOfRemovedItems));
        expect(removeErrors, hasLength(testNumOfRemoveErrors));

        removedItems.asMap().forEach((index, item) {
          final lookupIndex =
              index < 950 ? index : index + testNumOfRemoveErrors;
          expect(item.path, resolvedPaths[lookupIndex]);
        });
      });

      test(
          'should throw StorageAccessDeniedException when UnknownSmithyHttpException'
          ' with status code 403 returned from service', () async {
        const testOptions = StorageRemoveManyOptions();
        const testUnknownException = UnknownSmithyHttpException(
          statusCode: 403,
          body: 'Access denied.',
        );

        when(
          () => s3Client.deleteObjects(any()),
        ).thenThrow(testUnknownException);

        expect(
          storageS3Service.removeMany(
            paths: testPaths,
            options: testOptions,
          ),
          throwsA(isA<StorageAccessDeniedException>()),
        );
      });

      test('should handle AWSHttpRequest and throw NetworkException', () async {
        const testOptions = StorageRemoveManyOptions();
        final testException = AWSHttpException(
          AWSHttpRequest(method: AWSHttpMethod.delete, uri: Uri()),
        );

        when(
          () => s3Client.deleteObjects(any()),
        ).thenThrow(testException);

        expect(
          storageS3Service.removeMany(
            paths: testPaths,
            options: testOptions,
          ),
          throwsA(isA<NetworkException>()),
        );
      });
    });
  });
}
