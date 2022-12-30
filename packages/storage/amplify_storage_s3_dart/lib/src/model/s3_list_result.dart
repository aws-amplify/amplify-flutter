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
    required this.metadata,
    super.nextToken,
  });

  /// Creates a [S3ListResult] from a [PaginatedResult] provided by
  /// smithy. This named constructor should be used internally only.
  @internal
  factory S3ListResult.fromPaginatedResult(
    PaginatedResult<s3.ListObjectsV2Output, int, String> paginatedResult, {
    required String prefixToDrop,
  }) {
    final output = paginatedResult.items;
    final metadata = S3ListMetadata.fromS3CommonPrefixes(
      prefixToDrop: prefixToDrop,
      commonPrefixes: output.commonPrefixes?.toList(),
      delimiter: output.delimiter,
    );
    final items = output.contents
            ?.map(
              (s3.S3Object item) => S3Item.fromS3Object(
                item,
                prefixToDrop: prefixToDrop,
              ),
            )
            .toList() ??
        const <S3Item>[];

    return S3ListResult(
      items,
      hasNextPage: paginatedResult.hasNext,
      nextToken: paginatedResult.nextContinuationToken,
      metadata: metadata,
    );
  }

  /// Merges two instances of [S3ListResult] into one.
  S3ListResult merge(S3ListResult other) {
    final items = <S3Item>[...this.items, ...other.items];
    final metadata = this.metadata.merge(other.metadata);
    return S3ListResult(
      items,
      hasNextPage: other.hasNextPage,
      nextToken: other.nextToken,
      metadata: metadata,
    );
  }

  /// Metadata that is specific to the plugin
  final S3ListMetadata metadata;
}

/// The metadata returned from the Storage S3 plugin `list` API.
class S3ListMetadata {
  /// Creates a S3ListMetadata from the `commonPrefix` and `delimiter`
  /// properties of the [s3.ListObjectsV2Output].
  factory S3ListMetadata.fromS3CommonPrefixes({
    required String prefixToDrop,
    List<s3.CommonPrefix>? commonPrefixes,
    String? delimiter,
  }) {
    final extractedSubPath = <String>[];

    if (commonPrefixes != null) {
      for (final commonPrefix in commonPrefixes) {
        final prefix = commonPrefix.prefix;
        if (prefix != null) {
          extractedSubPath.add(
            S3Item.dropPrefixFromKey(
              prefixToDrop: prefixToDrop,
              key: prefix,
            ),
          );
        }
      }
    }

    return S3ListMetadata._(
      subPaths: extractedSubPath,
      delimiter: delimiter,
    );
  }

  S3ListMetadata._({
    List<String>? subPaths,
    this.delimiter,
  }) : subPaths = subPaths ?? const [];

  /// Merges two instances of [S3ListMetadata] into one.
  S3ListMetadata merge(S3ListMetadata other) {
    final subPaths = <String>[...this.subPaths, ...other.subPaths];
    return S3ListMetadata._(subPaths: subPaths, delimiter: other.delimiter);
  }

  /// Sub paths under the `path` parameter calling the `list` API.
  ///
  /// This list can be empty.
  final List<String> subPaths;

  /// The delimiter used in S3 prefix if any.
  final String? delimiter;
}
