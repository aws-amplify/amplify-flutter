// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template storage.amplify_storage_s3.get_properties_options}
/// The configurable parameters invoking the Storage S3 plugin `getProperties` API.
/// {@endtemplate}
@Deprecated(
  'use StorageGetPropertiesOptions(pluginOptions: S3GetPropertiesPluginOptions(...)) instead.',
)
class S3GetPropertiesOptions extends StorageGetPropertiesOptions {
  /// {@macro storage.amplify_storage_s3.get_properties_options}
  @Deprecated(
    'use StorageGetPropertiesOptions(pluginOptions: S3GetPropertiesPluginOptions(...)) instead.',
  )
  const S3GetPropertiesOptions() : this._();

  @Deprecated(
    'use StorageGetPropertiesOptions(pluginOptions: S3GetPropertiesPluginOptions(...)) instead.',
  )
  const S3GetPropertiesOptions._();
}
