// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 's3_get_properties_plugin_options.g.dart';

/// {@template storage.amplify_storage_s3.get_properties_plugin_options}
/// The configurable parameters invoking the Storage S3 plugin `getProperties` API.
/// {@endtemplate}
@zAmplifySerializable
class S3GetPropertiesPluginOptions extends StorageGetPropertiesPluginOptions {
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

  /// {@macro storage.amplify_storage_s3.get_properties_plugin_options}
  factory S3GetPropertiesPluginOptions.fromJson(Map<String, Object?> json) =>
      _$S3GetPropertiesPluginOptionsFromJson(json);

  /// The identity ID of another user who uploaded the object.
  ///
  /// This can be set by using [S3GetPropertiesPluginOptions.forIdentity].
  final String? targetIdentityId;

  @override
  List<Object?> get props => [targetIdentityId];

  @override
  String get runtimeTypeName => 'S3GetPropertiesPluginOptions';

  @override
  Map<String, Object?> toJson() => _$S3GetPropertiesPluginOptionsToJson(this);
}
