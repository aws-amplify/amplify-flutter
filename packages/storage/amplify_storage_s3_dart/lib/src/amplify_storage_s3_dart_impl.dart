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

import 'dart:typed_data';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/platform_impl/download_file/download_file.dart'
    as download_file_impl;
import 'package:amplify_storage_s3_dart/src/prefix_resolver/storage_access_level_aware_prefix_resolver.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';
import 'package:amplify_storage_s3_dart/src/utils/app_path_provider.dart';
import 'package:meta/meta.dart';

/// {@template amplify_storage_s3_dart.amplify_storage_s3_plugin_dart}
/// The Dart Storage S3 plugin for the Amplify Storage Category.
/// {@endtemplate}
class AmplifyStorageS3Dart extends StoragePluginInterface<
    S3StorageListOperation,
    S3StorageListOptions,
    S3StorageGetPropertiesOperation,
    S3StorageGetPropertiesOptions,
    S3StorageGetUrlOperation,
    S3StorageGetUrlOptions,
    StorageUploadDataOperation,
    StorageUploadDataOptions,
    S3StorageDownloadDataOperation,
    S3StorageDownloadDataOptions,
    S3StorageDownloadFileOperation,
    S3StorageDownloadFileOptions,
    S3StorageCopyOperation,
    S3StorageCopyOptions,
    S3StorageMoveOperation,
    S3StorageMoveOptions,
    S3StorageRemoveOperation,
    S3StorageRemoveOptions,
    S3StorageRemoveManyOperation,
    S3StorageRemoveManyOptions,
    S3StorageItem,
    S3TransferProgress> with AWSDebuggable, AWSLoggerMixin {
  /// {@macro amplify_storage_s3_dart.amplify_storage_s3_plugin_dart}
  AmplifyStorageS3Dart({
    String? delimiter,
    S3StoragePrefixResolver? prefixResolver,
    @visibleForTesting DependencyManager? dependencyManagerOverride,
  })  : _delimiter = delimiter,
        _prefixResolver = prefixResolver,
        dependencyManager = dependencyManagerOverride ?? DependencyManager();

  /// {@template amplify_storage_s3_dart.plugin_key}
  /// A plugin key which can be used with `Amplify.Storage.getPlugin` to retrieve
  /// a S3-specific Storage category interface.
  /// {@endtemplate}
  static const StoragePluginKey<
      S3StorageListOperation,
      S3StorageListOptions,
      S3StorageGetPropertiesOperation,
      S3StorageGetPropertiesOptions,
      S3StorageGetUrlOperation,
      S3StorageGetUrlOptions,
      StorageUploadDataOperation,
      StorageUploadDataOptions,
      S3StorageDownloadDataOperation,
      S3StorageDownloadDataOptions,
      S3StorageDownloadFileOperation,
      S3StorageDownloadFileOptions,
      S3StorageCopyOperation,
      S3StorageCopyOptions,
      S3StorageMoveOperation,
      S3StorageMoveOptions,
      S3StorageRemoveOperation,
      S3StorageRemoveOptions,
      S3StorageRemoveManyOperation,
      S3StorageRemoveManyOptions,
      S3StorageItem,
      S3TransferProgress,
      AmplifyStorageS3Dart> pluginKey = _AmplifyStorageS3DartPluginKey();

  final String? _delimiter;

  /// Dependencies of the plugin.
  @protected
  final DependencyManager dependencyManager;

  /// The [S3PluginConfig] of the [AmplifyStorageS3Dart] plugin.
  @protected
  late final S3PluginConfig s3pluginConfig;

  S3StoragePrefixResolver? _prefixResolver;

  /// Gets prefix resolver for testing
  @visibleForTesting
  S3StoragePrefixResolver? get prefixResolver => _prefixResolver;

  /// Gets the instance of dependent [StorageS3Service].
  @protected
  StorageS3Service get storageS3Service => dependencyManager.expect();
  AppPathProvider get _appPathProvider => dependencyManager.expect();

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
      ..addInstance<StorageS3Service>(
        StorageS3Service(
          credentialsProvider: credentialsProvider,
          defaultBucket: s3pluginConfig.bucket,
          defaultRegion: s3pluginConfig.region,
          prefixResolver: _prefixResolver!,
          logger: logger,
        ),
      )
      ..addInstance<AppPathProvider>(const S3DartAppPathProvider());
  }

  @override
  S3StorageListOperation list({
    required StorageListRequest request,
  }) {
    final s3Options = request.options as S3StorageListOptions?;

    return S3StorageListOperation(
      request: StorageListRequest(
        path: request.path,
        options: s3Options,
      ),
      result: storageS3Service.list(
        path: request.path,
        options: s3Options ??
            S3StorageListOptions(
              storageAccessLevel: s3pluginConfig.defaultAccessLevel,
            ),
      ),
    );
  }

  @override
  S3StorageGetPropertiesOperation getProperties({
    required StorageGetPropertiesRequest request,
  }) {
    final s3Options = request.options as S3StorageGetPropertiesOptions?;

    return S3StorageGetPropertiesOperation(
      request: StorageGetPropertiesRequest(
        key: request.key,
        options: s3Options,
      ),
      result: storageS3Service.getProperties(
        key: request.key,
        options: s3Options ??
            S3StorageGetPropertiesOptions(
              storageAccessLevel: s3pluginConfig.defaultAccessLevel,
            ),
      ),
    );
  }

  @override
  S3StorageGetUrlOperation getUrl({
    required StorageGetUrlRequest request,
  }) {
    final s3Options = request.options as S3StorageGetUrlOptions?;

    return S3StorageGetUrlOperation(
      request: StorageGetUrlRequest(
        key: request.key,
        options: s3Options,
      ),
      result: storageS3Service.getUrl(
        key: request.key,
        options: s3Options ??
            S3StorageGetUrlOptions(
              storageAccessLevel: s3pluginConfig.defaultAccessLevel,
            ),
      ),
    );
  }

  @override
  S3StorageDownloadDataOperation downloadData({
    required StorageDownloadDataRequest request,
    void Function(S3TransferProgress)? onProgress,
  }) {
    final bytes = BytesBuilder();
    final s3Options = request.options as S3StorageDownloadDataOptions? ??
        S3StorageDownloadDataOptions(
          storageAccessLevel: s3pluginConfig.defaultAccessLevel,
        );
    final downloadTask = storageS3Service.downloadData(
      key: request.key,
      options: s3Options,
      onProgress: onProgress,
      onData: bytes.add,
    );

    return S3StorageDownloadDataOperation(
      request: StorageDownloadDataRequest(
        key: request.key,
        options: s3Options,
      ),
      result: downloadTask.result.then(
        (downloadedItem) async => S3StorageDownloadDataResult(
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
  S3StorageDownloadFileOperation downloadFile({
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
  StorageUploadDataOperation uploadData({
    required StorageUploadDataRequest request,
  }) {
    throw UnimplementedError();
  }

  @override
  S3StorageCopyOperation copy({
    required StorageCopyRequest request,
  }) {
    final source = request.source as S3StorageItemWithAccessLevel;
    final destination = request.destination as S3StorageItemWithAccessLevel;
    final s3Options = request.options as S3StorageCopyOptions?;

    return S3StorageCopyOperation(
      request: StorageCopyRequest(source: source, destination: destination),
      result: storageS3Service.copy(
        source: source,
        destination: destination,
        options: s3Options ?? const S3StorageCopyOptions(),
      ),
    );
  }

  @override
  S3StorageMoveOperation move({
    required StorageMoveRequest request,
  }) {
    final source = request.source as S3StorageItemWithAccessLevel;
    final destination = request.destination as S3StorageItemWithAccessLevel;
    final s3Options = request.options as S3StorageMoveOptions?;

    return S3StorageMoveOperation(
      request: StorageMoveRequest(source: source, destination: destination),
      result: storageS3Service.move(
        source: source,
        destination: destination,
        options: s3Options ?? const S3StorageMoveOptions(),
      ),
    );
  }

  @override
  S3StorageRemoveOperation remove({
    required StorageRemoveRequest request,
  }) {
    final s3Options = request.options as S3StorageRemoveOptions?;

    return S3StorageRemoveOperation(
      request: StorageRemoveRequest(
        key: request.key,
        options: s3Options,
      ),
      result: storageS3Service.remove(
        key: request.key,
        options: s3Options ??
            S3StorageRemoveOptions(
              storageAccessLevel: s3pluginConfig.defaultAccessLevel,
            ),
      ),
    );
  }

  @override
  S3StorageRemoveManyOperation removeMany({
    required StorageRemoveManyRequest request,
  }) {
    final s3Options = request.options as S3StorageRemoveManyOptions?;

    return S3StorageRemoveManyOperation(
      request: StorageRemoveManyRequest(
        keys: request.keys,
        options: s3Options,
      ),
      result: storageS3Service.removeMany(
        keys: request.keys,
        options: s3Options ??
            S3StorageRemoveManyOptions(
              storageAccessLevel: s3pluginConfig.defaultAccessLevel,
            ),
      ),
    );
  }

  @override
  String get runtimeTypeName => 'AmplifyStorageS3Dart';
}

class _AmplifyStorageS3DartPluginKey extends StoragePluginKey<
    S3StorageListOperation,
    S3StorageListOptions,
    S3StorageGetPropertiesOperation,
    S3StorageGetPropertiesOptions,
    S3StorageGetUrlOperation,
    S3StorageGetUrlOptions,
    StorageUploadDataOperation,
    StorageUploadDataOptions,
    S3StorageDownloadDataOperation,
    S3StorageDownloadDataOptions,
    S3StorageDownloadFileOperation,
    S3StorageDownloadFileOptions,
    S3StorageCopyOperation,
    S3StorageCopyOptions,
    S3StorageMoveOperation,
    S3StorageMoveOptions,
    S3StorageRemoveOperation,
    S3StorageRemoveOptions,
    S3StorageRemoveManyOperation,
    S3StorageRemoveManyOptions,
    S3StorageItem,
    S3TransferProgress,
    AmplifyStorageS3Dart> {
  const _AmplifyStorageS3DartPluginKey();

  @override
  String get runtimeTypeName => 'AmplifyStorageS3DartPluginKey';
}
