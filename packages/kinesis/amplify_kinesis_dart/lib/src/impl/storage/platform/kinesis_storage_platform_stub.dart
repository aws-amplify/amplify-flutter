// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart';

/// Stub implementation — throws at runtime on unsupported platforms.
Future<RecordStorage> createPlatformRecordStorage({
  required String identifier,
  required FutureOr<String>? storagePath,
  required int maxCacheBytes,
  required int maxRecordsPerBatch,
  required int maxBytesPerBatch,
  required int maxRecordSizeBytes,
}) {
  throw UnsupportedError(
    'KDS record storage is not supported on this platform.',
  );
}
