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

import 'package:amplify_core/amplify_core.dart' hide PaginatedResult;
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart';
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart';

/// {@template storage.amplify_storage_s3.list_result}
/// The result returned by the Storage S3 plugin `list` API.
/// {@endtemplate}
class S3StorageListResult extends StorageListResult<List<S3StorageItem>> {
  /// {@macro storage.amplify_storage_s3.list_result}
  S3StorageListResult(
    super.items, {
    required super.hasNext,
    required Future<S3StorageListResult> Function() super.next,
    this.pluginMetadata = const <String, Object?>{},
  }) : _next = next;

  /// Creates a [S3StorageListResult] from a [PaginatedResult] provided by
  /// smithy. This named constructor should be used internally only.
  @internal
  factory S3StorageListResult.fromPaginatedResult(
    PaginatedResult<ListObjectsV2Output, int> paginatedResult, {
    required String prefixToDrop,
  }) {
    final output = paginatedResult.items;
    final requestedPageSize = output.maxKeys;
    final metadata = <String, Object?>{
      'commonPrefixes': output.commonPrefixes?.toList(),
      'delimiter': output.delimiter,
      'bucketName': output.name,
    };
    final items = output.contents
            ?.map(
              (S3Object item) => S3StorageItem.fromS3Object(
                item,
                prefixToDrop: prefixToDrop,
              ),
            )
            .toList() ??
        const <S3StorageItem>[];

    return S3StorageListResult(
      items,
      hasNext: paginatedResult.hasNext,
      next: () async {
        final nextPageResult = await paginatedResult.next(requestedPageSize);
        return S3StorageListResult.fromPaginatedResult(
          nextPageResult,
          prefixToDrop: prefixToDrop,
        );
      },
      pluginMetadata: metadata,
    );
  }

  @override
  Future<S3StorageListResult> next() => _next();

  final Future<S3StorageListResult> Function() _next;

  /// Metadata that is specific to the plugin
  final Map<String, Object?> pluginMetadata;
}
