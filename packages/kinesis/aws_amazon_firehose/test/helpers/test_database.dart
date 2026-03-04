// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_amazon_firehose/src/db/firehose_record_database.dart';

/// Creates an in-memory database for testing.
FirehoseRecordDatabase createTestDatabase() {
  return FirehoseRecordDatabase.forTesting();
}
