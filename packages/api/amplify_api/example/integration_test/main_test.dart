// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'graphql/api_key_test.dart' as graph_api_key_test;
import 'graphql/iam_test.dart' as graph_iam_test;
import 'graphql/user_pools_test.dart' as graph_user_pools_test;
import 'rest_test.dart' as rest_test;
import 'util.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  TestUser? testUser = TestUser();

  group('amplify_api gen 1 config', () {
    setUpAll(() async {
      await configureAmplify(useGen1: true);
      await signUpTestUser(testUser);
      await signInTestUser(testUser);
    });

    tearDownAll(() async {
      await Amplify.reset();
    });

    graph_api_key_test.main(
      useExistingTestUser: true,
      useGen1: true,
      testUser: testUser,
    );
    graph_iam_test.main(
      useExistingTestUser: true,
      useGen1: true,
      testUser: testUser,
    );
    graph_user_pools_test.main(
      useExistingTestUser: true,
      useGen1: true,
      testUser: testUser,
    );
  });

  group('amplify_api gen 2 config', () {
    setUpAll(() async {
      await configureAmplify();
      testUser ??= await signUpTestUser(testUser);
      await signInTestUser(testUser);
    });

    tearDownAll(() async {
      await deleteTestUser(testUser);
      await Amplify.reset();
    });

    graph_api_key_test.main(useExistingTestUser: true, testUser: testUser);
    graph_iam_test.main(useExistingTestUser: true, testUser: testUser);
    graph_user_pools_test.main(useExistingTestUser: true, testUser: testUser);

    rest_test.main(useExistingTestUser: true, testUser: testUser);
  });
}
