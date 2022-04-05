/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'string_query_predicate_test.dart' as string_query_predicate_tests;
import 'int_query_predicate_test.dart' as int_query_predicate_tests;
import 'float_query_predicate_test.dart' as float_query_predicate_tests;
import 'boolean_query_predicate_test.dart' as boolean_query_predicate_tests;
import 'enum_query_predicate_test.dart' as enum_query_predicate_tests;
import 'compound_query_predicate_test.dart' as compound_query_predicate_tests;
import 'aws_date_query_predicate_test.dart' as aws_date_query_predicate_test;
import 'aws_date_time_query_predicate_test.dart'
    as aws_date_time_query_predicate_test;
import 'aws_time_query_predicate_test.dart' as aws_time_query_predicate_test;
import 'aws_timestamp_query_predicate_test.dart'
    as aws_timestamp_query_predicate_tests;
import 'list_query_predicate_test.dart' as list_query_predicate_tests;

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
