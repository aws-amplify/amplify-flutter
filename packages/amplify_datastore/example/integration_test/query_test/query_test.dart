// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import './query_predicate_test/query_predicate_test.dart'
    as query_predicate_tests;
import 'pagination_test.dart' as pagination_tests;
import 'sort_order_test.dart' as sort_order_tests;
import 'standard_query_operations_test.dart' as standard_query_operations_tests;

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('query()', () {
    standard_query_operations_tests.main();
    sort_order_tests.main();
    pagination_tests.main();
    query_predicate_tests.main();
  });
}
