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
