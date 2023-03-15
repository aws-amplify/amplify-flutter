// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template storage.amplify_storage_s3.move_plugin_options}
/// The configurable parameters invoking the Storage S3 plugin `move` API.
/// API.
/// {@endtemplate}
class S3MovePluginOptions {
  /// {@macro storage.amplify_storage_s3.move_plugin_options}
  const S3MovePluginOptions({
    this.getProperties = false,
  });

  /// Whether to retrieve properties for the moved object using the
  /// `getProperties` API.
  final bool getProperties;
}
