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

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_db_common/amplify_db_common.dart' as db_common;
import 'package:amplify_storage_s3/src/utils/app_path_provider.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

/// {@template amplify_storage_s3_.amplify_storage_s3_plugin}
/// The Flutter Storage S3 plugin for the Amplify Storage Category.
/// {@endtemplate}
class AmplifyStorageS3 extends AmplifyStorageS3Dart {
  /// {@macro amplify_storage_s3_.amplify_storage_s3_plugin}
  AmplifyStorageS3({
    super.delimiter,
    super.prefixResolver,
  });

  /// A plugin key which can be used with `Amplify.Storage.getPlugin` to retrieve
  /// a S3-specific Storage category interface.
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
      AmplifyStorageS3Dart> pluginKey = _AmplifyStorageS3PluginKey();

  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    await super.configure(config: config, authProviderRepo: authProviderRepo);

    // override the path provider dependency added by AmplifyStorageS3Dart
    dependencyManager
      ..addInstance<db_common.Connect>(db_common.connect)
      ..addBuilder<AppPathProvider>(S3AppPathProvider.new);
  }
}

class _AmplifyStorageS3PluginKey extends StoragePluginKey<
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
  const _AmplifyStorageS3PluginKey();

  @override
  String get runtimeTypeName => 'AmplifyStorageS3PluginKey';
}
