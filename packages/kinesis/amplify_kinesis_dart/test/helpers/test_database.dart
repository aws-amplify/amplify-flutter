// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart';
import 'package:drift/native.dart';

/// Creates an in-memory database for testing.
RecordCacheDatabase createTestDatabase() {
  return RecordCacheDatabase.forTesting(NativeDatabase.memory());
}
