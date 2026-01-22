// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_kinesis_datastreams/src/db/kinesis_record_database.dart';
import 'package:drift/native.dart';

/// Creates an in-memory database for testing.
KinesisRecordDatabase createTestDatabase() {
  return KinesisRecordDatabase.forTesting(
    NativeDatabase.memory(),
  );
}
