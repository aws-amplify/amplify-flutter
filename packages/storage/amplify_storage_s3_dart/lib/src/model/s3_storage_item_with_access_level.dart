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
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

/// {@template storage.amplify_storage_s3.storage_item_access_level}
/// A [S3StorageItem] with its associated access level information.
/// {@endtemplate}
class S3StorageItemWithAccessLevel
    extends StorageItemWithAccessLevel<S3StorageItem> {
  /// {@macro storage.amplify_storage_s3.storage_item_access_level}
  const S3StorageItemWithAccessLevel({
    required S3StorageItem storageItem,
    StorageAccessLevel storageAccessLevel = StorageAccessLevel.guest,
  }) : this._(
          storageItem: storageItem,
          storageAccessLevel: storageAccessLevel,
        );

  const S3StorageItemWithAccessLevel._({
    super.storageAccessLevel = StorageAccessLevel.guest,
    required super.storageItem,
    this.targetIdentityId,
  });

  /// {@macro storage.amplify_storage_s3.storage_item_access_level}
  ///
  /// Use when creating the `source` calling `copy` API, and the contained
  /// `storageItem` belongs to another user (identified by `targetIdentityId`)
  /// rather than the currently signed in user.
  const S3StorageItemWithAccessLevel.forIdentity(
    String targetIdentityId, {
    required S3StorageItem storageItem,
  }) : this._(
          storageItem: storageItem,
          storageAccessLevel: StorageAccessLevel.protected,
          targetIdentityId: targetIdentityId,
        );

  /// The identity id of another user who uploaded the containing `storageItem`.
  ///
  /// Should be set by `S3StorageItemWithAccessLevel.forIdentity`
  /// constructor.
  final String? targetIdentityId;
}
