// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 's3_get_url_plugin_options.g.dart';

/// {@template storage.amplify_storage_s3.get_url_plugin_options}
/// The configurable parameters invoking the Storage S3 plugin `getUrl`
/// API.
/// {@endtemplate}
@zAmplifySerializable
class S3GetUrlPluginOptions extends StorageGetUrlPluginOptions {
  /// {@macro storage.amplify_storage_s3.get_url_plugin_options}
  const S3GetUrlPluginOptions({
    Duration expiresIn = const Duration(minutes: 15),
    bool checkObjectExistence = false,
    bool useAccelerateEndpoint = false,
  }) : this._(
          expiresIn: expiresIn,
          checkObjectExistence: checkObjectExistence,
          useAccelerateEndpoint: useAccelerateEndpoint,
        );

  const S3GetUrlPluginOptions._({
    this.expiresIn = const Duration(minutes: 15),
    this.checkObjectExistence = false,
    this.targetIdentityId,
    this.useAccelerateEndpoint = false,
  });

  /// {@macro storage.amplify_storage_s3.get_url_plugin_options}
  ///
  /// Use this when calling `getUrl` on an object that belongs to other user
  /// (identified by [targetIdentityId]) rather than the currently signed user.
  const S3GetUrlPluginOptions.forIdentity(
    String targetIdentityId, {
    Duration expiresIn = const Duration(minutes: 15),
    bool checkObjectExistence = false,
    bool useAccelerateEndpoint = false,
  }) : this._(
          expiresIn: expiresIn,
          checkObjectExistence: checkObjectExistence,
          targetIdentityId: targetIdentityId,
          useAccelerateEndpoint: useAccelerateEndpoint,
        );

  /// {@macro storage.amplify_storage_s3.get_url_plugin_options}
  factory S3GetUrlPluginOptions.fromJson(Map<String, Object?> json) =>
      _$S3GetUrlPluginOptionsFromJson(json);

  /// Specifies the period of time that the generated url expires in.
  final Duration expiresIn;

  /// Specifies if check object existence in the S3 bucket before generating
  /// a presigned url.
  final bool checkObjectExistence;

  /// The identity ID of another user who uploaded the object.
  ///
  /// This can be set by using [S3GetUrlPluginOptions.forIdentity].
  final String? targetIdentityId;

  /// {@macro storage.amplify_storage_s3.transfer_acceleration}
  final bool useAccelerateEndpoint;

  @override
  List<Object?> get props => [
        expiresIn,
        checkObjectExistence,
        useAccelerateEndpoint,
        targetIdentityId,
      ];

  @override
  String get runtimeTypeName => 'S3GetUrlPluginOptions';

  @override
  Map<String, Object?> toJson() => _$S3GetUrlPluginOptionsToJson(this);
}
