// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_db_common/amplify_db_common.dart' as db_common;
import 'package:amplify_storage_s3/src/utils/app_path_provider/app_path_provider.dart';
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
      S3GetPropertiesOperation,
      S3GetUrlOperation,
      S3UploadDataOperation,
      S3UploadFileOperation,
      S3DownloadDataOperation,
      S3DownloadFileOperation,
      S3CopyOperation,
      S3MoveOperation,
      S3RemoveOperation,
      S3RemoveManyOperation,
      S3Item,
      S3TransferProgress,
      AmplifyStorageS3> pluginKey = _AmplifyStorageS3PluginKey();

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
    S3GetPropertiesOperation,
    S3GetUrlOperation,
    S3UploadDataOperation,
    S3UploadFileOperation,
    S3DownloadDataOperation,
    S3DownloadFileOperation,
    S3CopyOperation,
    S3MoveOperation,
    S3RemoveOperation,
    S3RemoveManyOperation,
    S3Item,
    S3TransferProgress,
    AmplifyStorageS3> {
  const _AmplifyStorageS3PluginKey();

  @override
  String get runtimeTypeName => 'AmplifyStorageS3PluginKey';
}
