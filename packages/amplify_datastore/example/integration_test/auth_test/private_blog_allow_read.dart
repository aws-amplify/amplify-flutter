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
import 'package:amplify_datastore_example/auth_models/private_blog_allow_read/ModelProvider.dart';
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

  String _generateBlogName() {
    return random.nextInt(500).toString();
  }

  /// Creates a blog as [user1], saves it, and signs in [user2]
  Future<void> _blogSetupAndTest(String blogName) async {
    // Sign in with user1 and start the store
    await user1.signInCognitoUser();

    // Create blog as user1
    await user1.createModels(Blog(name: blogName));

    // Test that the blog has been saved locally
    List<Blog> user1Blogs = await Amplify.DataStore.query(
      Blog.classType,
      where: Blog.NAME.contains(blogName),
    );
    expect(user1Blogs.length, 1);
    expect(user1Blogs.first.name, blogName);

    // Signout user1 and clear the datastore
    await user1.signOutCognitoUser();

    // Sign in with user2 and start the store
    await user2.signInCognitoUser();
  }

  group('Cognito User Pool auth tests', () {
    setUpAll(() async {
      await configureDataStore(
        'datastore-private-blog-allow-read',
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
    /// 2. user2 signs in and queries AppSync, and since they do have read permission
    /// the query returns 1 result.
    testWidgets('user1 can save a Blog, user2 can read it',
        (WidgetTester tester) async {
      String blogName = 'test1_${_generateBlogName()}';

      await _blogSetupAndTest(blogName);

      /// Expect user2 to have access to user1's blog
      List<Blog> user1BlogsRead = await Amplify.DataStore.query(
        Blog.classType,
        where: Blog.NAME.contains(blogName),
      );
      expect(user1BlogsRead.length, 1);

      // Delete user1 blogs from AppSync
      await user1.cleanUpModels();
    });

    /// This test completes the following steps:
    /// 1. user1 signs in and creates blog in AppSync.
    /// 2. user2 signs in and queries AppSync, and since they do have read permission
    /// the query returns 1 result.
    /// 3. user2 updates the blog locally
    /// 4. After clearing the store and signing in user1 again,
    /// a query returns the original blog from AppSync since user1's update
    /// should not have updated remote data
    testWidgets('user1 can save a Blog, user2 cannot update it',
        (WidgetTester tester) async {
      String blogName = 'test2_${_generateBlogName()}';

      await _blogSetupAndTest(blogName);

      /// Expect user2 to have access to user1's blog
      List<Blog> user1BlogsRead = await Amplify.DataStore.query(
        Blog.classType,
        where: Blog.NAME.contains(blogName),
      );
      expect(user1BlogsRead.length, 1);

      // Update blog locally
      Blog user1Blog = user1BlogsRead.first;
      Blog newBlog = user1Blog.copyWith(
        id: user1Blog.id,
        name: '${user1Blog.name}_updated',
      );
      await Amplify.DataStore.save(newBlog);

      // Check that blog has been updated locally.
      List<Blog> localBlogs = await Amplify.DataStore.query(
        Blog.classType,
        where: Blog.NAME.contains(blogName),
      );
      expect(localBlogs.first.name, '${user1Blog.name}_updated');

      // Signout user2 and clear the datastore
      await user2.signOutCognitoUser();

      // Sign in with user1 and start the store
      await user1.signInCognitoUser();

      /// Expect user2 to have access to first blog with original name
      List<Blog> user1BlogsReRead = await Amplify.DataStore.query(
        Blog.classType,
        where: Blog.NAME.contains(blogName),
      );
      expect(user1BlogsRead.length, 1);
      expect(user1BlogsReRead.first.name, blogName);

      // Delete user1 blogs from AppSync
      await user1.cleanUpModels();
    });

    /// This test completes the following steps:
    /// 1. user1 signs in and creates blog in AppSync.
    /// 2. user2 signs in and queries AppSync, and since they do have read permission
    /// the query returns 1 result.
    /// 3. user2 deletes the blog locally
    /// 4. After clearing the store and signing in user1 again,
    /// a query returns the original blog from AppSync since user1's delete
    /// should not have updated remote data
    testWidgets('user1 can save a Blog, user2 cannot delete it',
        (WidgetTester tester) async {
      String blogName = 'test3_${_generateBlogName()}';

      await _blogSetupAndTest(blogName);

      /// Expect user2 to have access to user1's blog
      List<Blog> user1BlogsRead = await Amplify.DataStore.query(
        Blog.classType,
        where: Blog.NAME.contains(blogName),
      );
      expect(user1BlogsRead.length, 1);

      // Delete blog locally
      Blog user1Blog = user1BlogsRead.first;
      Blog newBlog = user1Blog.copyWith(
        id: user1Blog.id,
        name: '${user1Blog.name}_updated',
      );
      await Amplify.DataStore.delete(newBlog);

      // Check that blog has been deleted locally.
      List<Blog> localBlogs = await Amplify.DataStore.query(
        Blog.classType,
        where: Blog.NAME.contains(blogName),
      );
      expect(localBlogs.length, 0);

      // Signout user2 and clear the datastore
      await user2.signOutCognitoUser();

      // Sign in with user1 and start the store
      await user1.signInCognitoUser();

      /// Expect user1 to have access to first blog with original name
      List<Blog> user1BlogsReRead = await Amplify.DataStore.query(
        Blog.classType,
        where: Blog.NAME.contains(blogName),
      );
      expect(user1BlogsRead.length, 1);
      expect(user1BlogsReRead.first.name, blogName);

      // Delete user1 blogs from AppSync
      await user1.cleanUpModels();
    });
  });
}
