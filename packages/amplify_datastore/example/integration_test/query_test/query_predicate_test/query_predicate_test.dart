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
import 'double_query_predicate_test.dart' as double_query_predicate_tests;
import 'bool_query_predicate_test.dart' as bool_query_predicate_tests;
import 'enum_query_predicate_test.dart' as enum_query_predicate_tests;

import '../../utils/setup_utils.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('QueryPredicate', () {
    setUpAll(() async {
      await configureDataStore();
    });

    string_query_predicate_tests.main();
    int_query_predicate_tests.main();
    double_query_predicate_tests.main();
    bool_query_predicate_tests.main();
    enum_query_predicate_tests.main();
  });
}
