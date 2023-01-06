// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'clear_test.dart' as clear_tests;
import 'model_type_test.dart' as model_type_tests;
import 'observe_query_test.dart' as observe_query_tests;
import 'observe_test.dart' as observe_tests;
import 'query_test/query_test.dart' as query_test;
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
