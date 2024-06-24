// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:math';

import 'package:amplify_core/amplify_core.dart' hide PaginatedResult;
// ignore: implementation_imports
import 'package:amplify_core/src/config/amplify_outputs/storage/storage_outputs.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/exception/s3_storage_exception.dart'
    as s3_exception;
import 'package:amplify_storage_s3_dart/src/path_resolver/s3_path_resolver.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart' as s3;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/common/endpoint_resolver.dart'
    as endpoint_resolver;
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/transfer.dart'
    as transfer;
import 'package:aws_signature_v4/aws_signature_v4.dart' as sigv4;
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart' as smithy;
import 'package:smithy_aws/smithy_aws.dart' as smithy_aws;

/// Zone value symbol for testing.
@visibleForTesting
const testDateTimeNowOverride = #_testDateTimeNowOverride;

/// {@template amplify_storage_s3.storage_s3_service}
/// This is a wrapper implementation over Smithy S3Client as a glue layer
/// between the S3 plugin and S3Client.
/// {@endtemplate}
class StorageS3Service {
  /// {@macro amplify_storage_s3.storage_s3_service}
  factory StorageS3Service({
    required StorageOutputs storageOutputs,
    required S3PathResolver pathResolver,
    required AWSIamAmplifyAuthProvider credentialsProvider,
    required AWSLogger logger,
    required DependencyManager dependencyManager,
  }) {
    final usePathStyle = storageOutputs.bucketName.contains('.');

    if (usePathStyle) {
      logger.warn(
          'Since your bucket name contains dots (`"."`), the StorageS3 plugin'
          ' will use path style URLs to communicate with the S3 service. S3'
          ' Transfer acceleration is not supported for path style URLs. For more'
          ' information, refer to:'
          ' https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html');
    }

    final s3ClientConfig = smithy_aws.S3ClientConfig(
      signerConfiguration: _defaultS3SignerConfiguration,
      usePathStyle: usePathStyle,
    );

    return StorageS3Service._(
      storageOutputs: storageOutputs,
      s3ClientConfig: s3ClientConfig,
      pathResolver: pathResolver,
      credentialsProvider: credentialsProvider,
      logger: logger,
      dependencyManager: dependencyManager,
    );
  }

  StorageS3Service._({
    required StorageOutputs storageOutputs,
    required smithy_aws.S3ClientConfig s3ClientConfig,
    required S3PathResolver pathResolver,
    required AWSIamAmplifyAuthProvider credentialsProvider,
    required AWSLogger logger,
    required DependencyManager dependencyManager,
  })  : _storageOutputs = storageOutputs,
        _defaultS3ClientConfig = s3ClientConfig,
        // dependencyManager.get() => S3Client is used for unit tests
        _defaultS3Client = dependencyManager.get() ??
            s3.S3Client(
              region: storageOutputs.awsRegion,
              credentialsProvider: credentialsProvider,
              s3ClientConfig: s3ClientConfig,
              client: AmplifyHttpClient(dependencyManager)
                ..supportedProtocols = SupportedProtocols.http1,
            ),
        _pathResolver = pathResolver,
        _logger = logger,
        // dependencyManager.get() => sigv4.AWSSigV4Signer is used for unit tests
        _awsSigV4Signer = dependencyManager.get() ??
            sigv4.AWSSigV4Signer(credentialsProvider: credentialsProvider),
        _dependencyManager = dependencyManager,
        _serviceStartingTime = DateTime.now();

  // TODO(HuiSF): re-enable signPayload when the signer supports hashing on
  //  different threads.
  static final _defaultS3SignerConfiguration =
      sigv4.S3ServiceConfiguration(signPayload: false);

  final StorageOutputs _storageOutputs;
  final smithy_aws.S3ClientConfig _defaultS3ClientConfig;
  final s3.S3Client _defaultS3Client;
  final S3PathResolver _pathResolver;
  final AWSLogger _logger;
  final sigv4.AWSSigV4Signer _awsSigV4Signer;
  final DependencyManager _dependencyManager;
  final DateTime _serviceStartingTime;

  sigv4.AWSCredentialScope get _signerScope => sigv4.AWSCredentialScope(
        region: _storageOutputs.awsRegion,
        service: AWSService.s3,
      );

