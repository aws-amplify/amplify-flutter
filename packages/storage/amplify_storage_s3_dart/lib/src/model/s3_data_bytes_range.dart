// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

/// {@template storage.amplify_storage_s3.data_bytes_range}
/// Defines data bytes range with `start` and `end` positions.
/// {@endtemplate}
class S3DataBytesRange {
  /// {@macro storage.amplify_storage_s3.data_bytes_range}
  factory S3DataBytesRange({
    required int start,
    required int end,
  }) {
    if (start >= end) {
      throw InvalidBytesRangeError(
        'Invalid bytes range of `S3DataBytesRange`.',
        recoverySuggestion: '`start` needs to be less than `end`.',
      );
    }

    return S3DataBytesRange._(start: start, end: end);
  }

  const S3DataBytesRange._({
    required this.start,
    required this.end,
  });

  /// Start position of the range.
  final int start;

  /// End position of the range.
  final int end;

  /// Returns the [S3DataBytesRange] as a string used in HTTP request headers.
  String get headerString => 'bytes=$start-$end';
}
