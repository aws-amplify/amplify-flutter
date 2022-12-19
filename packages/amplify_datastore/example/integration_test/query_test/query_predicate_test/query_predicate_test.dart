// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'aws_date_query_predicate_test.dart' as aws_date_query_predicate_test;
import 'aws_date_time_query_predicate_test.dart'
    as aws_date_time_query_predicate_test;
import 'aws_time_query_predicate_test.dart' as aws_time_query_predicate_test;
import 'aws_timestamp_query_predicate_test.dart'
    as aws_timestamp_query_predicate_tests;
import 'boolean_query_predicate_test.dart' as boolean_query_predicate_tests;
import 'compound_query_predicate_test.dart' as compound_query_predicate_tests;
import 'enum_query_predicate_test.dart' as enum_query_predicate_tests;
import 'float_query_predicate_test.dart' as float_query_predicate_tests;
import 'int_query_predicate_test.dart' as int_query_predicate_tests;
import 'list_query_predicate_test.dart' as list_query_predicate_tests;
import 'string_query_predicate_test.dart' as string_query_predicate_tests;

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('QueryPredicate', () {
    string_query_predicate_tests.main();
    int_query_predicate_tests.main();
    float_query_predicate_tests.main();
    boolean_query_predicate_tests.main();
    enum_query_predicate_tests.main();
    compound_query_predicate_tests.main();
    aws_date_query_predicate_test.main();
    aws_date_time_query_predicate_test.main();
    aws_time_query_predicate_test.main();
    aws_timestamp_query_predicate_tests.main();
    list_query_predicate_tests.main();
  });
}