  transfer.TransferDatabase get _transferDatabase =>
      _dependencyManager.getOrCreate();

  /// Takes in input from [AmplifyStorageS3Dart.list] API to compose a
  /// [s3.ListObjectsV2Request] and to S3 service, then returns a
  /// [S3ListResult] based on [smithy.PaginatedResult] returned by
  /// [s3.S3Client.listObjectsV2] API.
  ///
  /// {@template storage.s3_service.throw_exception_unknown_smithy_exception}
  /// May throw exception based on
  /// service returned [smithy.UnknownSmithyHttpException] if any.
  /// {@endtemplate}
  Future<S3ListResult> list({
    required StoragePath path,
    required StorageListOptions options,
  }) async {
    final s3PluginOptions = options.pluginOptions as S3ListPluginOptions? ??
        const S3ListPluginOptions();

    final resolvedPath = await _pathResolver.resolvePath(path: path);

    if (!s3PluginOptions.listAll) {
      final request = s3.ListObjectsV2Request.build((builder) {
        builder
          ..bucket = _storageOutputs.bucketName
          ..prefix = resolvedPath
          ..maxKeys = options.pageSize
          ..continuationToken = options.nextToken
          ..delimiter = s3PluginOptions.excludeSubPaths
              ? s3PluginOptions.delimiter
              : null;
      });

      try {
        return S3ListResult.fromPaginatedResult(
          await _defaultS3Client.listObjectsV2(request).result,
        );
      } on smithy.UnknownSmithyHttpException catch (error) {
        // S3Client.headObject may return 403 error
        throw error.toStorageException();
      } on AWSHttpException catch (error) {
        throw error.toNetworkException();
      }
    }

    smithy.PaginatedResult<s3.ListObjectsV2Output, int, String> listResult;
    S3ListResult recursiveResult;

    try {
      final request = s3.ListObjectsV2Request.build((builder) {
        builder
          ..bucket = _storageOutputs.bucketName
          ..prefix = resolvedPath
          ..delimiter = s3PluginOptions.excludeSubPaths
              ? s3PluginOptions.delimiter
              : null;
      });

      listResult = await _defaultS3Client.listObjectsV2(request).result;
      recursiveResult = S3ListResult.fromPaginatedResult(
        listResult,
      );

      while (listResult.hasNext) {
        listResult = await listResult.next().result;
        recursiveResult = recursiveResult.merge(
          S3ListResult.fromPaginatedResult(
            listResult,
          ),
        );
      }

      return recursiveResult;
    } on smithy.UnknownSmithyHttpException catch (error) {
      // S3Client.headObject may return 403 error
      throw error.toStorageException();
    } on AWSHttpException catch (error) {
      throw error.toNetworkException();
    }
  }

  /// Takes in input from [AmplifyStorageS3Dart.getProperties] API to compose
  /// a [s3.HeadObjectRequest] and send to S3 service, then returns a
  /// [S3GetPropertiesResult] based on the [s3.HeadObjectOutput] returned
  /// by [s3.S3Client.headObject] API.
  ///
  /// {@macro storage.s3_service.throw_exception_unknown_smithy_exception}
  Future<S3GetPropertiesResult> getProperties({
    required StoragePath path,
    required StorageGetPropertiesOptions options,
  }) async {
    final resolvedPath = await _pathResolver.resolvePath(path: path);

    return S3GetPropertiesResult(
      storageItem: S3Item.fromHeadObjectOutput(
        await headObject(
          s3client: _defaultS3Client,
          bucket: _storageOutputs.bucketName,
          key: resolvedPath,
        ),
        path: resolvedPath,
      ),
    );
  }

