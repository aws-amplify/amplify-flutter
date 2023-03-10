// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
import 'dart:math';

import 'package:meta/meta.dart';

// S3 service multipart upload limits see:
// https://docs.aws.amazon.com/AmazonS3/latest/userguide/qfacts.html

/// The minimum size of a part in multipart upload.
const minPartSize = 5 * 1024 * 1024; // 5MiB

/// The maximum number of parts can multipart load.
const maxNumberOfParts = 10000;

/// The maximum size of a single object that S3 allows.
const maxSingleObjectSize = 5 * 1024 * 1024 * 1024 * 1024; // 5TiB

/// Returns a desired number as chunk size based on [fileSize],
/// [maxNumberOfParts] and [minPartSize].
int calculateOptimalPartSize(int fileSize) {
  final partSize = (fileSize / maxNumberOfParts).ceil();
  return max(partSize, minPartSize);
}
