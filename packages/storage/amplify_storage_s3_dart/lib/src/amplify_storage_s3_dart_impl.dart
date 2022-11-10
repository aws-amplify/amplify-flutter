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
class AmplifyStorageS3Dart extends StoragePluginInterface<
    S3ListOperation,
    S3ListOptions,
    S3GetPropertiesOperation,
    S3GetPropertiesOptions,
    S3GetUrlOperation,
    S3GetUrlOptions,
    S3UploadDataOperation,
    S3UploadDataOptions,
    S3UploadFileOperation,
    S3UploadFileOptions,
    S3DownloadDataOperation,
    S3DownloadDataOptions,
    S3DownloadFileOperation,
    S3DownloadFileOptions,
    S3CopyOperation,
    S3CopyOptions,
    S3MoveOperation,
    S3MoveOptions,
    S3RemoveOperation,
    S3RemoveOptions,
    S3RemoveManyOperation,
    S3RemoveManyOptions,
    S3Item,
    S3TransferProgress> with AWSDebuggable, AWSLoggerMixin {
  /// {@macro amplify_storage_s3_dart.amplify_storage_s3_plugin_dart}
  AmplifyStorageS3Dart({
    String? delimiter,
    S3PrefixResolver? prefixResolver,
    @visibleForTesting DependencyManager? dependencyManagerOverride,
  })  : _delimiter = delimiter,
        _prefixResolver = prefixResolver,
        dependencyManager = dependencyManagerOverride ?? DependencyManager();

  /// {@template amplify_storage_s3_dart.plugin_key}
  /// A plugin key which can be used with `Amplify.Storage.getPlugin` to retrieve
  /// a S3-specific Storage category interface.
  /// {@endtemplate}
  static const StoragePluginKey<
      S3ListOperation,
      S3ListOptions,
      S3GetPropertiesOperation,
      S3GetPropertiesOptions,
      S3GetUrlOperation,
      S3GetUrlOptions,
      S3UploadDataOperation,
      S3UploadDataOptions,
      S3UploadFileOperation,
      S3UploadFileOptions,
      S3DownloadDataOperation,
      S3DownloadDataOptions,
      S3DownloadFileOperation,
      S3DownloadFileOptions,
      S3CopyOperation,
      S3CopyOptions,
      S3MoveOperation,
      S3MoveOptions,
      S3RemoveOperation,
      S3RemoveOptions,
      S3RemoveManyOperation,
      S3RemoveManyOptions,
      S3Item,
      S3TransferProgress,
      AmplifyStorageS3Dart> pluginKey = _AmplifyStorageS3DartPluginKey();

  final String? _delimiter;

  /// Dependencies of the plugin.
  @protected
  final DependencyManager dependencyManager;

  /// The [S3PluginConfig] of the [AmplifyStorageS3Dart] plugin.
  @protected
  late final S3PluginConfig s3pluginConfig;

  S3PrefixResolver? _prefixResolver;

  /// Gets prefix resolver for testing
  @visibleForTesting
  S3PrefixResolver? get prefixResolver => _prefixResolver;

  /// Gets the instance of dependent [StorageS3Service].
  @protected
  StorageS3Service get storageS3Service => dependencyManager.expect();

  AppPathProvider get _appPathProvider => dependencyManager.getOrCreate();

  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    final s3PluginConfig = config?.storage?.awsPlugin;

    if (s3PluginConfig == null) {
      throw const StorageException('No Storage config detected.');
    }

    s3pluginConfig = s3PluginConfig;

    final identityProvider = authProviderRepo
        .getAuthProvider(APIAuthorizationType.userPools.authProviderToken);

    if (identityProvider == null) {
      throw const StorageException(
        'No Cognito User Pool provider found for Storage.',
        recoverySuggestion:
            'If you haven\'t already, please add amplify_auth_cognito plugin to your App.',
      );
    }

    _prefixResolver ??= StorageAccessLevelAwarePrefixResolver(
      delimiter: _delimiter,
      identityProvider: identityProvider,
    );

    final credentialsProvider = authProviderRepo
        .getAuthProvider(APIAuthorizationType.iam.authProviderToken);

    if (credentialsProvider == null) {
      throw const StorageException(
        'No credential provider found for Storage.',
        recoverySuggestion:
            'If you haven\'t already, please add amplify_auth_cognito plugin to your App.',
      );
    }

    dependencyManager
      ..addInstance<db_common.Connect>(db_common.connect)
      ..addBuilder<AppPathProvider>(S3DartAppPathProvider.new)
      ..addBuilder(
        transfer.TransferDatabase.new,
        const Token<transfer.TransferDatabase>(
          [Token<db_common.Connect>(), Token<AppPathProvider>()],
        ),
      )
      ..addInstance<StorageS3Service>(
        StorageS3Service(
          credentialsProvider: credentialsProvider,
          defaultBucket: s3pluginConfig.bucket,
          defaultRegion: s3pluginConfig.region,
          delimiter: _delimiter,
          prefixResolver: _prefixResolver!,
          logger: logger,
          dependencyManager: dependencyManager,
        ),
      );

    // Run this later
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
    required StorageListRequest request,
  }) {
    final s3Options = request.options as S3ListOptions?;

    return S3ListOperation(
      request: StorageListRequest(
        path: request.path,
        options: s3Options,
      ),
      result: storageS3Service.list(
        path: request.path,
        options: s3Options ??
            S3ListOptions(
              accessLevel: s3pluginConfig.defaultAccessLevel,
            ),
      ),
    );
  }

  @override
  S3GetPropertiesOperation getProperties({
    required StorageGetPropertiesRequest request,
  }) {
    final s3Options = request.options as S3GetPropertiesOptions?;

    return S3GetPropertiesOperation(
      request: StorageGetPropertiesRequest(
        key: request.key,
        options: s3Options,
      ),
      result: storageS3Service.getProperties(
        key: request.key,
        options: s3Options ??
            S3GetPropertiesOptions(
              accessLevel: s3pluginConfig.defaultAccessLevel,
            ),
      ),
    );
  }

  @override
  S3GetUrlOperation getUrl({
    required StorageGetUrlRequest request,
  }) {
    final s3Options = request.options as S3GetUrlOptions?;

    return S3GetUrlOperation(
      request: StorageGetUrlRequest(
        key: request.key,
        options: s3Options,
      ),
      result: storageS3Service.getUrl(
        key: request.key,
        options: s3Options ??
            S3GetUrlOptions(
              accessLevel: s3pluginConfig.defaultAccessLevel,
            ),
      ),
    );
  }

  @override
  S3DownloadDataOperation downloadData({
    required StorageDownloadDataRequest request,
    void Function(S3TransferProgress)? onProgress,
  }) {
    final bytes = BytesBuilder();
    final s3Options = request.options as S3DownloadDataOptions? ??
        S3DownloadDataOptions(
          accessLevel: s3pluginConfig.defaultAccessLevel,
        );
    final downloadTask = storageS3Service.downloadData(
      key: request.key,
      options: s3Options,
      onProgress: onProgress,
      onData: bytes.add,
    );

    return S3DownloadDataOperation(
      request: StorageDownloadDataRequest(
        key: request.key,
        options: s3Options,
      ),
      result: downloadTask.result.then(
        (downloadedItem) async => S3DownloadDataResult(
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
    required StorageDownloadFileRequest request,
    void Function(S3TransferProgress)? onProgress,
  }) {
    return download_file_impl.downloadFile(
      request: request,
      s3pluginConfig: s3pluginConfig,
      storageS3Service: storageS3Service,
      appPathProvider: _appPathProvider,
      onProgress: onProgress,
    );
  }

  @override
  S3UploadDataOperation uploadData({
    required StorageUploadDataRequest request,
    void Function(S3TransferProgress)? onProgress,
  }) {
    final s3Options = request.options as S3UploadDataOptions? ??
        S3UploadDataOptions(
          accessLevel: s3pluginConfig.defaultAccessLevel,
        );

    final uploadTask = storageS3Service.uploadData(
      key: request.key,
      dataPayload: request.data,
      options: s3Options,
      onProgress: onProgress,
    );

    return S3UploadDataOperation(
      request: StorageUploadDataRequest(
        data: request.data,
        key: request.key,
        options: s3Options,
      ),
      result: uploadTask.result.then(
        (uploadedItem) => S3UploadDataResult(uploadedItem: uploadedItem),
      ),
      cancel: uploadTask.cancel,
    );
  }

  @override
  S3UploadFileOperation uploadFile({
    required StorageUploadFileRequest request,
    void Function(S3TransferProgress)? onProgress,
  }) {
    final s3Options = request.options as S3UploadFileOptions? ??
        S3UploadFileOptions(
          accessLevel: s3pluginConfig.defaultAccessLevel,
        );

    final uploadTask = storageS3Service.uploadFile(
      key: request.key,
      localFile: request.localFile,
      options: s3Options,
      onProgress: onProgress,
    );

    return S3UploadFileOperation(
      request: StorageUploadFileRequest(
        localFile: request.localFile,
        key: request.key,
        options: s3Options,
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
    required StorageCopyRequest request,
  }) {
    final source = request.source as S3ItemWithAccessLevel;
    final destination = request.destination as S3ItemWithAccessLevel;
    final s3Options = request.options as S3CopyOptions?;

    return S3CopyOperation(
      request: StorageCopyRequest(source: source, destination: destination),
      result: storageS3Service.copy(
        source: source,
        destination: destination,
        options: s3Options ?? const S3CopyOptions(),
      ),
    );
  }

  @override
  S3MoveOperation move({
    required StorageMoveRequest request,
  }) {
    final source = request.source as S3ItemWithAccessLevel;
    final destination = request.destination as S3ItemWithAccessLevel;
    final s3Options = request.options as S3MoveOptions?;

    return S3MoveOperation(
      request: StorageMoveRequest(source: source, destination: destination),
      result: storageS3Service.move(
        source: source,
        destination: destination,
        options: s3Options ?? const S3MoveOptions(),
      ),
    );
  }

  @override
  S3RemoveOperation remove({
    required StorageRemoveRequest request,
  }) {
    final s3Options = request.options as S3RemoveOptions?;

    return S3RemoveOperation(
      request: StorageRemoveRequest(
        key: request.key,
        options: s3Options,
      ),
      result: storageS3Service.remove(
        key: request.key,
        options: s3Options ??
            S3RemoveOptions(
              accessLevel: s3pluginConfig.defaultAccessLevel,
            ),
      ),
    );
  }

  @override
  S3RemoveManyOperation removeMany({
    required StorageRemoveManyRequest request,
  }) {
    final s3Options = request.options as S3RemoveManyOptions?;

    return S3RemoveManyOperation(
      request: StorageRemoveManyRequest(
        keys: request.keys,
        options: s3Options,
      ),
      result: storageS3Service.removeMany(
        keys: request.keys,
        options: s3Options ??
            S3RemoveManyOptions(
              accessLevel: s3pluginConfig.defaultAccessLevel,
            ),
      ),
    );
  }

  @override
  String get runtimeTypeName => 'AmplifyStorageS3Dart';
}

class _AmplifyStorageS3DartPluginKey extends StoragePluginKey<
    S3ListOperation,
    S3ListOptions,
    S3GetPropertiesOperation,
    S3GetPropertiesOptions,
    S3GetUrlOperation,
    S3GetUrlOptions,
    S3UploadDataOperation,
    S3UploadDataOptions,
    S3UploadFileOperation,
    S3UploadFileOptions,
    S3DownloadDataOperation,
    S3DownloadDataOptions,
    S3DownloadFileOperation,
    S3DownloadFileOptions,
    S3CopyOperation,
    S3CopyOptions,
    S3MoveOperation,
    S3MoveOptions,
    S3RemoveOperation,
    S3RemoveOptions,
    S3RemoveManyOperation,
    S3RemoveManyOptions,
    S3Item,
    S3TransferProgress,
    AmplifyStorageS3Dart> {
  const _AmplifyStorageS3DartPluginKey();

  @override
  String get runtimeTypeName => 'AmplifyStorageS3DartPluginKey';
}