  /// Takes in input from [AmplifyStorageS3Dart.getUrl] API to create a
  /// `GET` [AWSHttpRequest], then `presign` it with [sigv4.AWSSigV4Signer], and
  /// returns a [S3GetUrlResult] containing the presigned [Uri].
  ///
  /// {@macro storage.s3_service.throw_exception_unknown_smithy_exception}
  Future<S3GetUrlResult> getUrl({
    required StoragePath path,
    required StorageGetUrlOptions options,
  }) async {
    final s3PluginOptions = options.pluginOptions as S3GetUrlPluginOptions? ??
        const S3GetUrlPluginOptions();

    if (s3PluginOptions.useAccelerateEndpoint &&
        _defaultS3ClientConfig.usePathStyle) {
      throw s3_exception.accelerateEndpointUnusable;
    }

    if (s3PluginOptions.validateObjectExistence) {
      // make a HeadObject call for validating object existence
      // the validation may throw exceptions that are thrown from
      // the `getProperties` API (i.e. HeadObject)
      await getProperties(
        path: path,
        options: const StorageGetPropertiesOptions(),
      );
    }

    var resolvedPath = await _pathResolver.resolvePath(path: path);
    var host =
        '${_storageOutputs.bucketName}.${_getS3EndpointHost(region: _storageOutputs.awsRegion)}';
    if (_defaultS3ClientConfig.usePathStyle) {
      host = host.replaceFirst('${_storageOutputs.bucketName}.', '');
      resolvedPath = '${_storageOutputs.bucketName}/$resolvedPath';
    } else if (s3PluginOptions.useAccelerateEndpoint) {
      // https: //docs.aws.amazon.com/AmazonS3/latest/userguide/transfer-acceleration-getting-started.html
      host = host
          .replaceFirst(RegExp('${_storageOutputs.awsRegion}\\.'), '')
          .replaceFirst(RegExp(r'\.s3\.'), '.s3-accelerate.');
    }

    final urlRequest = AWSHttpRequest.raw(
      method: AWSHttpMethod.get,
      host: host,
      path: '/$resolvedPath',
    );

    return S3GetUrlResult(
      url: await _awsSigV4Signer.presign(
        urlRequest,
        credentialScope: _signerScope,
        expiresIn: s3PluginOptions.expiresIn,
        serviceConfiguration: _defaultS3SignerConfiguration,
      ),
      expiresAt:
          (Zone.current[testDateTimeNowOverride] as DateTime? ?? DateTime.now())
              .add(s3PluginOptions.expiresIn),
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
    required StoragePath path,
    required StorageDownloadDataOptions options,
    FutureOr<void> Function()? preStart,
    void Function(S3TransferProgress)? onProgress,
    void Function(List<int>)? onData,
    FutureOr<void> Function()? onDone,
    FutureOr<void> Function()? onError,
  }) {
    final downloadDataTask = S3DownloadTask(
      s3Client: _defaultS3Client,
      defaultS3ClientConfig: _defaultS3ClientConfig,
      bucket: _storageOutputs.bucketName,
      path: path,
      options: options,
      pathResolver: _pathResolver,
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
    required StoragePath path,
    required S3DataPayload dataPayload,
    required StorageUploadDataOptions options,
    void Function(S3TransferProgress)? onProgress,
    FutureOr<void> Function()? onDone,
    FutureOr<void> Function()? onError,
  }) {
    final uploadDataTask = S3UploadTask.fromDataPayload(
      dataPayload,
      s3Client: _defaultS3Client,
      defaultS3ClientConfig: _defaultS3ClientConfig,
      bucket: _storageOutputs.bucketName,
      path: path,
      options: options,
      pathResolver: _pathResolver,
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
    required StoragePath path,
    required AWSFile localFile,
    required StorageUploadFileOptions options,
    void Function(S3TransferProgress)? onProgress,
    FutureOr<void> Function()? onDone,
    FutureOr<void> Function()? onError,
  }) {
    final s3PluginOptions =
        options.pluginOptions as S3UploadFilePluginOptions? ??
            const S3UploadFilePluginOptions();
    final uploadDataOptions = StorageUploadDataOptions(
      metadata: options.metadata,
      pluginOptions: S3UploadDataPluginOptions(
        getProperties: s3PluginOptions.getProperties,
        useAccelerateEndpoint: s3PluginOptions.useAccelerateEndpoint,
      ),
    );
    final uploadDataTask = S3UploadTask.fromAWSFile(
      localFile,
      s3Client: _defaultS3Client,
      defaultS3ClientConfig: _defaultS3ClientConfig,
      bucket: _storageOutputs.bucketName,
      path: path,
      options: uploadDataOptions,
      pathResolver: _pathResolver,
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
  /// When [S3CopyPluginOptions.getProperties] is set to `true`, when the
  /// [s3.CopyObjectRequest] succeeds, the API creates a [s3.HeadObjectRequest]
  /// with the `key` of the `destination`, and sends to S3 Service, then
  /// returns a [S3CopyResult] based on the [s3.HeadObjectOutput]
  /// returned by [s3.S3Client.headObject] API.
  ///
  /// {@macro storage.s3_service.throw_exception_unknown_smithy_exception}
  Future<S3CopyResult> copy({
    required StoragePath source,
    required StoragePath destination,
    required StorageCopyOptions options,
  }) async {
    final s3PluginOptions = options.pluginOptions as S3CopyPluginOptions? ??
        const S3CopyPluginOptions();

    final [sourcePath, destinationPath] = await _pathResolver.resolvePaths(
      paths: [source, destination],
    );

    final copyRequest = s3.CopyObjectRequest.build((builder) {
      builder
        ..bucket = _storageOutputs.bucketName
        ..copySource = '${_storageOutputs.bucketName}/$sourcePath'
        ..key = destinationPath
        ..metadataDirective = s3.MetadataDirective.copy;
    });

    try {
      await _defaultS3Client.copyObject(copyRequest).result;
    } on smithy.UnknownSmithyHttpException catch (error) {
      // S3Client.copyObject may return 403 or 404 error
      throw error.toStorageException();
    } on AWSHttpException catch (error) {
      throw error.toNetworkException();
    }

    return S3CopyResult(
      copiedItem: s3PluginOptions.getProperties
          ? S3Item.fromHeadObjectOutput(
              await headObject(
                s3client: _defaultS3Client,
                bucket: _storageOutputs.bucketName,
                key: destinationPath,
              ),
              path: destinationPath,
            )
          : S3Item(
              path: destinationPath,
            ),
    );
  }

  /// Takes in input from [AmplifyStorageS3Dart.remove] API to compose a
  /// [s3.DeleteObjectRequest] and send to S3 service, then returns a
  /// [S3RemoveResult] based on the `key` to be removed.
  ///
  /// {@macro storage.s3_service.throw_exception_unknown_smithy_exception}
  Future<S3RemoveResult> remove({
    required StoragePath path,
    required StorageRemoveOptions options,
  }) async {
    final resolvedPath = await _pathResolver.resolvePath(path: path);

    await _deleteObject(
      s3client: _defaultS3Client,
      bucket: _storageOutputs.bucketName,
      key: resolvedPath,
    );

    return S3RemoveResult(
      removedItem: S3Item(path: resolvedPath),
    );
  }

  /// Takes in input from [AmplifyStorageS3Dart.removeMany] API to compose a
  /// [s3.DeleteObjectsRequest] and send to S3 service, then returns a
  /// [S3RemoveManyResult] based on the [s3.DeleteObjectsOutput] returned
  /// by [s3.S3Client.deleteObjects] API.
  ///
  /// {@macro storage.s3_service.throw_exception_unknown_smithy_exception}
  Future<S3RemoveManyResult> removeMany({
    required List<StoragePath> paths,
    required StorageRemoveManyOptions options,
  }) async {
    // Each request can contain up to 1000 objects to remove
    // https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObjects.html
    const defaultBatchSize = 1000;

    final resolvedPaths = await _pathResolver.resolvePaths(paths: paths);

    final objectIdentifiersToRemove =
        resolvedPaths.map((path) => s3.ObjectIdentifier(key: path)).toList();

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
          ..bucket = _storageOutputs.bucketName
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
                    ),
                  ) ??
              [],
        );
        removedErrors.addAll(output.errors?.toList() ?? []);
      } on smithy.UnknownSmithyHttpException catch (error) {
        // S3Client.deleteObjects may return 403
        throw error.toStorageException();
      } on AWSHttpException catch (error) {
        throw error.toNetworkException();
      } finally {
        objectIdentifiersToRemove.removeRange(0, numOfBatchedItems);
      }
    }

    return S3RemoveManyResult(
      removedItems: removedItems,
      errors: removedErrors,
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
      throw error.toStorageException();
    } on AWSHttpException catch (error) {
      throw error.toNetworkException();
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

  /// Creates and sends a [s3.HeadObjectRequest] to S3 service, and then
  /// returns a [s3.HeadObjectOutput].
  ///
  /// This API is only used internally.
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
      throw error.toStorageException();
    } on AWSHttpException catch (error) {
      throw error.toNetworkException();
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
          ..bucket = _storageOutputs.bucketName
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
