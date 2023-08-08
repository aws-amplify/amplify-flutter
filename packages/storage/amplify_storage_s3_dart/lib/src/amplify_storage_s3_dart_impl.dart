// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:typed_data';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_db_common_dart/amplify_db_common_dart.dart'
    as db_common;
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/platform_impl/download_file/download_file.dart'
    as download_file_impl;
import 'package:amplify_storage_s3_dart/src/prefix_resolver/storage_access_level_aware_prefix_resolver.dart';
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
    String? delimiter,
    S3PrefixResolver? prefixResolver,
    @visibleForTesting DependencyManager? dependencyManagerOverride,
  })  : _delimiter = delimiter,
        _prefixResolver = prefixResolver,
        _dependencyManagerOverride = dependencyManagerOverride;

  /// {@template amplify_storage_s3_dart.plugin_key}
  /// A plugin key which can be used with `Amplify.Storage.getPlugin` to retrieve
  /// a S3-specific Storage category interface.
  /// {@endtemplate}
  static const StoragePluginKey<AmplifyStorageS3Dart> pluginKey =
      _AmplifyStorageS3DartPluginKey();

  final String? _delimiter;

  final DependencyManager? _dependencyManagerOverride;

  @override
  DependencyManager get dependencies =>
      _dependencyManagerOverride ?? super.dependencies;

  /// The [S3PluginConfig] of the [AmplifyStorageS3Dart] plugin.
  @protected
  late final S3PluginConfig s3pluginConfig;

  S3PrefixResolver? _prefixResolver;

  /// Gets prefix resolver for testing
  @visibleForTesting
  S3PrefixResolver? get prefixResolver => _prefixResolver;

  /// Gets the instance of dependent [StorageS3Service].
  @protected
  StorageS3Service get storageS3Service => dependencies.expect();

  AppPathProvider get _appPathProvider => dependencies.getOrCreate();

  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    final s3PluginConfig = config?.storage?.awsPlugin;

    if (s3PluginConfig == null) {
      throw ConfigurationError('No Storage S3 plugin config detected.');
    }
    s3pluginConfig = s3PluginConfig;

    final identityProvider = authProviderRepo
        .getAuthProvider(APIAuthorizationType.userPools.authProviderToken);

    if (identityProvider == null) {
      throw ConfigurationError(
        'No Cognito User Pool provider found for Storage.',
        recoverySuggestion:
            "If you haven't already, please add amplify_auth_cognito plugin to your App.",
      );
    }

    _prefixResolver ??= StorageAccessLevelAwarePrefixResolver(
      delimiter: _delimiter,
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
          s3PluginConfig: s3PluginConfig,
          delimiter: _delimiter,
          prefixResolver: _prefixResolver!,
          logger: logger,
          dependencyManager: dependencies,
        ),
      );

    scheduleMicrotask(() async {
      await Amplify.asyncConfig;
      if (_zIsTest) {
        return;
      }
      unawaited(storageS3Service.abortIncompleteMultipartUploads());
    });
  }

  @override
  S3ListOperation list({
    String? path,
    StorageListOptions? options,
  }) {
    final s3PluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const S3ListPluginOptions(),
    );
    final s3Options = StorageListOptions(
      accessLevel: options?.accessLevel,
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
    required String key,
    StorageGetPropertiesOptions? options,
  }) {
    final s3PluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const S3GetPropertiesPluginOptions(),
    );

    final s3Options = StorageGetPropertiesOptions(
      accessLevel: options?.accessLevel,
      pluginOptions: s3PluginOptions,
    );

    return S3GetPropertiesOperation(
      request: StorageGetPropertiesRequest(
        key: key,
        options: options,
      ),
      result: storageS3Service.getProperties(
        key: key,
        options: s3Options,
      ),
    );
  }

  @override
  S3GetUrlOperation getUrl({
    required String key,
    StorageGetUrlOptions? options,
  }) {
    final s3PluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const S3GetUrlPluginOptions(),
    );

    final s3Options = StorageGetUrlOptions(
      accessLevel: options?.accessLevel,
      pluginOptions: s3PluginOptions,
    );

    return S3GetUrlOperation(
      request: StorageGetUrlRequest(
        key: key,
        options: options,
      ),
      result: storageS3Service.getUrl(
        key: key,
        options: s3Options,
      ),
    );
  }

  @override
  S3DownloadDataOperation downloadData({
    required String key,
    StorageDownloadDataOptions? options,
    void Function(S3TransferProgress)? onProgress,
  }) {
    final s3PluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const S3DownloadDataPluginOptions(),
    );

    final s3Options = StorageDownloadDataOptions(
      accessLevel: options?.accessLevel,
      pluginOptions: s3PluginOptions,
    );

    final bytes = BytesBuilder();
    final downloadTask = storageS3Service.downloadData(
      key: key,
      options: s3Options,
      onProgress: onProgress,
      onData: bytes.add,
    );

    return S3DownloadDataOperation(
      request: StorageDownloadDataRequest(
        key: key,
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
    required String key,
    required AWSFile localFile,
    void Function(S3TransferProgress)? onProgress,
    StorageDownloadFileOptions? options,
  }) {
    final s3PluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const S3DownloadFilePluginOptions(),
    );
    options = StorageDownloadFileOptions(
      accessLevel: options?.accessLevel,
      pluginOptions: s3PluginOptions,
    );
    return download_file_impl.downloadFile(
      key: key,
      localFile: localFile,
      options: options,
      s3pluginConfig: s3pluginConfig,
      storageS3Service: storageS3Service,
      appPathProvider: _appPathProvider,
      onProgress: onProgress,
    );
  }

  @override
  S3UploadDataOperation uploadData({
    required StorageDataPayload data,
    required String key,
    void Function(S3TransferProgress)? onProgress,
    StorageUploadDataOptions? options,
  }) {
    final s3PluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const S3UploadDataPluginOptions(),
    );

    final s3Options = StorageUploadDataOptions(
      accessLevel: options?.accessLevel,
      metadata: options?.metadata ?? const {},
      pluginOptions: s3PluginOptions,
    );

    final uploadTask = storageS3Service.uploadData(
      key: key,
      dataPayload: data,
      options: s3Options,
      onProgress: onProgress,
    );

    return S3UploadDataOperation(
      request: StorageUploadDataRequest(
        data: data,
        key: key,
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
    required String key,
    void Function(S3TransferProgress)? onProgress,
    StorageUploadFileOptions? options,
  }) {
    final s3PluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const S3UploadFilePluginOptions(),
    );

    final s3Options = StorageUploadFileOptions(
      accessLevel: options?.accessLevel,
      metadata: options?.metadata ?? const {},
      pluginOptions: s3PluginOptions,
    );

    final uploadTask = storageS3Service.uploadFile(
      key: key,
      localFile: localFile,
      options: s3Options,
      onProgress: onProgress,
    );

    return S3UploadFileOperation(
      request: StorageUploadFileRequest(
        localFile: localFile,
        key: key,
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
    required StorageItemWithAccessLevel<StorageItem> source,
    required StorageItemWithAccessLevel<StorageItem> destination,
    StorageCopyOptions? options,
  }) {
    final s3Source = S3ItemWithAccessLevel.from(source);
    final s3Destination = S3ItemWithAccessLevel.from(destination);

    final s3PluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const S3CopyPluginOptions(),
    );

    final s3Options = StorageCopyOptions(
      pluginOptions: s3PluginOptions,
    );

    return S3CopyOperation(
      request: StorageCopyRequest(
        source: s3Source,
        destination: s3Destination,
        options: options,
      ),
      result: storageS3Service.copy(
        source: s3Source,
        destination: s3Destination,
        options: s3Options,
      ),
    );
  }

  @override
  S3MoveOperation move({
    required StorageItemWithAccessLevel<StorageItem> source,
    required StorageItemWithAccessLevel<StorageItem> destination,
    StorageMoveOptions? options,
  }) {
    final s3PluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const S3MovePluginOptions(),
    );

    final s3Options = StorageMoveOptions(
      pluginOptions: s3PluginOptions,
    );

    final s3Source = S3ItemWithAccessLevel.from(source);
    final s3Destination = S3ItemWithAccessLevel.from(destination);

    return S3MoveOperation(
      request: StorageMoveRequest(
        source: s3Source,
        destination: s3Destination,
        options: options,
      ),
      result: storageS3Service.move(
        source: s3Source,
        destination: s3Destination,
        options: s3Options,
      ),
    );
  }

  @override
  S3RemoveOperation remove({
    required String key,
    StorageRemoveOptions? options,
  }) {
    final s3PluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const S3RemovePluginOptions(),
    );

    final s3Options = StorageRemoveOptions(
      accessLevel: options?.accessLevel,
      pluginOptions: s3PluginOptions,
    );

    return S3RemoveOperation(
      request: StorageRemoveRequest(
        key: key,
        options: options,
      ),
      result: storageS3Service.remove(
        key: key,
        options: s3Options,
      ),
    );
  }

  @override
  S3RemoveManyOperation removeMany({
    required List<String> keys,
    StorageRemoveManyOptions? options,
  }) {
    final s3PluginOptions = reifyPluginOptions(
      pluginOptions: options?.pluginOptions,
      defaultPluginOptions: const S3RemoveManyPluginOptions(),
    );

    final s3Options = StorageRemoveManyOptions(
      accessLevel: options?.accessLevel,
      pluginOptions: s3PluginOptions,
    );

    return S3RemoveManyOperation(
      request: StorageRemoveManyRequest(
        keys: keys,
        options: options,
      ),
      result: storageS3Service.removeMany(
        keys: keys,
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
