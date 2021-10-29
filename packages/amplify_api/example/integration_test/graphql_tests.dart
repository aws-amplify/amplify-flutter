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

import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart'
    hide UUID;

import 'resources/Blog.dart';
import 'resources/ModelProvider.dart';
import 'resources/Post.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  // Keep track of what is created here so it can be deleted.
  List<Blog> blogCache = [];
  List<Post> postCache = [];

  // utility to query blogs and return length
  group('GraphQL', () {
    // declare utility to delete all blogs async
    Future<bool> deleteBlog(String id) async {
      String graphQLDocument = '''mutation deleteBlog(\$id: ID!) {
          deleteBlog(input: {id: \$id}) {
            id
            name
            createdAt
          }
        }''';
      final req = GraphQLRequest<String>(
          document: graphQLDocument, variables: <String, String>{'id': id});
      final response = await Amplify.API.mutate(request: req).response;
      Map data = jsonDecode(response.data!);
      return true;
    }

    Future<bool> deletePost(String id) async {
      final req = ModelMutations.deleteById<Post>(Post.classType, id);
      await Amplify.API.mutate(request: req).response;
      return true;
    }

    Future<bool> deleteAllBlogsAndPosts() async {
      await Future.wait(blogCache.map((blog) => deleteBlog(blog.id)));
      await Future.wait(postCache.map((post) => deletePost(post.id)));

      return true;
    }

    // declare utility which creates blog with title as parameter
    Future<Blog> addBlog(String name) async {
      String graphQLDocument = '''mutation createBlog(\$name: String!) {
        createBlog(input: {name: \$name}) {
          id
          name
          createdAt
        }
      }''';

      var _r = Amplify.API.mutate(
          request: GraphQLRequest<String>(
              document: graphQLDocument,
              variables: <String, String>{'name': name}));

      var response = await _r.response;
      Map data = jsonDecode(response.data!);
      Blog blog = Blog.fromJson(data['createBlog']);
      blogCache.add(blog);
      return blog;
    }

    Future<Post> addPostAndBlogWithModelHelper(String title, int rating,
        {bool skipDelete = false}) async {
      String name = 'Integration Test Blog with a post - create';
      Blog createdBlog = await addBlog(name);

      Post post = Post(title: title, rating: rating, blog: createdBlog);
      final createPostReq = ModelMutations.create(post);
      final createPostRes =
          await Amplify.API.mutate(request: createPostReq).response;
      Post? data = createPostRes.data;
      if (data == null) {
        throw Exception(
            'Null response while creating post. Response errors: ${createPostRes.errors}');
      }
      if (!skipDelete) postCache.add(data);

      // TEMP, add the blog to the returned post so it can be further mutated.
      // This is needed until the response returned here also returns the parent.
      return data.copyWith(blog: createdBlog);
    }

    setUpAll(() async {
      if (!Amplify.isConfigured) {
        await Amplify.addPlugins(
            [AmplifyAPI(modelProvider: ModelProvider.instance)]);
        await Amplify.configure(amplifyconfig);
      }
    });

    tearDownAll(() async {
      await deleteAllBlogsAndPosts();
    });

    testWidgets('should fetch', (WidgetTester tester) async {
      const listBlogs = 'listBlogs';
      const items = 'items';
      String graphQLDocument = '''query MyQuery {
        $listBlogs {
          $items {
            id
            name
            createdAt
          }
        }
      }''';
      var _r = Amplify.API
          .query<String>(request: GraphQLRequest(document: graphQLDocument));
      var response = await _r.response;
      Map data = jsonDecode(response.data!);
      expect(data[listBlogs][items], hasLength(greaterThanOrEqualTo(0)));
    });

    // Queries
    testWidgets('should GET a blog with Model helper',
        (WidgetTester tester) async {
      String name = 'Integration Test Blog to fetch';
      Blog blog = await addBlog(name);

      final req = ModelQueries.get(Blog.classType, blog.id);
      final res = await Amplify.API.query(request: req).response;
      Blog? data = res.data;

      expect(data, equals(blog));
    });

    testWidgets('should LIST blogs with Model helper',
        (WidgetTester tester) async {
      String blog_1_name = 'Integration Test Blog 1';
      String blog_2_name = 'Integration Test Blog 2';
      String blog_3_name = 'Integration Test Blog 3';
      Blog blog_1 = await addBlog(blog_1_name);
      Blog blog_2 = await addBlog(blog_2_name);
      Blog blog_3 = await addBlog(blog_3_name);

      var req = ModelQueries.list<Blog>(Blog.classType);
      var _r = Amplify.API.query(request: req);

      var res = await _r.response;
      var data = res.data;

      final blogs = [blog_1, blog_2, blog_3];

      expect(data?.items, containsAll(blogs));
    });

    testWidgets(
        'get requestForNextResult should produce next page of results from first response',
        (WidgetTester tester) async {
      const limit = 1;
      var firstReq = ModelQueries.list<Blog>(Blog.classType, limit: limit);
      var firstRes = await Amplify.API.query(request: firstReq).response;
      var firstData = firstRes.data;
      expect(firstData?.items.length, limit);
      expect(firstData?.hasNextResult, true);
      var secondReq = firstData?.requestForNextResult;
      var secondRes = await Amplify.API.query(request: secondReq!).response;
      var secondData = secondRes.data;
      expect(secondData?.items.length, limit);
      expect(secondData?.items[0].id, isNot(firstData?.items[0].id));
    });

    testWidgets('should LIST blogs with Model helper with query predicate',
        (WidgetTester tester) async {
      String uuid = UUID.getUUID();
      String blogName = 'Integration Test Blog $uuid';
      Blog blog = await addBlog(blogName);

      final req = ModelQueries.list<Blog>(Blog.classType,
          where: Blog.NAME.eq(blogName) & Blog.ID.eq(blog.id));
      final res = await Amplify.API.query(request: req).response;
      final data = res.data;
      final blogs = [blog];

      expect(data?.items.length, 1);
      expect(data?.items, containsAll(blogs));
    });

    // Mutations
    testWidgets('should CREATE a blog with Model helper',
        (WidgetTester tester) async {
      String name = 'Integration Test Blog - create';
      Blog blog = Blog(name: name);

      final req = ModelMutations.create(blog);
      final res = await Amplify.API.mutate(request: req).response;
      Blog? data = res.data;
      if (data != null) blogCache.add(data);

      expect(data?.name, equals(blog.name));
      expect(data?.id, equals(blog.id));
    });

    testWidgets('should CREATE a post (model with parent) with Model helper',
        (WidgetTester tester) async {
      final title = 'Lorem Ipsum Test Post: ${UUID.getUUID()}';
      const rating = 0;
      Post data = await addPostAndBlogWithModelHelper(title, rating);

      expect(data.title, equals(title));
      expect(data.rating, equals(rating));
    });

    testWidgets('should UPDATE a blog with Model helper',
        (WidgetTester tester) async {
      String oldName = 'Integration Test Blog to update';
      String newName = 'Integration Test Blog - updated';
      Blog blog = await addBlog(oldName);
      blog = blog.copyWith(name: newName);

      final req = ModelMutations.update(blog);
      final res = await Amplify.API.mutate(request: req).response;

      expect(res.data, equals(blog));
    });

    testWidgets('should UPDATE a post (model with parent) with Model helper',
        (WidgetTester tester) async {
      final originalTitle = 'Lorem Ipsum Test Post: ${UUID.getUUID()}';
      const rating = 0;
      Post originalPost =
          await addPostAndBlogWithModelHelper(originalTitle, rating);

      final updatedTitle =
          'Lorem Ipsum Test Post: (title updated) ${UUID.getUUID()}';
      Post localUpdatedPost = originalPost.copyWith(title: updatedTitle);
      final updateReq = ModelMutations.update(localUpdatedPost);
      final updateRes = await Amplify.API.mutate(request: updateReq).response;
      Post? mutatedPost = updateRes.data;
      expect(mutatedPost?.title, equals(updatedTitle));
    });

    // TODO: test that updating without a parent blog gets error from appsync
    // depends on nullable data in response.

    testWidgets(
        'should not UPDATE a blog with Model helper when where condition not met',
        (WidgetTester tester) async {
      String oldName = 'Integration Test Blog to update';
      String newName = 'Integration Test Blog - updated';
      Blog blog = await addBlog(oldName);
      blog = blog.copyWith(name: newName);
      final req =
          ModelMutations.update(blog, where: Blog.NAME.eq('THATS_NOT_MY_NAME'));

      // attempt update
      final updateRes = await Amplify.API.mutate(request: req).response;
      expect(updateRes.data, isNull);
      // query again to ensure it still unchanged
      final getReq = ModelQueries.get(Blog.classType, blog.id);
      final res = await Amplify.API.query(request: getReq).response;
      expect(res.data?.name, oldName);
    });

    testWidgets('should DELETE a blog with Model helper',
        (WidgetTester tester) async {
      String name = 'Integration Test Blog - delete';
      Blog blog = await addBlog(name);

      final deleteReq = ModelMutations.delete(blog);
      final deleteRes = await Amplify.API.mutate(request: deleteReq).response;
      Blog data = deleteRes.data!;
      expect(data, equals(blog));

      final checkReq = ModelQueries.get(Blog.classType, blog.id);
      final checkRes = await Amplify.API.query(request: checkReq).response;
      expect(checkRes.data, isNull);
    });

    testWidgets('should Delete a post (model with parent) with Model helper',
        (WidgetTester tester) async {
      final title = 'Lorem Ipsum Test Post: ${UUID.getUUID()}';
      const rating = 0;
      Post post =
          await addPostAndBlogWithModelHelper(title, rating, skipDelete: true);

      final req = ModelMutations.deleteById(Post.classType, post.id);
      final res = await Amplify.API.mutate(request: req).response;
      Post? mutatedPost = res.data;
      expect(mutatedPost?.title, equals(title));
    });

    testWidgets(
        'should not DELETE a blog with Model helper when where condition not met',
        (WidgetTester tester) async {
      String name = 'Integration Test Blog - failed delete';
      Blog blog = await addBlog(name);
      final req =
          ModelMutations.delete(blog, where: Blog.NAME.eq('THATS_NOT_MY_NAME'));

      // attempt delete
      final deleteRes = await Amplify.API.mutate(request: req).response;
      expect(deleteRes.data, isNull);
      // query again to ensure it still exists
      final getReq = ModelQueries.get(Blog.classType, blog.id);
      final res = await Amplify.API.query(request: getReq).response;
      expect(res.data?.name, name);
    });
  });
}
