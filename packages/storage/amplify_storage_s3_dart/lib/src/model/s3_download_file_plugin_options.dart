// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 's3_download_file_plugin_options.g.dart';

/// {@template storage.amplify_storage_s3.download_file_plugin_options}
/// The configurable parameters invoking the Storage S3 plugin `downloadFile` API.
/// {@endtemplate}
@zAmplifySerializable
class S3DownloadFilePluginOptions extends StorageDownloadFilePluginOptions {
  /// {@macro storage.amplify_storage_s3.download_file_plugin_options}
  const S3DownloadFilePluginOptions({
    bool getProperties = false,
    bool useAccelerateEndpoint = false,
  }) : this._(
          getProperties: getProperties,
          useAccelerateEndpoint: useAccelerateEndpoint,
        );

  const S3DownloadFilePluginOptions._({
    this.getProperties = false,
    this.targetIdentityId,
    this.useAccelerateEndpoint = false,
  });

  /// {@macro storage.amplify_storage_s3.download_file_plugin_options}
  ///
  /// Use this when calling `downloadFile` on an object that belongs to other
  /// user (identified by [targetIdentityId]) rather than the currently signed
  /// user.
  const S3DownloadFilePluginOptions.forIdentity(
    String targetIdentityId, {
    bool getProperties = false,
    bool useAccelerateEndpoint = false,
  }) : this._(
          targetIdentityId: targetIdentityId,
          getProperties: getProperties,
          useAccelerateEndpoint: useAccelerateEndpoint,
        );

  /// {@macro storage.amplify_storage_s3.download_file_plugin_options}
  factory S3DownloadFilePluginOptions.fromJson(Map<String, Object?> json) =>
      _$S3DownloadFilePluginOptionsFromJson(json);

  /// The identity ID of the user who uploaded the object.
  ///
  /// This can be set by using [S3DownloadFilePluginOptions.forIdentity].
  final String? targetIdentityId;

  /// Whether to retrieve properties for the downloaded object using the
  /// `getProperties` API.
  final bool getProperties;

  /// {@macro storage.amplify_storage_s3.transfer_acceleration}
  final bool useAccelerateEndpoint;

  @override
  List<Object?> get props => [
        getProperties,
        useAccelerateEndpoint,
        targetIdentityId,
      ];

  @override
  String get runtimeTypeName => 'S3DownloadFilePluginOptions';

  @override
  Map<String, Object?> toJson() => _$S3DownloadFilePluginOptionsToJson(this);
}
