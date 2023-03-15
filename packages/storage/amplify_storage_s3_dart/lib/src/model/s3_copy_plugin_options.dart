// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// {@template storage.amplify_storage_s3.copy_plugin_options}
/// The configurable parameters invoking the Storage S3 plugin `copy` API.
/// {@endtemplate}
class S3CopyPluginOptions {
  /// {@macro storage.amplify_storage_s3.copy_plugin_options}
  const S3CopyPluginOptions({
    this.getProperties = false,
  });

  /// Whether to retrieve properties for the copied object using the
  /// `getProperties` API.
  final bool getProperties;
}
