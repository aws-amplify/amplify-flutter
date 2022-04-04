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

import 'query_test/query_test.dart' as query_test;
import 'model_type_test.dart' as model_type_tests;
import 'observe_test.dart' as observe_tests;
import 'observe_query_test.dart' as observe_query_tests;
import 'clear_test.dart' as clear_tests;

import 'utils/setup_utils.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('amplify_datastore', () {
    setUpAll(() async {
      await configureDataStore();
    });

    query_test.main();
    model_type_tests.main();
    observe_tests.main();
    observe_query_tests.main();
    clear_tests.main();
  });
}
