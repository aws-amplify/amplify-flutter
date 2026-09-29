// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart' hide PaginatedResult;
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart' as s3;
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart';

/// {@template storage.amplify_storage_s3.list_result}
/// The result returned by the Storage S3 plugin `list` API.
/// {@endtemplate}
class S3ListResult extends StorageListResult<S3Item> {
  /// {@macro storage.amplify_storage_s3.list_result}
  S3ListResult(
    super.items, {
    required super.hasNextPage,
    super.nextToken,
    super.excludedSubpaths,
  });

  /// Creates a [S3ListResult] from a [PaginatedResult] provided by
  /// smithy. This named constructor should be used internally only.
  @internal
  factory S3ListResult.fromPaginatedResult(
    PaginatedResult<s3.ListObjectsV2Output, int, String> paginatedResult,
  ) {
    final output = paginatedResult.items;
    final excludedSubpaths = output.commonPrefixes
        ?.map((commonPrefix) => commonPrefix.prefix)
        .whereType<String>()
        .toList();
    final items = output.contents?.map(S3Item.fromS3Object).toList();

    return S3ListResult(
      items ?? const <S3Item>[],
      hasNextPage: paginatedResult.hasNext,
      nextToken: paginatedResult.nextContinuationToken,
      excludedSubpaths: excludedSubpaths ?? const <String>[],
    );
  }

  /// Merges two instances of [S3ListResult] into one.
  S3ListResult merge(S3ListResult other) {
    final items = <S3Item>[...this.items, ...other.items];
    final excludedSubpaths = <String>[
      ...this.excludedSubpaths,
      ...other.excludedSubpaths,
    ];
    return S3ListResult(
      items,
      hasNextPage: other.hasNextPage,
      nextToken: other.nextToken,
      excludedSubpaths: excludedSubpaths,
    );
  }
}
