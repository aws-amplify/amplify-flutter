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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart'
    as DataStore;
import 'package:flutter/foundation.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api/src/graphql/graphql_response_decoder.dart';
import 'package:flutter_test/flutter_test.dart';

import 'resources/Blog.dart';
import 'resources/ModelProvider.dart';

void main() {
  group('with ModelProvider', () {
    group('ModelQueries', () {
      final AmplifyAPI api = AmplifyAPI(modelProvider: ModelProvider.instance);

      test("ModelQueries.get() should build a valid request", () {
        String id = UUID.getUUID();
        String expected =
            r"query getBlog($id: ID!) { getBlog(id: $id) { id name createdAt } }";

        GraphQLRequest<Blog> req = ModelQueries.get<Blog>(Blog.classType, id);

        expect(req.document, expected);
        expect(mapEquals(req.variables, {'id': id}), isTrue);
        expect(req.modelType, Blog.classType);
        expect(req.decodePath, "getBlog");
      });

      test(
          'ModelQueries.get() returns a GraphQLRequest<Blog> when provided a modelType',
          () async {
        String id = UUID.getUUID();
        GraphQLRequest<Blog> req = ModelQueries.get<Blog>(Blog.classType, id);
        List<GraphQLResponseError> errors = [];
        String data = '''{
        "getBlog": {
            "createdAt": "2021-01-01T01:00:00.000000000Z",
            "id": "$id",
            "name": "TestAppBlog"
        }
    }''';

        GraphQLResponse<Blog> response = GraphQLResponseDecoder.instance
            .decode<Blog>(request: req, data: data, errors: errors);

        expect(response.data, isA<Blog>());
        expect(response.data.id, id);
      });
      test('ModelQueries.list() should build a valid request', () async {
        String expected =
            r"query listBlogs($filter: ModelBlogFilterInput, $limit: Int, $nextToken: String) { listBlogs(filter: $filter, limit: $limit, nextToken: $nextToken) { items { id name createdAt } nextToken } }";

        GraphQLRequest<PaginatedResult<Blog>> req =
            ModelQueries.list<Blog>(Blog.classType);

        expect(req.document, expected);
        expect(req.modelType, isA<PaginatedModelType<Blog>>());
        expect(req.decodePath, "listBlogs");
      });

      test('ModelQueries.list() should build a valid request with pagination',
          () async {
        String expected =
            r"query listBlogs($filter: ModelBlogFilterInput, $limit: Int, $nextToken: String) { listBlogs(filter: $filter, limit: $limit, nextToken: $nextToken) { items { id name createdAt } nextToken } }";

        GraphQLRequest<PaginatedResult<Blog>> req = ModelQueries.list<Blog>(
            Blog.classType,
            modelPagination: ModelPagination(limit: 1));

        expect(req.document, expected);
        expect(req.modelType, isA<PaginatedModelType<Blog>>());
        expect(req.variables["limit"], 1);
        expect(req.decodePath, "listBlogs");
      });

      test(
          'ModelQueries.get() returns a GraphQLRequest<String> when not provided a modelType',
          () async {
        String id = UUID.getUUID();
        String doc = '''query MyQuery {
      getBlog {
        id
        name
        createdAt
      }
    }''';
        GraphQLRequest<String> req =
            GraphQLRequest(document: doc, variables: {id: id});
        List<GraphQLResponseError> errors = [];
        String data = '''{
        "getBlog": {
            "createdAt": "2021-01-01T01:00:00.000000000Z",
            "id": "$id",
            "name": "TestAppBlog"
        }
    }''';

        GraphQLResponse<String> response = GraphQLResponseDecoder.instance
            .decode<String>(request: req, data: data, errors: errors);

        expect(response.data, isA<String>());
      });

      test(
          'ModelQueries.list() returns a GraphQLRequest<PaginatedResult<Blog>> when provided a modelType',
          () async {
        GraphQLRequest<PaginatedResult<Blog>> req = ModelQueries.list<Blog>(
            Blog.classType,
            modelPagination: ModelPagination(limit: 2));

        List<GraphQLResponseError> errors = [];
        String data = '''{
          "listBlogs": {
              "items": [
                {
                  "id": "test-id-1",
                  "name": "Test Blog 1",
                  "createdAt": "2021-07-29T23:09:58.441Z"
                },
                {
                  "id": "test-id-2",
                  "name": "Test Blog 2",
                  "createdAt": "2021-08-03T16:39:18.651Z"
                }
              ],
              "nextToken": "super-secret-next-token"
            }
        }''';

        GraphQLResponse<PaginatedResult<Blog>> response =
            GraphQLResponseDecoder.instance.decode<PaginatedResult<Blog>>(
                request: req, data: data, errors: errors);

        expect(response.data, isA<PaginatedResult<Blog>>());
        expect(response.data.items, isA<List<Blog>>());
        expect(response.data.items.length, 2);
      });
    });

    group('ModelMutations', () {
      test("ModelMutations.create() should build a valid request", () {
        final id = UUID.getUUID();
        final name = "Test Blog";
        final time = "2021-08-03T16:39:18.000000651Z";
        final createdAt = DataStore.TemporalDateTime.fromString(time);

        Blog blog = Blog(id: id, name: name, createdAt: createdAt);

        final expectedVars = {'id': id, 'name': name, "createdAt": time};
        final expectedDoc =
            r"mutation createBlog($input: CreateBlogInput!, $condition:  ModelBlogConditionInput) { createBlog(input: $input, condition: $condition) { id name createdAt } }";

        GraphQLRequest<Blog> req = ModelMutations.create<Blog>(blog);

        expect(req.document, expectedDoc);
        expect(mapEquals(req.variables, expectedVars), isTrue);
        expect(req.modelType, Blog.classType);
        expect(req.decodePath, "createBlog");
      });

      test("ModelMutations.update() should build a valid request", () {
        final id = UUID.getUUID();
        final name = "Test Blog";
        final time = "2021-08-03T16:39:18.000000651Z";
        final createdAt = DataStore.TemporalDateTime.fromString(time);

        Blog blog = Blog(id: id, name: name, createdAt: createdAt);

        final expectedVars = {'id': id, 'name': name, "createdAt": time};
        final expectedDoc =
            r"mutation updateBlog($input: UpdateBlogInput!, $condition:  ModelBlogConditionInput) { updateBlog(input: $input, condition: $condition) { id name createdAt } }";

        GraphQLRequest<Blog> req = ModelMutations.update<Blog>(blog);

        expect(req.document, expectedDoc);
        expect(mapEquals(req.variables, expectedVars), isTrue);
        expect(req.modelType, Blog.classType);
        expect(req.decodePath, "updateBlog");
      });
    });
  });

  group('without ModelProvider', () {
    test("should handle no ModelProvider instance", () {
      AmplifyAPI api = AmplifyAPI();
      try {
        GraphQLRequest<Blog> req = ModelQueries.get<Blog>(Blog.classType, "");
      } on ApiException catch (e) {
        expect(e.message, "No modelProvider found");
        expect(e.recoverySuggestion,
            "Pass in a modelProvider instance while instantiating APIPlugin");
        return;
      }
      fail("Expected an ApiException");
    });
  });
}
