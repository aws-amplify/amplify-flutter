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

/// {@template amplify_storage_s3_dart.amplify_storage_s3_plugin_dart}
/// The Dart S3 plugin the Amplify Storage Category.
/// {@endtemplate}
class AmplifyStorageS3Dart extends StoragePluginInterface {
  /// {@macro amplify_storage_s3_dart.amplify_storage_s3_plugin_dart}
  AmplifyStorageS3Dart({
    String? delimiter,
    S3StoragePrefixResolver? s3storagePrefixResolver,
  })  : _delimiter = delimiter,
        _s3storagePrefixResolver = s3storagePrefixResolver;

  // TODO(HuiSF): remove ignore when using this field
  // ignore: unused_field
  final String? _delimiter;

  // TODO(HuiSF): remove ignore when using this field
  // ignore: unused_field
  final S3StoragePrefixResolver? _s3storagePrefixResolver;

  // TODO(HuiSF): remove ignore when using this field
  // ignore: unused_field
  late final S3PluginConfig _s3pluginConfig;

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
  }

  @override
  StorageListOperation list({
    required StorageListRequest request,
  }) {
    throw UnimplementedError();
  }

  @override
  StorageGetPropertiesOperation getProperties({
    required StorageGetPropertiesRequest request,
  }) {
    throw UnimplementedError();
  }

  @override
  StorageGetUrlOperation getUrl({
    required StorageGetUrlRequest request,
  }) {
    throw UnimplementedError();
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
}
