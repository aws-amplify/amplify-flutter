// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template storage.amplify_storage_s3.get_properties_options}
/// The configurable parameters invoking the Storage S3 plugin `getProperties` API.
/// {@endtemplate}
class S3GetPropertiesOptions extends StorageGetPropertiesOptions {
  /// {@macro storage.amplify_storage_s3.get_properties_options}
  const S3GetPropertiesOptions({
    StorageAccessLevel accessLevel = StorageAccessLevel.guest,
  }) : this._(
          accessLevel: accessLevel,
        );

  const S3GetPropertiesOptions._({
    super.accessLevel = StorageAccessLevel.guest,
    this.targetIdentityId,
  });

  /// {@macro storage.amplify_storage_s3.get_properties_options}
  ///
  /// Use this when calling `getProperties` on an object that belongs to other
  /// user (identified by [targetIdentityId]) rather than the currently signed
  /// user.
  const S3GetPropertiesOptions.forIdentity(
    String targetIdentityId,
  ) : this._(
          accessLevel: StorageAccessLevel.protected,
          targetIdentityId: targetIdentityId,
        );

  /// The identity ID of another user who uploaded the object.
  ///
  /// This can be set by using [S3GetPropertiesOptions.forIdentity].
  final String? targetIdentityId;
}
