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
import 'dart:math';

import 'package:amplify_core/amplify_core.dart' hide PaginatedResult;
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart' as s3;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/common/endpoint_resolver.dart'
    as endpoint_resolver;
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/transfer.dart'
    as transfer;

import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart' as smithy;
import 'package:smithy_aws/smithy_aws.dart';

/// Zone value symbol for testing.
@visibleForTesting
const testDateTimeNowOverride = #_testDateTimeNowOverride;

/// {@template amplify_storage_s3.storage_s3_service}
/// This is a wrapper implementation over Smithy S3Client as a glue layer
/// between the S3 plugin and S3Client.
/// {@endtemplate}
class StorageS3Service {
  /// {@macro amplify_storage_s3.storage_s3_service}
  StorageS3Service({
    required String defaultBucket,
    required String defaultRegion,
    required S3PrefixResolver prefixResolver,
    required AWSIamAmplifyAuthProvider credentialsProvider,
    required AWSLogger logger,
    String? delimiter,
    required DependencyManager dependencyManager,
  })  : _defaultBucket = defaultBucket,
        _defaultRegion = defaultRegion,
        _delimiter = delimiter ?? '/',
        // dependencyManager.get() => S3Client is used for unit tests
        _defaultS3Client = dependencyManager.get() ??
            s3.S3Client(
              region: defaultRegion,
              credentialsProvider: credentialsProvider,
              s3ClientConfig: _defaultS3ClientConfig,
              client: AmplifyHttpClient()
                ..supportedProtocols = SupportedProtocols.http1,
            ),
        _prefixResolver = prefixResolver,
        _logger = logger,
        _signerScope = AWSCredentialScope(
          region: defaultRegion,
          service: AWSService.s3,
        ),
        // dependencyManager.get() => AWSSigV4Signer is used for unit tests
        _awsSigV4Signer = dependencyManager.get() ??
            AWSSigV4Signer(credentialsProvider: credentialsProvider),
        _dependencyManager = dependencyManager,
        _serviceStartingTime = DateTime.now();

  static const _defaultS3ClientConfig = S3ClientConfig();
  static final _defaultS3SignerConfiguration = S3ServiceConfiguration();

  final String _defaultBucket;
  final String _defaultRegion;
  final String _delimiter;
  final s3.S3Client _defaultS3Client;
  final S3PrefixResolver _prefixResolver;
  final AWSLogger _logger;
  final AWSCredentialScope _signerScope;
  final AWSSigV4Signer _awsSigV4Signer;
  final DependencyManager _dependencyManager;
  final DateTime _serviceStartingTime;

  transfer.TransferDatabase get _transferDatabase =>
      _dependencyManager.getOrCreate(transfer.TransferDatabase.token);

  /// Takes in input from [AmplifyStorageS3Dart.list] API to compose a
  /// [s3.ListObjectsV2Request] and to S3 service, then returns a
  /// [S3ListResult] based on [smithy.PaginatedResult] returned by
  /// [s3.S3Client.listObjectsV2] API.
  ///
  /// {@template storage.s3_service.throw_exception_unknown_smithy_exception}
  /// May throw [S3Exception] based on
  /// service returned [smithy.UnknownSmithyHttpException] if any.
  /// {@endtemplate}
  Future<S3ListResult> list({
    String? path,
    required S3ListOptions options,
  }) async {
    final resolvedPrefix = await getResolvedPrefix(
      prefixResolver: _prefixResolver,
      logger: _logger,
      accessLevel: options.accessLevel,
      identityId: options.targetIdentityId,
    );

    final listTargetPrefix = '$resolvedPrefix${path ?? ''}';

    final request = s3.ListObjectsV2Request.build((builder) {
      builder
        ..bucket = _defaultBucket
        ..prefix = listTargetPrefix
        ..maxKeys = options.pageSize
        ..continuationToken = options.nextToken
        ..delimiter = options.excludeSubPaths ? _delimiter : null;
    });

    try {
      return S3ListResult.fromPaginatedResult(
        await _defaultS3Client.listObjectsV2(request).result,
        prefixToDrop: resolvedPrefix,
      );
    } on smithy.UnknownSmithyHttpException catch (error) {
      // S3Client.headObject may return 403 error
      throw S3Exception.fromUnknownSmithyHttpException(error);
    }
  }

