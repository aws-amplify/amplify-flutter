// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:drift/drift.dart';

/// A test [QueryExecutorUser] that does nothing before opening.
class TestQueryExecutorUser implements QueryExecutorUser {
  @override
  Future<void> beforeOpen(
    QueryExecutor executor,
    OpeningDetails details,
  ) async {
    // do nothing
  }

  @override
  int get schemaVersion => 1;
}
