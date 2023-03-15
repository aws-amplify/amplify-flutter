// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template storage.amplify_storage_s3.get_properties_plugin_options}
/// The configurable parameters invoking the Storage S3 plugin `getProperties` API.
/// {@endtemplate}
class S3GetPropertiesPluginOptions {
  /// {@macro storage.amplify_storage_s3.get_properties_plugin_options}
  const S3GetPropertiesPluginOptions() : this._();

  const S3GetPropertiesPluginOptions._({
    this.targetIdentityId,
  });

  /// {@macro storage.amplify_storage_s3.get_properties_plugin_options}
  ///
  /// Use this when calling `getProperties` on an object that belongs to other
  /// user (identified by [targetIdentityId]) rather than the currently signed
  /// user.
  const S3GetPropertiesPluginOptions.forIdentity(
    String targetIdentityId,
  ) : this._(
          targetIdentityId: targetIdentityId,
        );

  /// The identity ID of another user who uploaded the object.
  ///
  /// This can be set by using [S3GetPropertiesPluginOptions.forIdentity].
  final String? targetIdentityId;
}
