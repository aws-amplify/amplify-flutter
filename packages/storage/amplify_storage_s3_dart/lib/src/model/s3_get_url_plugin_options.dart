// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 's3_get_url_plugin_options.g.dart';

/// The HTTP method type for the presigned URL.
enum StorageAccessMethod {
  /// Generate a presigned URL for downloading (GET) an object.
  get,

  /// Generate a presigned URL for uploading (PUT) an object.
  put,
}

/// {@template storage.amplify_storage_s3.get_url_plugin_options}
/// The configurable parameters invoking the Storage S3 plugin `getUrl`
/// API.
/// {@endtemplate}
@zAmplifySerializable
class S3GetUrlPluginOptions extends StorageGetUrlPluginOptions {
  /// {@macro storage.amplify_storage_s3.get_url_plugin_options}
  const S3GetUrlPluginOptions({
    Duration expiresIn = const Duration(minutes: 15),
    bool validateObjectExistence = false,
    bool useAccelerateEndpoint = false,
    StorageAccessMethod method = StorageAccessMethod.get,
  }) : this._(
         expiresIn: expiresIn,
         validateObjectExistence: validateObjectExistence,
         useAccelerateEndpoint: useAccelerateEndpoint,
         method: method,
       );

  const S3GetUrlPluginOptions._({
    this.expiresIn = const Duration(minutes: 15),
    this.validateObjectExistence = false,
    this.useAccelerateEndpoint = false,
    this.method = StorageAccessMethod.get,
  });

  /// {@macro storage.amplify_storage_s3.get_url_plugin_options}
  factory S3GetUrlPluginOptions.fromJson(Map<String, Object?> json) =>
      _$S3GetUrlPluginOptionsFromJson(json);

  /// Specifies the period of time that the generated url expires in.
  final Duration expiresIn;

  /// Specifies if check object existence in the S3 bucket before generating
  /// a presigned url.
  final bool validateObjectExistence;

  /// {@macro storage.amplify_storage_s3.transfer_acceleration}
  final bool useAccelerateEndpoint;

  /// The HTTP method type for the presigned URL.
  ///
  /// - [StorageAccessMethod.get]: Generate URL for downloading objects
  ///   (default).
  /// - [StorageAccessMethod.put]: Generate URL for uploading objects.
  ///
  /// Defaults to [StorageAccessMethod.get].
  final StorageAccessMethod method;

  @override
  List<Object?> get props => [
    expiresIn,
    validateObjectExistence,
    useAccelerateEndpoint,
    method,
  ];

  @override
  String get runtimeTypeName => 'S3GetUrlPluginOptions';

  @override
  Map<String, Object?> toJson() => _$S3GetUrlPluginOptionsToJson(this);
}
