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

import 'package:amplify_core/amplify_core.dart' hide PaginatedResult;
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/common/endpoint_resolver.dart'
    as endpoint_resolver;
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/smithy_aws.dart';

/// {@template amplify_storage_s3.storage_s3_service}
/// This is a wrapper implementation over Smithy S3Client as a glue layer
/// between the S3 plugin and S3Client.
/// {@endtemplate}
class StorageS3Service {
  /// {@macro amplify_storage_s3.storage_s3_service}
  StorageS3Service({
    required String defaultBucket,
    required String defaultRegion,
    required S3StoragePrefixResolver prefixResolver,
    required AWSIamAmplifyAuthProvider credentialsProvider,
    required AWSLogger logger,
    @visibleForTesting DependencyManager? dependencyManagerOverride,
  })  : _defaultBucket = defaultBucket,
        _defaultRegion = defaultRegion,
        // dependencyManagerOverride should be available only in unit tests
        _defaultS3Client = dependencyManagerOverride == null
            ? S3Client(
                region: defaultRegion,
                credentialsProvider: credentialsProvider,
                s3ClientConfig: _defaultS3ClientConfig,
              )
            : dependencyManagerOverride.expect(),
        _prefixResolver = prefixResolver,
        _logger = logger,
        _signerScope = AWSCredentialScope(
          region: defaultRegion,
          service: AWSService.s3,
        ),
        _awsSigV4Signer = dependencyManagerOverride == null
            ? AWSSigV4Signer(credentialsProvider: credentialsProvider)
            : dependencyManagerOverride.expect();

  static const _defaultS3ClientConfig = S3ClientConfig();
  static final _defaultS3SignerConfiguration = S3ServiceConfiguration();

  final String _defaultBucket;
  final String _defaultRegion;
  final S3Client _defaultS3Client;
  final S3StoragePrefixResolver _prefixResolver;
  final AWSLogger _logger;
  final AWSCredentialScope _signerScope;
  final AWSSigV4Signer _awsSigV4Signer;

  /// Takes in input from [AmplifyStorageS3Dart.list] to compose a
  /// [ListObjectsV2Request] and to S3 service, then returns a
  /// [S3StorageListResult] based on [PaginatedResult] returned by
  /// [S3Client.listObjectsV2] API.
  ///
  /// {@template storage.s3_service.throw_exception_unknown_smithy_exception}
  /// May throw [S3StorageException] based on [UnknownSmithyHttpException] if
  /// any.
  /// {@endtemplate}
  Future<S3StorageListResult> list({
    String? path,
    required S3StorageListOptions options,
  }) async {
    final resolvedPrefix = await _getResolvedPrefix(
      storageAccessLevel: options.storageAccessLevel,
      identityId: options.targetIdentityId,
    );

    final listTargetPrefix = '$resolvedPrefix${path ?? ''}';

    final request = ListObjectsV2Request.build((builder) {
      builder
        ..bucket = _defaultBucket
        ..prefix = listTargetPrefix
        ..maxKeys = options.pageSize;
    });

    try {
      return S3StorageListResult.fromPaginatedResult(
        await _defaultS3Client.listObjectsV2(request),
        prefixToDrop: resolvedPrefix,
      );
    } on UnknownSmithyHttpException catch (error) {
      throw S3StorageException.fromUnknownSmithyHttpException(error);
    }
  }

  /// Takes in input from [AmplifyStorageS3Dart.getProperties] to compose a
  /// [HeadObjectRequest] and send to S3 service, then returns a
  /// [S3StorageGetPropertiesResult] based on [HeadObjectOutput] returned by
  /// [S3Client.headObject] API.
  ///
  /// {@macro storage.s3_service.throw_exception_unknown_smithy_exception}
  Future<S3StorageGetPropertiesResult> getProperties({
    required String key,
    required S3StorageGetPropertiesOptions options,
  }) async {
    final resolvedPrefix = await _getResolvedPrefix(
      storageAccessLevel: options.storageAccessLevel,
      identityId: options.targetIdentityId,
    );

    final keyToGetProperties = '$resolvedPrefix$key';

    final request = HeadObjectRequest.build((builder) {
      builder
        ..bucket = _defaultBucket
        ..key = keyToGetProperties;
    });

    try {
      return S3StorageGetPropertiesResult.fromHeadObjectOutput(
        await _defaultS3Client.headObject(request),
        key: key,
      );
    } on UnknownSmithyHttpException catch (error) {
      throw S3StorageException.fromUnknownSmithyHttpException(error);
    }
  }

  /// Takes in input from [AmplifyStorageS3Dart.getUrl] to create a
  /// `GET` [AWSHttpRequest], then `presign` it with [AWSSigV4Signer], and
  /// returns a [S3StorageGetUrlResult] containing the presigned [Uri].
  ///
  /// {@macro storage.s3_service.throw_exception_unknown_smithy_exception}
  Future<S3StorageGetUrlResult> getUrl({
    required String key,
    required S3StorageGetUrlOptions options,
  }) async {
    if (options.checkObjectExistence) {
      // make a HeadObject call for checking object existence
      // it may throw 404 if object doesn't exist in bucket
      await getProperties(
        key: key,
        options: options.targetIdentityId == null
            ? S3StorageGetPropertiesOptions(
                storageAccessLevel: options.storageAccessLevel,
              )
            : S3StorageGetPropertiesOptions.forIdentity(
                options.targetIdentityId!,
              ),
      );
    }

    final resolvedPrefix = await _getResolvedPrefix(
      storageAccessLevel: options.storageAccessLevel,
      identityId: options.targetIdentityId,
    );
    final keyToGetUrl = '$resolvedPrefix$key';

    final host =
        '$_defaultBucket.${_getS3EndpointHost(region: _defaultRegion)}';
    final urlRequest = AWSHttpRequest.get(
      Uri.https(host, keyToGetUrl),
      headers: {
        AWSHeaders.host: host,
      },
    );

    return S3StorageGetUrlResult(
      url: await _awsSigV4Signer.presign(
        urlRequest,
        credentialScope: _signerScope,
        expiresIn: options.expiresIn,
        serviceConfiguration: _defaultS3SignerConfiguration,
      ),
    );
  }

  Future<String> _getResolvedPrefix({
    required StorageAccessLevel storageAccessLevel,
    String? identityId,
  }) async {
    try {
      return await _prefixResolver.resolvePrefix(
        storageAccessLevel: storageAccessLevel,
        identityId: identityId,
      );
    } on Exception catch (error, st) {
      _logger.error('Error happened while resolving prefix', error, st);
      throw S3StorageException(
        'Error happened while resolving prefix.',
        recoverySuggestion:
            'If you are providing a custom prefix resolver, please review the underlying exception to determine the cause.',
        underlyingException: error,
      );
    }
  }

  String _getS3EndpointHost({required String region}) =>
      endpoint_resolver.endpointResolver
          .resolve(
            endpoint_resolver.sdkId,
            region,
          )
          .endpoint
          .uri
          .host;
}
