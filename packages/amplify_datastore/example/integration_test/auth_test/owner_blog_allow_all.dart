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

import '../utils/manager_users.dart';
import '../utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  Random random = Random();
  String username1 = generateUsername();
  String password1 = generatePassword();
  String username2 = generateUsername();
  String password2 = generatePassword();

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

      /// Create 2 users
      await createUser(username1, password1);
      await createUser(username2, password2);
    });

    setUp(() async {
      await clearDataStore();
      await Amplify.Auth.signOut();
    });

    tearDownAll(() async {
      /// Cleanup users
      await removeUser(username1, password1);
      await removeUser(username2, password2);
    });

    testWidgets('user1 can save a Blog, user2 cannot read',
        (WidgetTester tester) async {
      String blogName = generateBlogName();

      /// Sign in with first user
      await Amplify.Auth.signIn(
        username: username1,
        password: password1,
      );

      await startDatastore();

      /// Create blog as first user
      Blog testBlog = Blog(name: blogName);
      await Amplify.DataStore.save(testBlog);

      var user1Blogs = await Amplify.DataStore.query(Blog.classType);
      expect(user1Blogs.length, 1);
      expect(user1Blogs.first.name, blogName);

      await clearDataStore();
      await Amplify.Auth.signOut();

      /// Sign in with second user
      await Amplify.Auth.signIn(
        username: username2,
        password: password2,
      );

      var user2Blogs = await Amplify.DataStore.query(Blog.classType);

      /// Expect second user to not own any blogs
      expect(user2Blogs.length, 0);

      await clearDataStore();
      await Amplify.Auth.signOut();

      /// Sign back in with first user
      await Amplify.Auth.signIn(
        username: username1,
        password: password1,
      );

      await startDatastore();

      var user1BlogsReQuery = await Amplify.DataStore.query(Blog.classType);

      /// Expect blogs owned by user1
      expect(user1BlogsReQuery.length, 1);
      expect(user1BlogsReQuery.first.name, blogName);
    });
  });
}
