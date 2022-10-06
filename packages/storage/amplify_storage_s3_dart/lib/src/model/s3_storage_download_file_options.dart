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

/// {@template storage.amplify_storage_s3.download_file_options}
/// The configurable parameters invoking the Storage S3 plugin `downloadFile` API.
/// {@endtemplate}
class S3StorageDownloadFileOptions extends StorageDownloadFileOptions {
  /// {@macro storage.amplify_storage_s3.download_file_options}
  const S3StorageDownloadFileOptions({
    StorageAccessLevel storageAccessLevel = StorageAccessLevel.guest,
    bool getProperties = false,
  }) : this._(
          storageAccessLevel: storageAccessLevel,
          getProperties: getProperties,
        );

  const S3StorageDownloadFileOptions._({
    super.storageAccessLevel = StorageAccessLevel.guest,
    this.getProperties = false,
    this.targetIdentityId,
  });

  /// {@macro storage.amplify_storage_s3.download_data_options}
  ///
  /// Use this when calling `downloadFile` on an object that belongs to other
  /// user (identified by [targetIdentityId]) rather than the currently signed
  /// user.
  const S3StorageDownloadFileOptions.forIdentity(
    String targetIdentityId, {
    bool getProperties = false,
  }) : this._(
          storageAccessLevel: StorageAccessLevel.protected,
          targetIdentityId: targetIdentityId,
          getProperties: getProperties,
        );

  /// The identity ID of another user who uploaded the object.
  ///
  /// This can be set by calling the [S3StorageDownloadFileOptions.forIdentity].
  final String? targetIdentityId;

  /// Whether to retrieve properties for the downloaded object using the
  /// `getProperties` API.
  final bool getProperties;
}
