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
import 'dart:math';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore_example/auth_models/owner_blog_allow_all/ModelProvider.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

import '../utils/setup_utils.dart';
import '../utils/test_users.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  Random random = Random();

  // Create TestUsers that can be utilized for entire test run
  TestUser user1 = TestUser<Blog>(generateUsername(), generatePassword(), []);
  TestUser user2 = TestUser<Blog>(generateUsername(), generatePassword(), []);

  String generateBlogName() {
    return random.nextInt(500).toString();
  }

  group('Cognito User Pool auth tests', () {
    setUpAll(() async {
      await configureDataStore(
        'datastore-owner-blog-allow-all',
        additionalConfigs: [
          AmplifyAuthCognito(),
          AmplifyAPI(),
        ],
      );

      // Create records for test user in Cognito for signing in/out
      await user1.createCognitoUser();
      await user2.createCognitoUser();
    });

    setUp(() async {
      // Clear the Datastore and signout any users before each test
      await clearDataStore();
      await Amplify.Auth.signOut();
    });

    tearDownAll(() async {
      // Cleanup users in Cognito
      await user1.removeCognitoUser();
      await user2.removeCognitoUser();
    });

    /// This test completes the following steps:
    /// 1. user1 signs in and creates blog in AppSync.
    /// 2. user2 signs in and queries AppSync, and since they do not have read permission
    /// the query returns no results.
    /// 3. After clearing the store and signing in user1 again,
    /// a query returns results from AppSync
    testWidgets('user1 can save a Blog, user2 cannot read',
        (WidgetTester tester) async {
      String blogName = generateBlogName();

      // Sign in with user1 and start the store
      user1.signInCognitoUser();

      // Create blog as user1
      Blog testBlog = Blog(name: blogName);
      await user1.createModels(testBlog);

      // Test that the blog has been saved locally
      List<Blog> user1Blogs = await Amplify.DataStore.query(Blog.classType);
      expect(user1Blogs.length, 1);
      expect(user1Blogs.first.name, blogName);

      // Signout user1 and clear the datastore
      await user1.signOutCognitoUser();

      // Sign in with user2 and start the store
      await user2.signInCognitoUser();

      // Expect user2 to not own any blogs
      List<Blog> user2Blogs = await Amplify.DataStore.query(Blog.classType);
      expect(user2Blogs.length, 0);

      // Signout user2 and clear the datastore
      await user2.signOutCognitoUser();

      // Sign back in with user1 and start datastore
      await user1.signInCognitoUser();

      // Query for blogs
      List<Blog> user1BlogsReQuery =
          await Amplify.DataStore.query(Blog.classType);

      // Expect blogs owned by user1 to be retrieved from remote data
      expect(user1BlogsReQuery.length, 1);
      expect(user1BlogsReQuery.first.name, blogName);

      // Delete user1 blogs from AppSync
      await user1.cleanUpModels();
    });
  });
}
