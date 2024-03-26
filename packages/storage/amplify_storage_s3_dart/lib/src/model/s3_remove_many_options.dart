// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template storage.amplify_storage_s3.remove_many_options}
/// The configurable parameters invoking the Storage S3 plugin `removeMany`
/// API.
/// {@endtemplate}
@Deprecated(
  'use StorageRemoveManyOptions(pluginOptions: S3RemoveManyPluginOptions(...)) instead.',
)
class S3RemoveManyOptions extends StorageRemoveManyOptions {
  /// {@macro storage.amplify_storage_s3.remove_many_options}
  @Deprecated(
    'use StorageRemoveManyOptions(pluginOptions: S3RemoveManyPluginOptions(...)) instead.',
  )
  const S3RemoveManyOptions();
}
