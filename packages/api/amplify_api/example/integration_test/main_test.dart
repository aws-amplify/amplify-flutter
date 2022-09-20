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

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'graphql/api_key_test.dart' as graph_api_key_test;
import 'graphql/iam_test.dart' as graph_iam_test;
import 'graphql/user_pools_test.dart' as graph_user_pools_test;
import 'rest_test.dart' as rest_test;

import 'util.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('amplify_api', () {
    setUpAll(() async {
      await configureAmplify();
      await signUpTestUser();
      await signInTestUser();
    });

    tearDownAll(() async {
      await deleteTestUser();
    });

    graph_api_key_test.main(useExistingTestUser: true);
    graph_iam_test.main(useExistingTestUser: true);
    graph_user_pools_test.main(useExistingTestUser: true);
    rest_test.main(useExistingTestUser: true);
  });
}
