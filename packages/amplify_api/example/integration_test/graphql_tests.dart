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

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  List<Blog> blogCache = [];

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
      var req = GraphQLRequest<String>(
          document: graphQLDocument, variables: <String, String>{'id': id});

      var operation = Amplify.API.mutate(request: req);

      var response = await operation.response;
      Map data = jsonDecode(response.data);

      return true;
    }

    Future<bool> deleteAllBlogs() async {
      await Future.wait(blogCache.map((blog) => deleteBlog(blog.id)));

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
      Map data = jsonDecode(response.data);
      Blog blog = Blog.fromJson(data['createBlog']);
      blogCache.add(blog);
      return blog;
    }

    setUpAll(() async {
      if (!Amplify.isConfigured) {
        await Amplify.addPlugins(
            [AmplifyAPI(modelProvider: ModelProvider.instance)]);
        await Amplify.configure(amplifyconfig);
      }
    });

    tearDownAll(() async {
      await deleteAllBlogs();
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
      Map data = jsonDecode(response.data);
      expect(data[listBlogs][items], hasLength(greaterThanOrEqualTo(0)));
    });

    // Queries
    testWidgets('should GET a blog with Model helper',
        (WidgetTester tester) async {
      String name = 'Integration Test Blog to fetch';
      Blog blog = await addBlog(name);

      var req = ModelQueries.get(Blog.classType, blog.id);
      var _r = Amplify.API.query(request: req);

      var res = await _r.response;
      Blog data = res.data;

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

      expect(data.items, containsAll(blogs));
    });

    testWidgets(
        'getRequestForNextResult should produce next page of results from first response',
        (WidgetTester tester) async {
      const limit = 1;
      var firstReq = ModelQueries.list<Blog>(Blog.classType,
          modelPagination: ModelPagination(limit: limit));
      var firstRes = await Amplify.API.query(request: firstReq).response;
      var firstData = firstRes.data;
      expect(firstData.items.length, limit);
      expect(firstData.hasNextResult(), true);
      var secondReq = firstData.getRequestForNextResult();
      var secondRes = await Amplify.API.query(request: secondReq).response;
      var secondData = secondRes.data;
      expect(secondData.items.length, limit);
      expect(secondData.items[0].id, isNot(firstData.items[0].id));
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

      expect(data.items.length, 1);
      expect(data.items, containsAll(blogs));
    });

    // Mutations
    testWidgets('should CREATE a blog with Model helper',
        (WidgetTester tester) async {
      String name = 'Integration Test Blog - create';
      Blog blog = Blog(name: name);

      var req = ModelMutations.create(blog);

      var _r = Amplify.API.mutate(request: req);

      var res = await _r.response;
      Blog data = res.data;

      blogCache.add(data);

      expect(data, equals(blog));
    });

    testWidgets('should UPDATE a blog with Model helper',
        (WidgetTester tester) async {
      String oldName = 'Integration Test Blog to update';
      String newName = 'Integration Test Blog - updated';
      Blog blog = await addBlog(oldName);

      blog = blog.copyWith(name: newName);

      var req = ModelMutations.update(blog);
      var _r = Amplify.API.mutate(request: req);

      var res = await _r.response;
      Blog data = res.data;

      expect(data, equals(blog));
    });

    testWidgets('should DELETE a blog with Model helper',
        (WidgetTester tester) async {
      String name = 'Integration Test Blog - delete';
      Blog blog = await addBlog(name);

      var req = ModelMutations.delete(blog);
      var _r = Amplify.API.mutate(request: req);

      var res = await _r.response;
      Blog data = res.data;

      expect(data, equals(blog));

      try {
        var checkReq = ModelQueries.get(Blog.classType, blog.id);
        var _check = Amplify.API.query(request: checkReq);
        var checkRes = await _check.response;
      } on ApiException catch (e) {
        expect(e.message, 'response from app sync was "null"');
        expect(e.recoverySuggestion,
            'Current GraphQLResponse is non-nullable, please ensure item exists before fetching');
      }
    });
  });
}
