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

/// {@template storage.amplify_storage_s3.list_options}
/// The configurable parameters for the Storage S3 plugin `list` requests.
/// {@endtemplate}
class S3StorageListOptions extends StorageListOptions {
  /// {@macro storage.amplify_storage_s3.list_options}
  const S3StorageListOptions({
    StorageAccessLevel storageAccessLevel = StorageAccessLevel.guest,
    int pageSize = 1000,
  }) : this._(
          storageAccessLevel: storageAccessLevel,
          pageSize: pageSize,
        );

  const S3StorageListOptions._({
    super.storageAccessLevel = StorageAccessLevel.guest,
    super.pageSize = 1000,
    this.targetIdentityId,
  });

  /// {@macro storage.amplify_storage_s3.list_options}
  ///
  /// Use this when list objects that belongs to other user (identified by
  /// [targetIdentityId]) rather than the currently signed user.
  const S3StorageListOptions.forIdentity(
    String targetIdentityId, {
    int pageSize = 1000,
  }) : this._(
          storageAccessLevel: StorageAccessLevel.protected,
          pageSize: pageSize,
          targetIdentityId: targetIdentityId,
        );

  /// The identity id of another user who uploaded the objects that to be
  /// listed.
  ///
  /// This can be set by calling the [S3StorageListOptions.forIdentity].
  final String? targetIdentityId;
}
