// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_firehose_dart/src/db/firehose_record_database.dart';
import 'package:drift/native.dart';

/// Creates an in-memory database for testing.
FirehoseRecordDatabase createTestDatabase() {
  return FirehoseRecordDatabase.forTesting(NativeDatabase.memory());
}
