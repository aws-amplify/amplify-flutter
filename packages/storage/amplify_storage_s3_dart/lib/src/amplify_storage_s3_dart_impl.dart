// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:typed_data';

import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:amplify_core/src/config/amplify_outputs/storage/storage_outputs.dart';
import 'package:amplify_db_common_dart/amplify_db_common_dart.dart'
    as db_common;
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/path_resolver/s3_path_resolver.dart';
import 'package:amplify_storage_s3_dart/src/platform_impl/download_file/download_file.dart'
    as download_file_impl;
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/transfer.dart'
    as transfer;
import 'package:amplify_storage_s3_dart/src/utils/app_path_provider/app_path_provider.dart';
import 'package:meta/meta.dart';

/// A symbol used for unit tests.
@visibleForTesting
const zIsTest = #_zIsTest;

bool get _zIsTest => Zone.current[zIsTest] as bool? ?? false;

/// {@template amplify_storage_s3_dart.amplify_storage_s3_plugin_dart}
/// The Dart Storage S3 plugin for the Amplify Storage Category.
/// {@endtemplate}
class AmplifyStorageS3Dart extends StoragePluginInterface
    with AWSDebuggable, AWSLoggerMixin {
  /// {@macro amplify_storage_s3_dart.amplify_storage_s3_plugin_dart}
  AmplifyStorageS3Dart({
    @visibleForTesting DependencyManager? dependencyManagerOverride,
  }) : _dependencyManagerOverride = dependencyManagerOverride;

  /// {@template amplify_storage_s3_dart.plugin_key}
  /// A plugin key which can be used with `Amplify.Storage.getPlugin` to retrieve
  /// a S3-specific Storage category interface.
  /// {@endtemplate}
  static const StoragePluginKey<AmplifyStorageS3Dart> pluginKey =
      _AmplifyStorageS3DartPluginKey();

  final DependencyManager? _dependencyManagerOverride;

  @override
  DependencyManager get dependencies =>
      _dependencyManagerOverride ?? super.dependencies;

  /// The [StorageOutputs] of the [AmplifyStorageS3Dart] plugin.
  @protected
  late final StorageOutputs storageOutputs;

  late S3PathResolver _pathResolver;

  /// Gets the instance of dependent [StorageS3Service].
  @protected
  StorageS3Service get storageS3Service => dependencies.expect();

  AppPathProvider get _appPathProvider => dependencies.getOrCreate();

  @override
  Future<void> configure({
    AmplifyOutputs? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    if (config?.storage == null) {
      throw ConfigurationError('No Storage S3 plugin config detected.');
    }
    storageOutputs = config!.storage!;

    final identityProvider = authProviderRepo
        .getAuthProvider(APIAuthorizationType.userPools.authProviderToken);

    if (identityProvider == null) {
      throw ConfigurationError(
        'No Cognito User Pool provider found for Storage.',
        recoverySuggestion:
            "If you haven't already, please add amplify_auth_cognito plugin to your App.",
      );
    }

    _pathResolver = S3PathResolver(
      identityProvider: identityProvider,
    );

    _pathResolver = S3PathResolver(
      identityProvider: identityProvider,
    );

    final credentialsProvider = authProviderRepo
        .getAuthProvider(APIAuthorizationType.iam.authProviderToken);

    if (credentialsProvider == null) {
      throw ConfigurationError(
        'No credential provider found for Storage.',
        recoverySuggestion:
            "If you haven't already, please add amplify_auth_cognito plugin to your App.",
      );
    }

    dependencies
      ..addInstance<db_common.Connect>(db_common.connect)
      ..addBuilder<AppPathProvider>((_) => const S3DartAppPathProvider())
      ..addBuilder(transfer.TransferDatabase.new)
      ..addInstance<StorageS3Service>(
        StorageS3Service(
          credentialsProvider: credentialsProvider,
          storageOutputs: storageOutputs,
          pathResolver: _pathResolver,
          logger: logger,
          dependencyManager: dependencies,
        ),
      );

    scheduleMicrotask(() async {
      // ignore: invalid_use_of_internal_member
      await Amplify.asyncConfig;
      if (_zIsTest) {
        return;
      }
      unawaited(storageS3Service.abortIncompleteMultipartUploads());
    });
  }

  @override
  S3ListOperation list({
    required StoragePath path,
    StorageListOptions? options,
  }) {
    final s3PluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const S3ListPluginOptions(),
    );
    final s3Options = StorageListOptions(
      pluginOptions: s3PluginOptions,
      nextToken: options?.nextToken,
      pageSize: options?.pageSize ?? 1000,
    );

    return S3ListOperation(
      request: StorageListRequest(
        path: path,
        options: options,
      ),
      result: storageS3Service.list(
        path: path,
        options: s3Options,
      ),
    );
  }

  @override
  S3GetPropertiesOperation getProperties({
    required StoragePath path,
    StorageGetPropertiesOptions? options,
  }) {
    final s3PluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const S3GetPropertiesPluginOptions(),
    );

    final s3Options = StorageGetPropertiesOptions(
      pluginOptions: s3PluginOptions,
    );

    return S3GetPropertiesOperation(
      request: StorageGetPropertiesRequest(
        path: path,
        options: options,
      ),
      result: storageS3Service.getProperties(
        path: path,
        options: s3Options,
      ),
    );
  }

  @override
  S3GetUrlOperation getUrl({
    required StoragePath path,
    StorageGetUrlOptions? options,
  }) {
    final s3PluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const S3GetUrlPluginOptions(),
    );

    final s3Options = StorageGetUrlOptions(
      pluginOptions: s3PluginOptions,
    );

    return S3GetUrlOperation(
      request: StorageGetUrlRequest(
        path: path,
        options: options,
      ),
      result: storageS3Service.getUrl(
        path: path,
        options: s3Options,
      ),
    );
  }

  @override
  S3DownloadDataOperation downloadData({
    required StoragePath path,
    StorageDownloadDataOptions? options,
    void Function(S3TransferProgress)? onProgress,
  }) {
    final s3PluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const S3DownloadDataPluginOptions(),
    );

    final s3Options = StorageDownloadDataOptions(
      pluginOptions: s3PluginOptions,
    );

    final bytes = BytesBuilder();
    final downloadTask = storageS3Service.downloadData(
      path: path,
      options: s3Options,
      onProgress: onProgress,
      onData: bytes.add,
    );

    return S3DownloadDataOperation(
      request: StorageDownloadDataRequest(
        path: path,
        options: options,
      ),
      result: downloadTask.result.then(
        (downloadedItem) => S3DownloadDataResult(
          bytes: bytes.takeBytes(),
          downloadedItem: downloadedItem,
        ),
      ),
      resume: downloadTask.resume,
      pause: downloadTask.pause,
      cancel: downloadTask.cancel,
    );
  }

  @override
  S3DownloadFileOperation downloadFile({
    required StoragePath path,
    required AWSFile localFile,
    void Function(S3TransferProgress)? onProgress,
    StorageDownloadFileOptions? options,
  }) {
    final s3PluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const S3DownloadFilePluginOptions(),
    );
    options = StorageDownloadFileOptions(
      pluginOptions: s3PluginOptions,
    );
    return download_file_impl.downloadFile(
      path: path,
      localFile: localFile,
      options: options,
      storageOutputs: storageOutputs,
      storageS3Service: storageS3Service,
      appPathProvider: _appPathProvider,
      onProgress: onProgress,
    );
  }

  @override
  S3UploadDataOperation uploadData({
    required StorageDataPayload data,
    required StoragePath path,
    void Function(S3TransferProgress)? onProgress,
    StorageUploadDataOptions? options,
  }) {
    final s3PluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const S3UploadDataPluginOptions(),
    );

    final s3Options = StorageUploadDataOptions(
      metadata: options?.metadata ?? const {},
      pluginOptions: s3PluginOptions,
    );

    final uploadTask = storageS3Service.uploadData(
      path: path,
      dataPayload: data,
      options: s3Options,
      onProgress: onProgress,
    );

    return S3UploadDataOperation(
      request: StorageUploadDataRequest(
        path: path,
        data: data,
        options: options,
      ),
      result: uploadTask.result.then(
        (uploadedItem) => S3UploadDataResult(uploadedItem: uploadedItem),
      ),
      cancel: uploadTask.cancel,
    );
  }

  @override
  S3UploadFileOperation uploadFile({
    required AWSFile localFile,
    required StoragePath path,
    void Function(S3TransferProgress)? onProgress,
    StorageUploadFileOptions? options,
  }) {
    final s3PluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const S3UploadFilePluginOptions(),
    );

    final s3Options = StorageUploadFileOptions(
      metadata: options?.metadata ?? const {},
      pluginOptions: s3PluginOptions,
    );

    final uploadTask = storageS3Service.uploadFile(
      path: path,
      localFile: localFile,
      options: s3Options,
      onProgress: onProgress,
    );

    return S3UploadFileOperation(
      request: StorageUploadFileRequest(
        path: path,
        localFile: localFile,
        options: options,
      ),
      result: uploadTask.result.then(
        (uploadedItem) => S3UploadFileResult(uploadedItem: uploadedItem),
      ),
      resume: uploadTask.resume,
      pause: uploadTask.pause,
      cancel: uploadTask.cancel,
    );
  }

  @override
  S3CopyOperation copy({
    required StoragePath source,
    required StoragePath destination,
    StorageCopyOptions? options,
  }) {
    final s3PluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const S3CopyPluginOptions(),
    );

    final s3Options = StorageCopyOptions(
      pluginOptions: s3PluginOptions,
    );

    return S3CopyOperation(
      request: StorageCopyRequest(
        source: source,
        destination: destination,
        options: options,
      ),
      result: storageS3Service.copy(
        source: source,
        destination: destination,
        options: s3Options,
      ),
    );
  }

  @override
  S3RemoveOperation remove({
    required StoragePath path,
    StorageRemoveOptions? options,
  }) {
    final s3PluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const S3RemovePluginOptions(),
    );

    final s3Options = StorageRemoveOptions(
      pluginOptions: s3PluginOptions,
    );

    return S3RemoveOperation(
      request: StorageRemoveRequest(
        path: path,
        options: options,
      ),
      result: storageS3Service.remove(
        path: path,
        options: s3Options,
      ),
    );
  }

  @override
  S3RemoveManyOperation removeMany({
    required List<StoragePath> paths,
    StorageRemoveManyOptions? options,
  }) {
    final s3PluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const S3RemoveManyPluginOptions(),
    );

    final s3Options = StorageRemoveManyOptions(
      pluginOptions: s3PluginOptions,
    );

    return S3RemoveManyOperation(
      request: StorageRemoveManyRequest(
        paths: paths,
        options: options,
      ),
      result: storageS3Service.removeMany(
        paths: paths,
        options: s3Options,
      ),
    );
  }

  @override
  String get runtimeTypeName => 'AmplifyStorageS3Dart';
}

class _AmplifyStorageS3DartPluginKey
    extends StoragePluginKey<AmplifyStorageS3Dart> {
  const _AmplifyStorageS3DartPluginKey();

  @override
  String get runtimeTypeName => 'AmplifyStorageS3DartPluginKey';
}
