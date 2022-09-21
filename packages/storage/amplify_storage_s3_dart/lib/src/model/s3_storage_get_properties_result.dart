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
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart';
import 'package:meta/meta.dart';

/// {@template storage.amplify_storage_s3.list_result}
/// The result returned by Storage S3 plugin `getProperties` API.
/// {@endtemplate}
class S3StorageGetPropertiesResult
    extends StorageGetPropertiesResult<S3StorageItem> {
  /// {@macro storage.amplify_storage_s3.list_result}
  const S3StorageGetPropertiesResult({
    required super.storageItem,
  });

  /// Creates a [S3StorageGetPropertiesResult] from a [HeadObjectOutput]
  /// provided by smithy.
  ///
  /// This named constructor should be used internally only.
  @internal
  factory S3StorageGetPropertiesResult.fromHeadObjectOutput(
    HeadObjectOutput output, {
    required String key,
  }) {
    return S3StorageGetPropertiesResult(
      storageItem: S3StorageItem(
        key: key,
        lastModified: output.lastModified,
        eTag: output.eTag,
        metadata: output.metadata?.toMap() ?? <String, String>{},
        versionId: output.versionId,
        size: output.contentLength?.toInt(),
      ),
    );
  }
}
