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
  AmplifyStorageS3();

  /// A plugin key which can be used with `Amplify.Storage.getPlugin` to retrieve
  /// a S3-specific Storage category interface.
  static const StoragePluginKey<AmplifyStorageS3> pluginKey =
      _AmplifyStorageS3PluginKey();

  @override
  Future<void> configure({
    AmplifyOutputs? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    await super.configure(config: config, authProviderRepo: authProviderRepo);

    // override the path provider dependency added by AmplifyStorageS3Dart
    dependencies
      ..addInstance<db_common.Connect>(db_common.connect)
      ..addBuilder<AppPathProvider>((_) => S3AppPathProvider());
  }
}

class _AmplifyStorageS3PluginKey extends StoragePluginKey<AmplifyStorageS3> {
  const _AmplifyStorageS3PluginKey();

  @override
  String get runtimeTypeName => 'AmplifyStorageS3PluginKey';
}
