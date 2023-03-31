// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template storage.amplify_storage_s3.get_url_options}
/// The configurable parameters invoking the Storage S3 plugin `getUrl`
/// API.
/// {@endtemplate}
@Deprecated(
  'use StorageGetUrlOptions(pluginOptions: S3GetUrlPluginOptions(...)) instead.',
)
class S3GetUrlOptions extends StorageGetUrlOptions {
  /// {@macro storage.amplify_storage_s3.get_url_options}
  @Deprecated(
    'use StorageGetUrlOptions(pluginOptions: S3GetUrlPluginOptions(...)) instead.',
  )
  const S3GetUrlOptions({
    StorageAccessLevel accessLevel = StorageAccessLevel.guest,
    Duration expiresIn = const Duration(minutes: 15),
    bool validateObjectExistence = false,
    bool useAccelerateEndpoint = false,
  }) : this._(
          accessLevel: accessLevel,
          expiresIn: expiresIn,
          validateObjectExistence: validateObjectExistence,
          useAccelerateEndpoint: useAccelerateEndpoint,
        );
  @Deprecated(
    'use StorageGetUrlOptions(pluginOptions: S3GetUrlPluginOptions(...)) instead.',
  )
  const S3GetUrlOptions._({
    super.accessLevel = StorageAccessLevel.guest,
    this.expiresIn = const Duration(minutes: 15),
    this.validateObjectExistence = false,
    this.targetIdentityId,
    this.useAccelerateEndpoint = false,
  });

  /// {@macro storage.amplify_storage_s3.get_url_options}
  ///
  /// Use this when calling `getUrl` on an object that belongs to other user
  /// (identified by [targetIdentityId]) rather than the currently signed user.
  @Deprecated(
    'use StorageGetUrlOptions(pluginOptions: S3GetUrlPluginOptions.forIdentity(...)) instead.',
  )
  const S3GetUrlOptions.forIdentity(
    String targetIdentityId, {
    Duration expiresIn = const Duration(minutes: 15),
    bool validateObjectExistence = false,
    bool useAccelerateEndpoint = false,
  }) : this._(
          accessLevel: StorageAccessLevel.protected,
          expiresIn: expiresIn,
          validateObjectExistence: validateObjectExistence,
          targetIdentityId: targetIdentityId,
          useAccelerateEndpoint: useAccelerateEndpoint,
        );

  /// Specifies the period of time that the generated url expires in.
  final Duration expiresIn;

  /// Specifies if check object existence in the S3 bucket before generating
  /// a presigned url.
  final bool validateObjectExistence;

  /// The identity ID of another user who uploaded the object.
  ///
  /// This can be set by using [S3GetUrlOptions.forIdentity].
  final String? targetIdentityId;

  /// {@macro storage.amplify_storage_s3.transfer_acceleration}
  final bool useAccelerateEndpoint;
}