  /// Takes in input from [AmplifyStorageS3Dart.getProperties] API to compose
  /// a [s3.HeadObjectRequest] and send to S3 service, then returns a
  /// [S3GetPropertiesResult] based on the [s3.HeadObjectOutput] returned
  /// by [s3.S3Client.headObject] API.
  ///
  /// {@macro storage.s3_service.throw_exception_unknown_smithy_exception}
  Future<S3GetPropertiesResult> getProperties({
    required String key,
    required S3GetPropertiesOptions options,
  }) async {
    final resolvedPrefix = await getResolvedPrefix(
      prefixResolver: _prefixResolver,
      logger: _logger,
      accessLevel: options.accessLevel,
      identityId: options.targetIdentityId,
    );

    final keyToGetProperties = '$resolvedPrefix$key';

    return S3GetPropertiesResult(
      storageItem: S3Item.fromHeadObjectOutput(
        await headObject(
          s3client: _defaultS3Client,
          bucket: _defaultBucket,
          key: keyToGetProperties,
        ),
        key: key,
      ),
    );
  }

  /// Takes in input from [AmplifyStorageS3Dart.getUrl] API to create a
  /// `GET` [AWSHttpRequest], then `presign` it with [AWSSigV4Signer], and
  /// returns a [S3GetUrlResult] containing the presigned [Uri].
  ///
  /// {@macro storage.s3_service.throw_exception_unknown_smithy_exception}
  Future<S3GetUrlResult> getUrl({
    required String key,
    required S3GetUrlOptions options,
  }) async {
    if (options.checkObjectExistence) {
      // make a HeadObject call for checking object existence
      // it may throw 404 if object doesn't exist in bucket
      final targetIdentityId = options.targetIdentityId;
      final getPropertiesOptions = targetIdentityId == null
          ? S3GetPropertiesOptions(
              accessLevel: options.accessLevel,
            )
          : S3GetPropertiesOptions.forIdentity(
              targetIdentityId,
            );
      await getProperties(
        key: key,
        options: getPropertiesOptions,
      );
    }

    final resolvedPrefix = await getResolvedPrefix(
      prefixResolver: _prefixResolver,
      logger: _logger,
      accessLevel: options.accessLevel,
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

    return S3GetUrlResult(
      url: await _awsSigV4Signer.presign(
        urlRequest,
        credentialScope: _signerScope,
        expiresIn: options.expiresIn,
        serviceConfiguration: _defaultS3SignerConfiguration,
      ),
      expiresAt:
          (Zone.current[testDateTimeNowOverride] as DateTime? ?? DateTime.now())
              .add(options.expiresIn),
    );
  }

  /// Takes in the input from [AmplifyStorageS3Dart.downloadData] API, and
  /// creates a [S3DownloadTask], to start the download process, then returns
  /// the [S3DownloadTask].
  ///
  /// {@macro amplify_storage_s3_dart.download_task.pre_start}
  ///
  /// {@macro amplify_storage_s3_dart.download_task.on_progress}
  ///
  /// {@macro amplify_storage_s3_dart.download_task.on_receiving_bytes}
  ///
  /// {@macro amplify_storage_s3_dart.download_task.on_done}
  S3DownloadTask downloadData({
    required String key,
    required S3DownloadDataOptions options,
    FutureOr<void> Function()? preStart,
    void Function(S3TransferProgress)? onProgress,
    void Function(List<int>)? onData,
    FutureOr<void> Function()? onDone,
    FutureOr<void> Function()? onError,
  }) {
    final downloadDataTask = S3DownloadTask(
      s3Client: _defaultS3Client,
      bucket: _defaultBucket,
      key: key,
      options: options,
      prefixResolver: _prefixResolver,
      logger: _logger,
      onProgress: onProgress,
      onData: onData,
      preStart: preStart,
      onDone: onDone,
      onError: onError,
    );

    unawaited(downloadDataTask.start());

    return downloadDataTask;
  }

  /// Takes in the input from [AmplifyStorageS3Dart.uploadData] API, and creates
  /// a [S3UploadTask], to start the upload process, then returns the
  /// [S3UploadTask].
  S3UploadTask uploadData({
    required String key,
    required S3DataPayload dataPayload,
    required S3UploadDataOptions options,
    void Function(S3TransferProgress)? onProgress,
    FutureOr<void> Function()? onDone,
    FutureOr<void> Function()? onError,
  }) {
    final uploadDataTask = S3UploadTask.fromDataPayload(
      dataPayload,
      s3Client: _defaultS3Client,
      bucket: _defaultBucket,
      key: key,
      options: options,
      prefixResolver: _prefixResolver,
      logger: _logger,
      onProgress: onProgress,
      transferDatabase: _transferDatabase,
    );

    unawaited(uploadDataTask.start());

    return uploadDataTask;
  }

  /// Takes in the input from [AmplifyStorageS3Dart.uploadFile] API, and creates
  /// a [S3UploadTask], to start the upload process, then returns the
  /// [S3UploadTask].
  S3UploadTask uploadFile({
    required String key,
    required AWSFile localFile,
    required S3UploadFileOptions options,
    void Function(S3TransferProgress)? onProgress,
    FutureOr<void> Function()? onDone,
    FutureOr<void> Function()? onError,
  }) {
    final uploadDataOptions = S3UploadDataOptions(
      accessLevel: options.accessLevel,
      getProperties: options.getProperties,
      metadata: options.metadata,
    );
    final uploadDataTask = S3UploadTask.fromAWSFile(
      localFile,
      s3Client: _defaultS3Client,
      bucket: _defaultBucket,
      key: key,
      options: uploadDataOptions,
      prefixResolver: _prefixResolver,
      logger: _logger,
      onProgress: onProgress,
      transferDatabase: _transferDatabase,
    );

    unawaited(uploadDataTask.start());

    return uploadDataTask;
  }

  /// Takes in input from [AmplifyStorageS3Dart.copy] API to compose a
  /// [s3.CopyObjectRequest] and send to S3 service to copy `source` to
  /// `destination`, then returns a [S3CopyResult] based on the `key` of
  /// `destination`.
  ///
  /// When [S3CopyOptions.getProperties] is set to `true`, when the
  /// [s3.CopyObjectRequest] succeeds, the API creates a [s3.HeadObjectRequest]
  /// with the `key` of the `destination`, and sends to S3 Service, then
  /// returns a [S3CopyResult] based on the [s3.HeadObjectOutput]
  /// returned by [s3.S3Client.headObject] API.
  ///
  /// {@macro storage.s3_service.throw_exception_unknown_smithy_exception}
  Future<S3CopyResult> copy({
    required S3ItemWithAccessLevel source,
    required S3ItemWithAccessLevel destination,
    required S3CopyOptions options,
  }) async {
    final resolvedPrefixes = await Future.wait([
      getResolvedPrefix(
        prefixResolver: _prefixResolver,
        logger: _logger,
        accessLevel: source.accessLevel,
        identityId: source.targetIdentityId,
      ),
      getResolvedPrefix(
        prefixResolver: _prefixResolver,
        logger: _logger,
        accessLevel: destination.accessLevel,
        identityId: destination.targetIdentityId,
      )
    ]);
    final sourceKey = '${resolvedPrefixes[0]}${source.storageItem.key}';
    final destinationKey =
        '${resolvedPrefixes[1]}${destination.storageItem.key}';

    final copyRequest = s3.CopyObjectRequest.build((builder) {
      builder
        ..bucket = _defaultBucket
        ..copySource = '$_defaultBucket/$sourceKey'
        ..key = destinationKey
        ..metadataDirective = s3.MetadataDirective.copy;
    });

    try {
      await _defaultS3Client.copyObject(copyRequest).result;
    } on smithy.UnknownSmithyHttpException catch (error) {
      // S3Client.copyObject may return 403 or 404 error
      throw S3Exception.fromUnknownSmithyHttpException(error);
    }

    return S3CopyResult(
      copiedItem: options.getProperties
          ? S3Item.fromHeadObjectOutput(
              await headObject(
                s3client: _defaultS3Client,
                bucket: _defaultBucket,
                key: destinationKey,
              ),
              key: destination.storageItem.key,
            )
          : S3Item(key: destination.storageItem.key),
    );
  }

  /// Takes in input from [AmplifyStorageS3Dart.move] API to compose a
  /// [s3.CopyObjectRequest] and send to S3 service to copy `source` to
  /// `destination`, followed by a [s3.DeleteObjectRequest] to delete the
  /// `source`, then returns a [S3MoveResult] based on the `key` of
  /// `destination`.
  ///
  /// When [S3CopyOptions.getProperties] is set to `true`, when both
  /// [s3.CopyObjectRequest] and [s3.DeleteObjectRequest] succeed, the API
  /// creates a [s3.HeadObjectRequest] with the `key` of the `destination`,
  /// and sends to S3 Service, then returns a [S3CopyResult] based on
  /// the [s3.HeadObjectOutput] returned by [s3.S3Client.headObject] API.
  ///
  /// {@macro storage.s3_service.throw_exception_unknown_smithy_exception}
  Future<S3MoveResult> move({
    required S3ItemWithAccessLevel source,
    required S3ItemWithAccessLevel destination,
    required S3MoveOptions options,
  }) async {
    late S3CopyResult copyResult;

    try {
      copyResult = await copy(
        source: source,
        destination: destination,
        options: S3CopyOptions(
          getProperties: options.getProperties,
        ),
      );
    } on S3Exception catch (error) {
      throw S3Exception(
        'Copy the source object failed while moving it due to: ${error.message}',
        recoverySuggestion: error.recoverySuggestion,
        underlyingException: error.underlyingException,
      );
    }

    final resolvedSourcePrefix = await getResolvedPrefix(
      prefixResolver: _prefixResolver,
      logger: _logger,
      accessLevel: source.accessLevel,
      identityId: source.targetIdentityId,
    );

    final keyToRemove = '$resolvedSourcePrefix${source.storageItem.key}';

    try {
      await _deleteObject(
        s3client: _defaultS3Client,
        bucket: _defaultBucket,
        key: keyToRemove,
      );
    } on S3Exception catch (error) {
      throw S3Exception(
        'Delete the source object failed while moving it due to: ${error.message}',
        recoverySuggestion: error.recoverySuggestion,
        underlyingException: error.underlyingException,
      );
    }

    return S3MoveResult(movedItem: copyResult.copiedItem);
  }

  /// Takes in input from [AmplifyStorageS3Dart.remove] API to compose a
  /// [s3.DeleteObjectRequest] and send to S3 service, then returns a
  /// [S3RemoveResult] based on the `key` to be removed.
  ///
  /// {@macro storage.s3_service.throw_exception_unknown_smithy_exception}
  Future<S3RemoveResult> remove({
    required String key,
    required S3RemoveOptions options,
  }) async {
    final resolvedPrefix = await getResolvedPrefix(
      prefixResolver: _prefixResolver,
      logger: _logger,
      accessLevel: options.accessLevel,
    );

    final keyToRemove = '$resolvedPrefix$key';

    await _deleteObject(
      s3client: _defaultS3Client,
      bucket: _defaultBucket,
      key: keyToRemove,
    );

    return S3RemoveResult(
      removedItem: S3Item(key: key),
    );
  }

  /// Takes in input from [AmplifyStorageS3Dart.removeMany] API to compose a
  /// [s3.DeleteObjectsRequest] and send to S3 service, then returns a
  /// [S3RemoveManyResult] based on the [s3.DeleteObjectsOutput] returned
  /// by [s3.S3Client.deleteObjects] API.
  ///
  /// {@macro storage.s3_service.throw_exception_unknown_smithy_exception}
  Future<S3RemoveManyResult> removeMany({
    required List<String> keys,
    required S3RemoveManyOptions options,
  }) async {
    // Each request can contain up to 1000 objects to remove
    // https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObjects.html
    const defaultBatchSize = 1000;
    final resolvedPrefix = await getResolvedPrefix(
      prefixResolver: _prefixResolver,
      logger: _logger,
      accessLevel: options.accessLevel,
    );

    final objectIdentifiersToRemove = keys
        .map((key) => s3.ObjectIdentifier(key: '$resolvedPrefix$key'))
        .toList();

    final removedItems = <S3Item>[];
    final removedErrors = <s3.Error>[];

    while (objectIdentifiersToRemove.isNotEmpty) {
      final numOfBatchedItems =
          min(defaultBatchSize, objectIdentifiersToRemove.length);
      final bachedObjectIdentifiers = objectIdentifiersToRemove.sublist(
        0,
        numOfBatchedItems,
      );
      final request = s3.DeleteObjectsRequest.build((builder) {
        builder
          ..bucket = _defaultBucket
          // force to use sha256 instead of md5
          ..checksumAlgorithm = s3.ChecksumAlgorithm.sha256
          ..delete = s3.Delete.build((builder) {
            builder.objects.addAll(bachedObjectIdentifiers);
          }).toBuilder();
      });
      try {
        final output = await _defaultS3Client.deleteObjects(request).result;
        removedItems.addAll(
          output.deleted?.toList().map(
                    (removedObject) => S3Item.fromS3Object(
                      s3.S3Object(key: removedObject.key),
                      prefixToDrop: resolvedPrefix,
                    ),
                  ) ??
              [],
        );
        removedErrors.addAll(output.errors?.toList() ?? []);
      } on smithy.UnknownSmithyHttpException catch (error) {
        // S3Client.deleteObjects may return 403
        throw S3Exception.fromUnknownSmithyHttpException(error);
      } finally {
        objectIdentifiersToRemove.removeRange(0, numOfBatchedItems);
      }
    }

    return S3RemoveManyResult(
      removedItems: removedItems,
      removeErrors: removedErrors,
    );
  }

  static Future<s3.DeleteObjectOutput> _deleteObject({
    required s3.S3Client s3client,
    required String bucket,
    required String key,
  }) async {
    final request = s3.DeleteObjectRequest.build((builder) {
      builder
        ..bucket = bucket
        ..key = key;
    });

    try {
      // The current capability of the `remove` API doesn't require parsing
      // the [DeleteObjectOutput] returned by [S3Client.deleteObject].
      return await s3client.deleteObject(request).result;
    } on smithy.UnknownSmithyHttpException catch (error) {
      // S3Client.deleteObject may return 403, for deleting a non-existing
      // object, the API call returns a successful response
      throw S3Exception.fromUnknownSmithyHttpException(error);
    }
  }

  static String _getS3EndpointHost({required String region}) =>
      endpoint_resolver.endpointResolver
          .resolve(
            endpoint_resolver.sdkId,
            region,
          )
          .endpoint
          .uri
          .host;

  /// Resolve a client object key to a "full" object key with proper prefix.
  ///
  /// This API is used only internally.
  @internal
  static Future<String> getResolvedPrefix({
    required S3PrefixResolver prefixResolver,
    required AWSLogger logger,
    required StorageAccessLevel accessLevel,
    String? identityId,
  }) async {
    try {
      return await prefixResolver.resolvePrefix(
        accessLevel: accessLevel,
        identityId: identityId,
      );
    } on Exception catch (error, st) {
      logger.error('Error happened while resolving prefix', error, st);
      throw S3Exception(
        'Error happened while resolving prefix.',
        recoverySuggestion:
            'If you are providing a custom prefix resolver, please review the underlying exception to determine the cause.',
        underlyingException: error,
      );
    }
  }

  /// Creates and sends a [s3.HeadObjectRequest] to S3 service, and then
  /// returns a [s3.HeadObjectOutput].
  ///
  /// This API is used only internally.
  @internal
  static Future<s3.HeadObjectOutput> headObject({
    required s3.S3Client s3client,
    required String bucket,
    required String key,
  }) async {
    final request = s3.HeadObjectRequest.build((builder) {
      builder
        ..bucket = bucket
        ..key = key;
    });

    try {
      return await s3client.headObject(request).result;
    } on smithy.UnknownSmithyHttpException catch (error) {
      // S3Client.headObject may return 403 or 404 error
      throw S3Exception.fromUnknownSmithyHttpException(error);
    }
  }

  /// As background operation is not yet supported, in order to avoid incomplete
  /// multipart uploads (caused by App process being killed) from occupying
  /// storage space, [s3.AbortMultipartUploadRequest]s are sent for each
  /// multipart upload id stored in the [transfer.TransferDatabase] to remove
  /// uploaded parts upon [StorageS3Service] initiation.
  @internal
  Future<void> abortIncompleteMultipartUploads() async {
    final records = await _transferDatabase
        .getMultipartUploadRecordsCreatedBefore(_serviceStartingTime);

    for (final record in records) {
      final request = s3.AbortMultipartUploadRequest.build((builder) {
        builder
          ..bucket = _defaultBucket
          ..key = record.objectKey
          ..uploadId = record.uploadId;
      });

      try {
        await _defaultS3Client.abortMultipartUpload(request).result;
        await _transferDatabase.deleteTransferRecords(record.uploadId);
      } on Exception catch (error) {
        _logger.error('Failed to abort multipart upload due to: $error');
      }
    }
  }
}
