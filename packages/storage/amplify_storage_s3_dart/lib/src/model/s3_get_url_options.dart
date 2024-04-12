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
    Duration expiresIn = const Duration(minutes: 15),
    bool validateObjectExistence = false,
    bool useAccelerateEndpoint = false,
  }) : this._(
          expiresIn: expiresIn,
          validateObjectExistence: validateObjectExistence,
          useAccelerateEndpoint: useAccelerateEndpoint,
        );
  @Deprecated(
    'use StorageGetUrlOptions(pluginOptions: S3GetUrlPluginOptions(...)) instead.',
  )
  const S3GetUrlOptions._({
    this.expiresIn = const Duration(minutes: 15),
    this.validateObjectExistence = false,
    this.useAccelerateEndpoint = false,
  });

  /// Specifies the period of time that the generated url expires in.
  final Duration expiresIn;

  /// Specifies if check object existence in the S3 bucket before generating
  /// a presigned url.
  final bool validateObjectExistence;

  /// {@macro storage.amplify_storage_s3.transfer_acceleration}
  final bool useAccelerateEndpoint;
}
