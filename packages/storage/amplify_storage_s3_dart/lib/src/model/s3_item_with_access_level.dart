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
/// A [S3Item] with its associated access level information.
/// {@endtemplate}
class S3ItemWithAccessLevel extends StorageItemWithAccessLevel<S3Item> {
  /// {@macro storage.amplify_storage_s3.storage_item_access_level}
  const S3ItemWithAccessLevel({
    required S3Item storageItem,
    StorageAccessLevel accessLevel = StorageAccessLevel.guest,
  }) : this._(
          storageItem: storageItem,
          accessLevel: accessLevel,
        );

  const S3ItemWithAccessLevel._({
    super.accessLevel = StorageAccessLevel.guest,
    required super.storageItem,
    this.targetIdentityId,
  });

  /// {@macro storage.amplify_storage_s3.storage_item_access_level}
  ///
  /// Use when creating the `source` calling `copy` API, and the contained
  /// `storageItem` belongs to another user (identified by `targetIdentityId`)
  /// rather than the currently signed in user.
  const S3ItemWithAccessLevel.forIdentity(
    String targetIdentityId, {
    required S3Item storageItem,
  }) : this._(
          storageItem: storageItem,
          accessLevel: StorageAccessLevel.protected,
          targetIdentityId: targetIdentityId,
        );

  /// The identity ID of another user who uploaded the object that is
  /// represented by the containing [storageItem].
  ///
  /// This can be set by using [S3ItemWithAccessLevel.forIdentity].
  final String? targetIdentityId;
}
