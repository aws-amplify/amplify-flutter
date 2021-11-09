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
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api/src/graphql/graphql_response_decoder.dart';
import 'package:amplify_api/src/graphql/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:collection/collection.dart';

import 'resources/Blog.dart';
import 'resources/Post.dart';
import 'resources/ModelProvider.dart';

void main() {
  group('with ModelProvider', () {
    group('ModelQueries', () {
      final AmplifyAPI api = AmplifyAPI(modelProvider: ModelProvider.instance);

      test('ModelQueries.get() should build a valid request', () {
        String id = UUID.getUUID();
        String expected =
            r'query getBlog($id: ID!) { getBlog(id: $id) { id name createdAt } }';

        GraphQLRequest<Blog> req = ModelQueries.get<Blog>(Blog.classType, id);

        expect(req.document, expected);
        expect(
            DeepCollectionEquality().equals(req.variables, {'id': id}), isTrue);
        expect(req.modelType, Blog.classType);
        expect(req.decodePath, 'getBlog');
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
        expect(response.data?.id, id);
      });
      test('ModelQueries.list() should build a valid request', () async {
        String expected =
            r'query listBlogs($filter: ModelBlogFilterInput, $limit: Int, $nextToken: String) { listBlogs(filter: $filter, limit: $limit, nextToken: $nextToken) { items { id name createdAt } nextToken } }';

        GraphQLRequest<PaginatedResult<Blog>> req =
            ModelQueries.list<Blog>(Blog.classType);

        expect(req.document, expected);
        expect(req.modelType, isA<PaginatedModelType<Blog>>());
        expect(req.decodePath, 'listBlogs');
      });

      test('ModelQueries.list() should build a valid request with pagination',
          () async {
        String expected =
            r'query listBlogs($filter: ModelBlogFilterInput, $limit: Int, $nextToken: String) { listBlogs(filter: $filter, limit: $limit, nextToken: $nextToken) { items { id name createdAt } nextToken } }';

        GraphQLRequest<PaginatedResult<Blog>> req =
            ModelQueries.list<Blog>(Blog.classType, limit: 1);

        expect(req.document, expected);
        expect(req.modelType, isA<PaginatedModelType<Blog>>());
        expect(req.variables['limit'], 1);
        expect(req.decodePath, 'listBlogs');
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
            GraphQLRequest(document: doc, variables: <String, String>{id: id});
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
        GraphQLRequest<PaginatedResult<Blog>> req =
            ModelQueries.list<Blog>(Blog.classType, limit: 2);

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
        expect(response.data?.items, isA<List<Blog>>());
        expect(response.data?.items.length, 2);
      });

      test(
          'GraphQLResponse<PaginatedResult<Blog>> can get the request for next page of data',
          () async {
        const limit = 2;
        GraphQLRequest<PaginatedResult<Blog>> req =
            ModelQueries.list<Blog>(Blog.classType, limit: limit);

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
        expect(response.data?.hasNextResult, true);
        String expectedDocument =
            r'query listBlogs($filter: ModelBlogFilterInput, $limit: Int, $nextToken: String) { listBlogs(filter: $filter, limit: $limit, nextToken: $nextToken) { items { id name createdAt } nextToken } }';
        final resultRequest = response.data?.requestForNextResult!;
        expect(resultRequest?.document, expectedDocument);
        expect(resultRequest?.variables['nextToken'], response.data?.nextToken);
        expect(resultRequest?.variables['limit'], limit);
      });

      test(
          'GraphQLResponse<PaginatedResult<Blog>> will not have data for next page when result has no nextToken',
          () async {
        const limit = 2;
        GraphQLRequest<PaginatedResult<Blog>> req =
            ModelQueries.list<Blog>(Blog.classType, limit: limit);

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
              ]
            }
        }''';

        GraphQLResponse<PaginatedResult<Blog>> response =
            GraphQLResponseDecoder.instance.decode<PaginatedResult<Blog>>(
                request: req, data: data, errors: errors);
        expect(response.data?.hasNextResult, false);
      });

      test(
          'ModelQueries.list() should correctly populate a request with a simple QueryPredicate',
          () async {
        const expectedTitle = 'Test Blog 1';
        const expectedDocument =
            r'query listBlogs($filter: ModelBlogFilterInput, $limit: Int, $nextToken: String) { listBlogs(filter: $filter, limit: $limit, nextToken: $nextToken) { items { id name createdAt } nextToken } }';
        const expectedFilter = {
          'name': {'eq': expectedTitle}
        };

        final queryPredicate = Blog.NAME.eq(expectedTitle);
        GraphQLRequest<PaginatedResult<Blog>> req =
            ModelQueries.list<Blog>(Blog.classType, where: queryPredicate);

        expect(req.document, expectedDocument);
        expect(req.modelType, isA<PaginatedModelType<Blog>>());
        expect(req.decodePath, 'listBlogs');
        expect(req.variables['filter'], expectedFilter);
      });

      test(
          'getRequestForNextResult() should have same filter as original request',
          () async {
        const limit = 2;
        const expectedTitle = 'Test Blog 1';
        const expectedFilter = {
          'name': {'eq': expectedTitle}
        };

        final queryPredicate = Blog.NAME.eq(expectedTitle);
        GraphQLRequest<PaginatedResult<Blog>> req = ModelQueries.list<Blog>(
            Blog.classType,
            limit: limit,
            where: queryPredicate);
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
        Map<String, dynamic> firstRequestFilter = req.variables['filter'];
        final resultRequest = response.data?.requestForNextResult!;

        expect(resultRequest?.variables['filter'], firstRequestFilter);
        expect(resultRequest?.variables['filter'], expectedFilter);
      });
    });

    group('ModelMutations', () {
      test('ModelMutations.create() should build a valid request', () {
        final id = UUID.getUUID();
        final name = 'Test Blog';
        final time = '2021-08-03T16:39:18.000000651Z';
        final createdAt = DataStore.TemporalDateTime.fromString(time);

        Blog blog = Blog(id: id, name: name, createdAt: createdAt);
        final expectedVars = {
          'input': {'id': id, 'name': name, 'createdAt': time}
        };
        final expectedDoc =
            r'mutation createBlog($input: CreateBlogInput!, $condition:  ModelBlogConditionInput) { createBlog(input: $input, condition: $condition) { id name createdAt } }';

        GraphQLRequest<Blog> req = ModelMutations.create<Blog>(blog);

        expect(req.document, expectedDoc);
        expect(DeepCollectionEquality().equals(req.variables, expectedVars),
            isTrue);
        expect(req.modelType, Blog.classType);
        expect(req.decodePath, 'createBlog');
      });

      test(
          'ModelMutations.create() should build a valid request for a model with a parent',
          () {
        final blogId = UUID.getUUID();
        const name = 'Test Blog';
        const time = '2021-08-03T16:39:18.000000651Z';
        final createdAt = DataStore.TemporalDateTime.fromString(time);
        Blog blog = Blog(id: blogId, name: name, createdAt: createdAt);

        final postId = UUID.getUUID();
        const title = 'Lorem Ipsum';
        const rating = 1;
        Post post = Post(id: postId, title: title, rating: rating, blog: blog);

        final expectedVars = {
          'input': <String, dynamic>{
            'id': postId,
            'title': title,
            'rating': rating,
            'created': null,
            'blogID': blogId
          }
        };
        const expectedDoc =
            r'mutation createPost($input: CreatePostInput!, $condition:  ModelPostConditionInput) { createPost(input: $input, condition: $condition) { id title rating created blog { id name createdAt } } }';
        GraphQLRequest<Post> req = ModelMutations.create<Post>(post);

        expect(req.document, expectedDoc);
        expect(DeepCollectionEquality().equals(req.variables, expectedVars),
            isTrue);
        expect(req.modelType, Post.classType);
        expect(req.decodePath, 'createPost');
      });

      test('ModelMutations.delete() should build a valid request', () {
        final id = UUID.getUUID();
        final name = 'Test Blog';
        final time = '2021-08-03T16:39:18.000000651Z';
        final createdAt = DataStore.TemporalDateTime.fromString(time);

        Blog blog = Blog(id: id, name: name, createdAt: createdAt);

        final expectedVars = {
          'input': {'id': id},
          'condition': null
        };
        final expectedDoc =
            r'mutation deleteBlog($input: DeleteBlogInput!, $condition:  ModelBlogConditionInput) { deleteBlog(input: $input, condition: $condition) { id name createdAt } }';

        GraphQLRequest<Blog> req = ModelMutations.delete<Blog>(blog);

        expect(req.document, expectedDoc);
        expect(DeepCollectionEquality().equals(req.variables, expectedVars),
            isTrue);
        expect(req.modelType, Blog.classType);
        expect(req.decodePath, 'deleteBlog');
      });

      test('ModelMutations.deleteById() should build a valid request', () {
        final id = UUID.getUUID();

        final expectedVars = {
          'input': {'id': id},
          'condition': null
        };
        final expectedDoc =
            r'mutation deleteBlog($input: DeleteBlogInput!, $condition:  ModelBlogConditionInput) { deleteBlog(input: $input, condition: $condition) { id name createdAt } }';

        GraphQLRequest<Blog> req =
            ModelMutations.deleteById<Blog>(Blog.classType, id);

        expect(req.document, expectedDoc);
        expect(DeepCollectionEquality().equals(req.variables, expectedVars),
            isTrue);
        expect(req.modelType, Blog.classType);
        expect(req.decodePath, 'deleteBlog');
      });

      test('ModelMutations.update() should build a valid request', () {
        final id = UUID.getUUID();
        final name = 'Test Blog';
        final time = '2021-08-03T16:39:18.000000651Z';
        final createdAt = DataStore.TemporalDateTime.fromString(time);

        Blog blog = Blog(id: id, name: name, createdAt: createdAt);

        final expectedVars = {
          'input': {'id': id, 'name': name, 'createdAt': time},
          'condition': null
        };
        final expectedDoc =
            r'mutation updateBlog($input: UpdateBlogInput!, $condition:  ModelBlogConditionInput) { updateBlog(input: $input, condition: $condition) { id name createdAt } }';

        GraphQLRequest<Blog> req = ModelMutations.update<Blog>(blog);

        expect(req.document, expectedDoc);
        expect(DeepCollectionEquality().equals(req.variables, expectedVars),
            isTrue);
        expect(req.modelType, Blog.classType);
        expect(req.decodePath, 'updateBlog');
      });

      test(
          'ModelMutations.update() should build a valid request for a model with a parent',
          () {
        final blogId = UUID.getUUID();
        const name = 'Test Blog';
        const time = '2021-08-03T16:39:18.000000651Z';
        final createdAt = DataStore.TemporalDateTime.fromString(time);
        Blog blog = Blog(id: blogId, name: name, createdAt: createdAt);

        final postId = UUID.getUUID();
        const title = 'Lorem Ipsum';
        const rating = 1;
        Post post = Post(id: postId, title: title, rating: rating, blog: blog);

        final expectedVars = {
          'input': <String, dynamic>{
            'id': postId,
            'title': title,
            'rating': rating,
            'created': null,
            'blogID': blogId
          },
          'condition': null
        };
        const expectedDoc =
            r'mutation updatePost($input: UpdatePostInput!, $condition:  ModelPostConditionInput) { updatePost(input: $input, condition: $condition) { id title rating created blog { id name createdAt } } }';
        GraphQLRequest<Post> req = ModelMutations.update<Post>(post);

        expect(req.document, expectedDoc);
        expect(DeepCollectionEquality().equals(req.variables, expectedVars),
            isTrue);
        expect(req.modelType, Post.classType);
        expect(req.decodePath, 'updatePost');
      });

      test(
          'ModelMutations.update() should build a valid request with query predicate condition',
          () {
        final id = UUID.getUUID();
        const name = 'Test Blog';
        const time = '2021-08-03T16:39:18.000000651Z';
        final createdAt = DataStore.TemporalDateTime.fromString(time);
        Blog blog = Blog(id: id, name: name, createdAt: createdAt);
        final expectedVars = {
          'input': {'id': id, 'name': name, 'createdAt': time},
          'condition': {
            'createdAt': {'lt': time}
          }
        };
        const expectedDoc =
            r'mutation updateBlog($input: UpdateBlogInput!, $condition:  ModelBlogConditionInput) { updateBlog(input: $input, condition: $condition) { id name createdAt } }';

        GraphQLRequest<Blog> req =
            ModelMutations.update(blog, where: Blog.CREATEDAT.lt(createdAt));

        expect(req.document, expectedDoc);
        expect(DeepCollectionEquality().equals(req.variables, expectedVars),
            isTrue);
      });

      test(
          'ModelMutations.delete() should build a valid request with query predicate condition',
          () {
        final id = UUID.getUUID();
        const name = 'Test Blog';
        const time = '2021-08-03T16:39:18.000000651Z';
        final createdAt = DataStore.TemporalDateTime.fromString(time);
        Blog blog = Blog(id: id, name: name, createdAt: createdAt);
        final expectedVars = {
          'input': {'id': id},
          'condition': {
            'createdAt': {'lt': time}
          }
        };
        const expectedDoc =
            r'mutation deleteBlog($input: DeleteBlogInput!, $condition:  ModelBlogConditionInput) { deleteBlog(input: $input, condition: $condition) { id name createdAt } }';

        GraphQLRequest<Blog> req = ModelMutations.delete<Blog>(blog,
            where: Blog.CREATEDAT.lt(createdAt));

        expect(req.document, expectedDoc);
        expect(DeepCollectionEquality().equals(req.variables, expectedVars),
            isTrue);
        expect(req.modelType, Blog.classType);
        expect(req.decodePath, 'deleteBlog');
      });
    });

    group('transformAppSyncJsonToModelJson', () {
      test('should be no-op for flat JSON with no parents/children', () {
        final input = <String, dynamic>{'id': 'abc123', 'name': 'Lorem Ipsum'};
        final output = transformAppSyncJsonToModelJson(input, Blog.schema);
        expect(input, output);
      });

      test('should be no-op for flat JSON with null parent/children', () {
        final blogInput = <String, dynamic>{
          'id': 'abc123',
          'name': 'Lorem Ipsum',
          'posts': null
        };
        final blogOutput =
            transformAppSyncJsonToModelJson(blogInput, Blog.schema);
        expect(blogInput, blogOutput);

        final postInput = <String, dynamic>{
          'id': 'abc123',
          'title': 'Lorem Ipsum',
          'rating': 0,
          'comments': null,
          'blog': null
        };
        final postOutput =
            transformAppSyncJsonToModelJson(postInput, Post.schema);
        expect(postInput, postOutput);
      });

      test('should translate children to expected format', () {
        final input = <String, dynamic>{
          'id': 'abc123',
          'name': 'Lorem Ipsum',
          'posts': {
            'items': [
              {'id': 'xyz456', 'rating': 0, 'title': 'Lorem ipsum'}
            ]
          }
        };
        final expectedOutput = <String, dynamic>{
          'id': 'abc123',
          'name': 'Lorem Ipsum',
          'posts': [
            {
              'serializedData': {
                'id': 'xyz456',
                'rating': 0,
                'title': 'Lorem ipsum'
              }
            }
          ]
        };
        final output = transformAppSyncJsonToModelJson(input, Blog.schema);
        expect(output, expectedOutput);
      });

      test('should translate parents and children to expected format', () {
        final input = <String, dynamic>{
          'id': 'xyz456',
          'title': 'Lorem Ipsum',
          'rating': 0,
          'comments': {
            'items': [
              {'id': 'def456', 'content': 'Worst... post... ever!'}
            ]
          },
          'blog': {'id': 'abc123', 'title': 'blog about life'}
        };
        final expectedOutput = <String, dynamic>{
          'id': 'xyz456',
          'title': 'Lorem Ipsum',
          'rating': 0,
          'comments': [
            {
              'serializedData': {
                'id': 'def456',
                'content': 'Worst... post... ever!'
              }
            }
          ],
          'blog': {
            'serializedData': {'id': 'abc123', 'title': 'blog about life'}
          }
        };
        final output = transformAppSyncJsonToModelJson(input, Post.schema);
        expect(output, expectedOutput);
      });

      test('should result in no-op if wrong schema provided', () {
        final input = <String, dynamic>{
          'id': 'xyz456',
          'title': 'Lorem Ipsum',
          'rating': 0,
          'comments': {
            'items': [
              {'id': 'def456', 'content': 'Worst... post... ever!'}
            ]
          },
          'blog': {'id': 'abc123', 'title': 'blog about life'}
        };
        final output = transformAppSyncJsonToModelJson(input, Comment.schema);
        expect(output, input);
      });
    });
  });

  group('without ModelProvider', () {
    test('should handle no ModelProvider instance', () {
      AmplifyAPI api = AmplifyAPI();
      try {
        GraphQLRequest<Blog> req = ModelQueries.get<Blog>(Blog.classType, '');
      } on ApiException catch (e) {
        expect(e.message, 'No modelProvider found');
        expect(e.recoverySuggestion,
            'Pass in a modelProvider instance while instantiating APIPlugin');
        return;
      }
      fail('Expected an ApiException');
    });
  });
}
