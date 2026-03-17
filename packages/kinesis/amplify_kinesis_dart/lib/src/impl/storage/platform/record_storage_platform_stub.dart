// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_kinesis_dart/src/impl/storage/record_storage.dart';

/// Creates a platform-specific [RecordStorage] instance.
///
/// This stub throws [UnsupportedError] and should never be reached at
/// runtime — the conditional export selects the VM or web variant.
Future<RecordStorage> createPlatformRecordStorage({
  required String identifier,
  required FutureOr<String>? storagePath,
  required int maxCacheBytes,
}) {
  throw UnsupportedError(
    'Cannot create RecordStorage: no platform implementation available.',
  );
}
