// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_core/amplify_core.dart';

/// {@template storage.amplify_storage_s3.get_properties_options}
/// The configurable parameters invoking the Storage S3 plugin `getProperties` API.
/// {@endtemplate}
class S3StorageGetPropertiesOptions extends StorageGetPropertiesOptions {
  /// {@macro storage.amplify_storage_s3.get_properties_options}
  const S3StorageGetPropertiesOptions({
    StorageAccessLevel storageAccessLevel = StorageAccessLevel.guest,
  }) : this._(
          storageAccessLevel: storageAccessLevel,
        );

  const S3StorageGetPropertiesOptions._({
    super.storageAccessLevel = StorageAccessLevel.guest,
    this.targetIdentityId,
  });

  /// {@macro storage.amplify_storage_s3.get_properties_options}
  ///
  /// Use this when calling `getProperties` on an object that belongs to other
  /// user (identified by [targetIdentityId]) rather than the currently signed
  /// user.
  const S3StorageGetPropertiesOptions.forIdentity(
    String targetIdentityId,
  ) : this._(
          storageAccessLevel: StorageAccessLevel.protected,
          targetIdentityId: targetIdentityId,
        );

  /// The identity id of another user who uploaded the object that to get
  /// properties for.
  ///
  /// This can be set by calling the [S3StorageGetPropertiesOptions.forIdentity].
  final String? targetIdentityId;
}
