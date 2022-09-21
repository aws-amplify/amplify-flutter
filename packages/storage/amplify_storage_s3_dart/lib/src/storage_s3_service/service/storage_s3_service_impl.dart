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
        // dependencyManagerOverride should be available only in unit tests
        _defaultS3Client = dependencyManagerOverride == null
            ? S3Client(
                region: defaultRegion,
                credentialsProvider: credentialsProvider,
                s3ClientConfig: _defaultS3ClientConfig,
              )
            : dependencyManagerOverride.getOrCreate<S3Client>(),
        _prefixResolver = prefixResolver,
        _logger = logger;

  static const _defaultS3ClientConfig = S3ClientConfig();

  final String _defaultBucket;
  final S3Client _defaultS3Client;
  final S3StoragePrefixResolver _prefixResolver;
  final AWSLogger _logger;

  /// Takes in input from [AmplifyStorageS3Dart.list] to compose a
  /// [ListObjectsV2Request] and to S3 service, then returns a
  /// [S3StorageListResult] based on [PaginatedResult] returned by
  /// [S3Client.listObjectsV2] API.
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
}
