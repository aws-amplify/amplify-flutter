// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

part 's3_download_data_plugin_options.g.dart';

/// {@template storage.amplify_storage_s3.download_data_plugin_options}
/// The configurable parameters invoking the Storage S3 plugin `downloadData` API.
/// {@endtemplate}
@zAmplifySerializable
class S3DownloadDataPluginOptions extends StorageDownloadDataPluginOptions {
  /// {@macro storage.amplify_storage_s3.download_data_plugin_options}
  const S3DownloadDataPluginOptions({
    bool getProperties = false,
    S3DataBytesRange? bytesRange,
    bool useAccelerateEndpoint = false,
  }) : this._(
          bytesRange: bytesRange,
          getProperties: getProperties,
          useAccelerateEndpoint: useAccelerateEndpoint,
        );

  const S3DownloadDataPluginOptions._({
    this.getProperties = false,
    this.bytesRange,
    this.useAccelerateEndpoint = false,
  });

  /// {@macro storage.amplify_storage_s3.download_data_plugin_options}
  factory S3DownloadDataPluginOptions.fromJson(Map<String, Object?> json) =>
      _$S3DownloadDataPluginOptionsFromJson(json);

  /// The byte range to download from the object.
  final S3DataBytesRange? bytesRange;

  /// Whether to retrieve properties for the downloaded object using the
  /// `getProperties` API.
  final bool getProperties;

  /// {@template storage.amplify_storage_s3.transfer_acceleration}
  /// Whether to use [S3 Transfer Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/userguide/transfer-acceleration.html)
  /// enabled endpoint for the operation.
  /// {@endtemplate}
  final bool useAccelerateEndpoint;

  @override
  List<Object?> get props => [
        getProperties,
        useAccelerateEndpoint,
        bytesRange,
      ];

  @override
  String get runtimeTypeName => 'S3DownloadDataPluginOptions';

  @override
  Map<String, Object?> toJson() => _$S3DownloadDataPluginOptionsToJson(this);
}
