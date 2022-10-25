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

/// {@template storage.amplify_storage_s3.get_url_options}
/// The configurable parameters invoking the Storage S3 plugin `getUrl`
/// API.
/// {@endtemplate}
class S3GetUrlOptions extends StorageGetUrlOptions {
  /// {@macro storage.amplify_storage_s3.get_url_options}
  const S3GetUrlOptions({
    StorageAccessLevel accessLevel = StorageAccessLevel.guest,
    Duration expiresIn = const Duration(days: 1),
    bool checkObjectExistence = false,
  }) : this._(
          accessLevel: accessLevel,
          expiresIn: expiresIn,
          checkObjectExistence: checkObjectExistence,
        );

  const S3GetUrlOptions._({
    super.accessLevel = StorageAccessLevel.guest,
    this.expiresIn = const Duration(days: 1),
    this.checkObjectExistence = false,
    this.targetIdentityId,
  });

  /// {@macro storage.amplify_storage_s3.get_url_options}
  ///
  /// Use this when calling `getUrl` on an object that belongs to other user
  /// (identified by [targetIdentityId]) rather than the currently signed user.
  const S3GetUrlOptions.forIdentity(
    String targetIdentityId, {
    Duration expiresIn = const Duration(days: 1),
    bool checkObjectExistence = false,
  }) : this._(
          accessLevel: StorageAccessLevel.protected,
          expiresIn: expiresIn,
          checkObjectExistence: checkObjectExistence,
          targetIdentityId: targetIdentityId,
        );

  /// Specifies the period of time that the generated url expires in.
  final Duration expiresIn;

  /// Specifies if check object existence in the S3 bucket before generating
  /// a presigned url.
  final bool checkObjectExistence;

  /// The identity id of another user who uploaded the object that to get url
  /// for.
  ///
  /// This can be set by calling the [S3GetUrlOptions.forIdentity].
  final String? targetIdentityId;
}
