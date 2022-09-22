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

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/prefix_resolver/storage_access_level_aware_prefix_resolver.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';
import 'package:meta/meta.dart';

/// {@template amplify_storage_s3_dart.amplify_storage_s3_plugin_dart}
/// The Dart S3 plugin the Amplify Storage Category.
/// {@endtemplate}
class AmplifyStorageS3Dart extends StoragePluginInterface<
    // TODO(HuiSF): replace with Storage S3 types
    S3StorageListOperation,
    S3StorageListOptions,
    S3StorageGetPropertiesOperation,
    S3StorageGetPropertiesOptions,
    S3StorageGetUrlOperation,
    S3StorageGetUrlOptions,
    StorageUploadDataOperation,
    StorageUploadDataOptions,
    StorageCopyOperation,
    StorageMoveOperation,
    StorageRemoveOperation,
    StorageRemoveOptions,
    StorageRemoveManyOperation,
    StorageRemoveManyOptions,
    S3StorageItem> with AWSDebuggable, AWSLoggerMixin {
  /// {@macro amplify_storage_s3_dart.amplify_storage_s3_plugin_dart}
  AmplifyStorageS3Dart({
    String? delimiter,
    S3StoragePrefixResolver? prefixResolver,
    @visibleForTesting DependencyManager? dependencyManagerOverride,
  })  : _delimiter = delimiter,
        _prefixResolver = prefixResolver,
        _dependencyManager = dependencyManagerOverride ?? DependencyManager();

  // TODO(HuiSF): replace with S3 specific types to the generic parameters
  /// A plugin key which can be used with `Amplify.Storage.getPlugin` to retrieve
  /// a S3-specific Storage category interface.
  static const StoragePluginKey<
      S3StorageListOperation,
      S3StorageListOptions,
      S3StorageGetPropertiesOperation,
      S3StorageGetPropertiesOptions,
      S3StorageGetUrlOperation,
      S3StorageGetUrlOptions,
      StorageUploadDataOperation,
      StorageUploadDataOptions,
      StorageCopyOperation,
      StorageMoveOperation,
      StorageRemoveOperation,
      StorageRemoveOptions,
      StorageRemoveManyOperation,
      StorageRemoveManyOptions,
      S3StorageItem,
      AmplifyStorageS3Dart> pluginKey = _AmplifyStorageS3DartPluginKey();

  final String? _delimiter;
  final DependencyManager _dependencyManager;

  late final S3PluginConfig _s3pluginConfig;

  S3StoragePrefixResolver? _prefixResolver;

  /// Gets prefix resolver for testing
  @visibleForTesting
  S3StoragePrefixResolver? get prefixResolver => _prefixResolver;

  StorageS3Service get _storageS3Service => _dependencyManager.expect();

  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    final s3PluginConfig = config?.storage?.awsPlugin;

    if (s3PluginConfig == null) {
      throw const StorageException('No Storage config detected.');
    }

    _s3pluginConfig = s3PluginConfig;

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

    _dependencyManager.addInstance<StorageS3Service>(
      StorageS3Service(
        credentialsProvider: credentialsProvider,
        defaultBucket: _s3pluginConfig.bucket,
        defaultRegion: _s3pluginConfig.region,
        prefixResolver: _prefixResolver!,
        logger: logger,
      ),
    );
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
      result: _storageS3Service.list(
        path: request.path,
        options: s3Options ??
            S3StorageListOptions(
              storageAccessLevel: _s3pluginConfig.defaultAccessLevel,
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
      result: _storageS3Service.getProperties(
        key: request.key,
        options: s3Options ??
            S3StorageGetPropertiesOptions(
              storageAccessLevel: _s3pluginConfig.defaultAccessLevel,
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
      result: _storageS3Service.getUrl(
        key: request.key,
        options: s3Options ??
            S3StorageGetUrlOptions(
              storageAccessLevel: _s3pluginConfig.defaultAccessLevel,
            ),
      ),
    );
  }

  @override
  StorageUploadDataOperation uploadData({
    required StorageUploadDataRequest request,
  }) {
    throw UnimplementedError();
  }

  @override
  StorageRemoveOperation remove({
    required StorageRemoveRequest request,
  }) {
    throw UnimplementedError();
  }

  @override
  StorageRemoveManyOperation removeMany({
    required StorageRemoveManyRequest request,
  }) {
    throw UnimplementedError();
  }

  // TODO(HuiSF): add interface for remaining APIs
  //  uploadFile, downloadFile, downloadData

  @override
  String get runtimeTypeName => 'AmplifyStorageS3Dart';
}

// TODO(HuiSF): replace with S3 specific types to the generic parameters
class _AmplifyStorageS3DartPluginKey extends StoragePluginKey<
    S3StorageListOperation,
    S3StorageListOptions,
    S3StorageGetPropertiesOperation,
    S3StorageGetPropertiesOptions,
    S3StorageGetUrlOperation,
    S3StorageGetUrlOptions,
    StorageUploadDataOperation,
    StorageUploadDataOptions,
    StorageCopyOperation,
    StorageMoveOperation,
    StorageRemoveOperation,
    StorageRemoveOptions,
    StorageRemoveManyOperation,
    StorageRemoveManyOptions,
    S3StorageItem,
    AmplifyStorageS3Dart> {
  const _AmplifyStorageS3DartPluginKey();

  @override
  String get runtimeTypeName => 'AmplifyStorageS3DartPluginKey';
}
