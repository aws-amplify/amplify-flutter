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

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'graphql_tests.dart' as graph_ql_tests;

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('amplify_api', () {
    setUpAll(() async {
      await Amplify.addPlugins(
          [AmplifyAPI(modelProvider: ModelProvider.instance)]);
      await Amplify.configure(amplifyconfig);
    });

    graph_ql_tests.main();
  });
}
