// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_api/src/api_plugin_impl.dart';
import 'package:amplify_api/src/graphql/helpers/graphql_response_decoder.dart';
import 'package:amplify_api/src/graphql/utils.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';

final _deepEquals = const DeepCollectionEquality().equals;
const _exampleApiName = 'myApi456';
const _exampleHeaders = {'testKey': 'testVal'};

// Local variable types used as a type check.
// ignore_for_file: omit_local_variable_types

class MockAmplifyAPI extends AmplifyAPIDart {
  MockAmplifyAPI({
    super.modelProvider,
  });

  @override
  void registerAuthProvider(APIAuthProvider authProvider) {}

  @override
  // ignore: must_call_super
  Future<void> addPlugin({
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {}
}

GraphQLResponse<T> _decodeResponseData<T>(
  GraphQLRequest<T> request,
  String data,
) {
  final serverResponse = {'data': json.decode(data)};
  return GraphQLResponseDecoder.instance.decode<T>(
    request: request,
    response: serverResponse,
  );
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('with ModelProvider', () {
    setUpAll(() async {
      await Amplify.reset();
      await Amplify.addPlugin(
        // needed to fetch the schema from within the helper
        MockAmplifyAPI(modelProvider: ModelProvider.instance),
      );
    });
    const blogSelectionSet =
        'id name createdAt file { bucket region key meta { name } } files { bucket region key meta { name } } updatedAt';

    group('ModelQueries', () {
      test('ModelQueries.get() should build a valid request', () {
        final id = uuid();
        const expected =
            'query getBlog(\$id: ID!) { getBlog(id: \$id) { $blogSelectionSet } }';

        final GraphQLRequest<Blog> req =
            ModelQueries.get<Blog>(Blog.classType, id);

        expect(req.document, expected);
        expect(_deepEquals(req.variables, {'id': id}), isTrue);
        expect(req.modelType, Blog.classType);
        expect(req.decodePath, 'getBlog');
      });

      test('ModelQueries.get() should support additional request parameters',
          () {
        final id = uuid();
        final req = ModelQueries.get(
          Blog.classType,
          id,
          apiName: _exampleApiName,
          headers: _exampleHeaders,
          authorizationMode: APIAuthorizationType.function,
        );

        expect(req.apiName, _exampleApiName);
        expect(req.headers, _exampleHeaders);
        expect(req.authorizationMode, APIAuthorizationType.function);
      });

      test(
          'ModelQueries.get() returns a GraphQLRequest<Blog> when provided a modelType',
          () async {
        final id = uuid();
        final GraphQLRequest<Blog> req =
            ModelQueries.get<Blog>(Blog.classType, id);
        final String data = '''{
        "getBlog": {
            "createdAt": "2021-01-01T01:00:00.000000000Z",
            "id": "$id",
            "name": "TestAppBlog"
        }
    }''';

        final GraphQLResponse<Blog> response = _decodeResponseData(req, data);

        expect(response.data, isA<Blog>());
        expect(response.data?.id, id);
      });

      test('ModelQueries.list() should build a valid request', () async {
        const expected =
            'query listBlogs(\$filter: ModelBlogFilterInput, \$limit: Int, \$nextToken: String) { listBlogs(filter: \$filter, limit: \$limit, nextToken: \$nextToken) { items { $blogSelectionSet } nextToken } }';

        final GraphQLRequest<PaginatedResult<Blog>> req =
            ModelQueries.list<Blog>(Blog.classType);

        expect(req.document, expected);
        expect(req.modelType, isA<PaginatedModelType<Blog>>());
        expect(req.decodePath, 'listBlogs');
      });

      test('ModelQueries.list() should build a valid request with pagination',
          () async {
        const expected =
            'query listBlogs(\$filter: ModelBlogFilterInput, \$limit: Int, \$nextToken: String) { listBlogs(filter: \$filter, limit: \$limit, nextToken: \$nextToken) { items { $blogSelectionSet } nextToken } }';

        final GraphQLRequest<PaginatedResult<Blog>> req =
            ModelQueries.list<Blog>(Blog.classType, limit: 1);

        expect(req.document, expected);
        expect(req.modelType, isA<PaginatedModelType<Blog>>());
        expect(req.variables['limit'], 1);
        expect(req.decodePath, 'listBlogs');
      });

      test(
          'ModelQueries.get() returns a GraphQLRequest<String> when not provided a modelType',
          () async {
        final id = uuid();
        const doc = '''query MyQuery {
      getBlog {
        id
        name
        createdAt
      }
    }''';
        final GraphQLRequest<String> req =
            GraphQLRequest(document: doc, variables: <String, String>{id: id});
        final String data = '''{
        "getBlog": {
            "createdAt": "2021-01-01T01:00:00.000000000Z",
            "id": "$id",
            "name": "TestAppBlog"
        }
    }''';

        final GraphQLResponse<String> response = _decodeResponseData(req, data);

        expect(response.data, isA<String>());
      });

      test(
          'ModelQueries.list() returns a GraphQLRequest<PaginatedResult<Blog>> when provided a modelType',
          () async {
        final GraphQLRequest<PaginatedResult<Blog>> req =
            ModelQueries.list<Blog>(Blog.classType, limit: 2);

        const data = '''{
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

        final GraphQLResponse<PaginatedResult<Blog>> response =
            _decodeResponseData(req, data);

        expect(response.data, isA<PaginatedResult<Blog>>());
        expect(response.data?.items, isA<List<Blog?>>());
        expect(response.data?.items.length, 2);
      });

      test(
          'ModelQueries.list() should decode gracefully when there is a null in the items list',
          () async {
        final GraphQLRequest<PaginatedResult<Blog>> req =
            ModelQueries.list<Blog>(Blog.classType, limit: 2);

        const data = '''{
          "listBlogs": {
              "items": [
                {
                  "id": "test-id-1",
                  "name": "Test Blog 1",
                  "createdAt": "2021-07-29T23:09:58.441Z"
                },
                null
              ],
              "nextToken": "super-secret-next-token"
            }
        }''';

        final GraphQLResponse<PaginatedResult<Blog>> response =
            _decodeResponseData(req, data);

        expect(response.data, isA<PaginatedResult<Blog>>());
        expect(response.data?.items, isA<List<Blog?>>());
        expect(response.data?.items.length, 2);
        expect(response.data?.items[1], isNull);
      });

      test(
          'GraphQLResponse<PaginatedResult<Blog>> can get the request for next page of data',
          () async {
        const limit = 2;
        final GraphQLRequest<PaginatedResult<Blog>> req =
            ModelQueries.list<Blog>(Blog.classType, limit: limit);

        const data = '''{
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

        final GraphQLResponse<PaginatedResult<Blog>> response =
            _decodeResponseData(req, data);
        expect(response.data?.hasNextResult, true);
        const expectedDocument =
            'query listBlogs(\$filter: ModelBlogFilterInput, \$limit: Int, \$nextToken: String) { listBlogs(filter: \$filter, limit: \$limit, nextToken: \$nextToken) { items { $blogSelectionSet } nextToken } }';
        final resultRequest = response.data?.requestForNextResult;
        expect(resultRequest?.document, expectedDocument);
        expect(resultRequest?.variables['nextToken'], response.data?.nextToken);
        expect(resultRequest?.variables['limit'], limit);
      });

      test(
          'GraphQLResponse<PaginatedResult<Blog>> will not have data for next page when result has no nextToken',
          () async {
        const limit = 2;
        final GraphQLRequest<PaginatedResult<Blog>> req =
            ModelQueries.list<Blog>(Blog.classType, limit: limit);

        const data = '''{
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

        final GraphQLResponse<PaginatedResult<Blog>> response =
            _decodeResponseData(req, data);
        expect(response.data?.hasNextResult, false);
      });

      test(
          'ModelQueries.list() should correctly populate a request with a simple QueryPredicate',
          () async {
        const expectedTitle = 'Test Blog 1';
        const expectedDocument =
            'query listBlogs(\$filter: ModelBlogFilterInput, \$limit: Int, \$nextToken: String) { listBlogs(filter: \$filter, limit: \$limit, nextToken: \$nextToken) { items { $blogSelectionSet } nextToken } }';
        const expectedFilter = {
          'name': {'eq': expectedTitle}
        };

        final queryPredicate = Blog.NAME.eq(expectedTitle);
        final GraphQLRequest<PaginatedResult<Blog>> req =
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
        final GraphQLRequest<PaginatedResult<Blog>> req =
            ModelQueries.list<Blog>(
          Blog.classType,
          limit: limit,
          where: queryPredicate,
        );
        const data = '''{
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
        final GraphQLResponse<PaginatedResult<Blog>> response =
            _decodeResponseData(req, data);
        final Map<String, dynamic> firstRequestFilter =
            req.variables['filter'] as Map<String, dynamic>;
        final resultRequest = response.data?.requestForNextResult;

        expect(resultRequest?.variables['filter'], firstRequestFilter);
        expect(resultRequest?.variables['filter'], expectedFilter);
      });

      test('ModelQueries.list() should support additional request parameters',
          () {
        final req = ModelQueries.list(
          Blog.classType,
          apiName: _exampleApiName,
          headers: _exampleHeaders,
          authorizationMode: APIAuthorizationType.function,
        );

        expect(req.apiName, _exampleApiName);
        expect(req.headers, _exampleHeaders);
        expect(req.authorizationMode, APIAuthorizationType.function);
      });
    });

    group('ModelMutations', () {
      test('ModelMutations.create() should build a valid request', () {
        final id = uuid();
        const name = 'Test Blog';
        const time = '2021-08-03T16:39:18.000000651Z';
        final createdAt = TemporalDateTime.fromString(time);

        final Blog blog = Blog(id: id, name: name, createdAt: createdAt);
        final expectedVars = {
          'input': {
            'id': id,
            'name': name,
            'createdAt': time,
            'file': null,
            'files': null
          }
        };
        const expectedDoc =
            'mutation createBlog(\$input: CreateBlogInput!, \$condition:  ModelBlogConditionInput) { createBlog(input: \$input, condition: \$condition) { $blogSelectionSet } }';

        final GraphQLRequest<Blog> req = ModelMutations.create<Blog>(blog);

        expect(req.document, expectedDoc);
        expect(_deepEquals(req.variables, expectedVars), isTrue);
        expect(req.modelType, Blog.classType);
        expect(req.decodePath, 'createBlog');
      });

      test(
          'ModelMutations.create() should build a valid request for a model with a parent',
          () {
        final blogId = uuid();
        const name = 'Test Blog';
        const time = '2021-08-03T16:39:18.000000651Z';
        final createdAt = TemporalDateTime.fromString(time);
        final Blog blog = Blog(id: blogId, name: name, createdAt: createdAt);

        final postId = uuid();
        const title = 'Lorem Ipsum';
        const rating = 1;
        final Post post =
            Post(id: postId, title: title, rating: rating, blog: blog);

        final expectedVars = {
          'input': <String, dynamic>{
            'id': postId,
            'title': title,
            'rating': rating,
            'created': null,
            'likeCount': null,
            'blogID': blogId
          }
        };
        const expectedDoc =
            'mutation createPost(\$input: CreatePostInput!, \$condition:  ModelPostConditionInput) { createPost(input: \$input, condition: \$condition) { id title rating created likeCount createdAt updatedAt blog { $blogSelectionSet } } }';
        final GraphQLRequest<Post> req = ModelMutations.create<Post>(post);

        expect(req.document, expectedDoc);
        expect(_deepEquals(req.variables, expectedVars), isTrue);
        expect(req.modelType, Post.classType);
        expect(req.decodePath, 'createPost');
      });

      test(
          'ModelMutations.create() should not include parent ID in variables if not in model',
          () {
        final postId = uuid();
        const title = 'Lorem Ipsum';
        const rating = 1;
        final Post post = Post(id: postId, title: title, rating: rating);
        final GraphQLRequest<Post> req = ModelMutations.create<Post>(post);
        expect(
          (req.variables['input'] as Map<String, dynamic>)
              .containsKey('blogID'),
          isFalse,
        );
      });

      test('ModelQueries.create() should support additional request parameters',
          () {
        const name = 'Test Blog';

        final blog = Blog(name: name);
        final req = ModelMutations.create(
          blog,
          apiName: _exampleApiName,
          headers: _exampleHeaders,
          authorizationMode: APIAuthorizationType.function,
        );

        expect(req.apiName, _exampleApiName);
        expect(req.headers, _exampleHeaders);
        expect(req.authorizationMode, APIAuthorizationType.function);
      });

      test('ModelMutations.delete() should build a valid request', () {
        final id = uuid();
        const name = 'Test Blog';
        const time = '2021-08-03T16:39:18.000000651Z';
        final createdAt = TemporalDateTime.fromString(time);

        final Blog blog = Blog(id: id, name: name, createdAt: createdAt);

        final expectedVars = {
          'input': {'id': id},
          'condition': null
        };
        const expectedDoc =
            'mutation deleteBlog(\$input: DeleteBlogInput!, \$condition:  ModelBlogConditionInput) { deleteBlog(input: \$input, condition: \$condition) { $blogSelectionSet } }';

        final GraphQLRequest<Blog> req = ModelMutations.delete<Blog>(blog);

        expect(req.document, expectedDoc);
        expect(_deepEquals(req.variables, expectedVars), isTrue);
        expect(req.modelType, Blog.classType);
        expect(req.decodePath, 'deleteBlog');
      });

      test('ModelQueries.delete() should support additional request parameters',
          () {
        const name = 'Test Blog';

        final blog = Blog(name: name);
        final req = ModelMutations.delete(
          blog,
          apiName: _exampleApiName,
          headers: _exampleHeaders,
          authorizationMode: APIAuthorizationType.function,
        );

        expect(req.apiName, _exampleApiName);
        expect(req.headers, _exampleHeaders);
        expect(req.authorizationMode, APIAuthorizationType.function);
      });

      test('ModelMutations.deleteById() should build a valid request', () {
        final id = uuid();

        final expectedVars = {
          'input': {'id': id},
          'condition': null
        };
        const expectedDoc =
            'mutation deleteBlog(\$input: DeleteBlogInput!, \$condition:  ModelBlogConditionInput) { deleteBlog(input: \$input, condition: \$condition) { $blogSelectionSet } }';

        final GraphQLRequest<Blog> req =
            ModelMutations.deleteById<Blog>(Blog.classType, id);

        expect(req.document, expectedDoc);
        expect(_deepEquals(req.variables, expectedVars), isTrue);
        expect(req.modelType, Blog.classType);
        expect(req.decodePath, 'deleteBlog');
      });

      test(
          'ModelQueries.deleteById() should support additional request parameters',
          () {
        final id = uuid();
        final req = ModelMutations.deleteById(
          Blog.classType,
          id,
          apiName: _exampleApiName,
          headers: _exampleHeaders,
          authorizationMode: APIAuthorizationType.function,
        );

        expect(req.apiName, _exampleApiName);
        expect(req.headers, _exampleHeaders);
        expect(req.authorizationMode, APIAuthorizationType.function);
      });

      test('ModelMutations.update() should build a valid request', () {
        final id = uuid();
        const name = 'Test Blog';
        const time = '2021-08-03T16:39:18.000000651Z';
        final createdAt = TemporalDateTime.fromString(time);

        final Blog blog = Blog(id: id, name: name, createdAt: createdAt);

        final expectedVars = {
          'input': {
            'id': id,
            'name': name,
            'createdAt': time,
            'file': null,
            'files': null
          },
          'condition': null
        };
        const expectedDoc =
            'mutation updateBlog(\$input: UpdateBlogInput!, \$condition:  ModelBlogConditionInput) { updateBlog(input: \$input, condition: \$condition) { $blogSelectionSet } }';

        final GraphQLRequest<Blog> req = ModelMutations.update<Blog>(blog);

        expect(req.document, expectedDoc);
        expect(_deepEquals(req.variables, expectedVars), isTrue);
        expect(req.modelType, Blog.classType);
        expect(req.decodePath, 'updateBlog');
      });

      test(
          'ModelMutations.update() should build a valid request for a model with a parent',
          () {
        final blogId = uuid();
        const name = 'Test Blog';
        const time = '2021-08-03T16:39:18.000000651Z';
        final createdAt = TemporalDateTime.fromString(time);
        final Blog blog = Blog(id: blogId, name: name, createdAt: createdAt);

        final postId = uuid();
        const title = 'Lorem Ipsum';
        const rating = 1;
        final Post post =
            Post(id: postId, title: title, rating: rating, blog: blog);

        final expectedVars = {
          'input': <String, dynamic>{
            'id': postId,
            'title': title,
            'rating': rating,
            'created': null,
            'likeCount': null,
            'blogID': blogId
          },
          'condition': null
        };
        const expectedDoc =
            'mutation updatePost(\$input: UpdatePostInput!, \$condition:  ModelPostConditionInput) { updatePost(input: \$input, condition: \$condition) { id title rating created likeCount createdAt updatedAt blog { $blogSelectionSet } } }';
        final GraphQLRequest<Post> req = ModelMutations.update<Post>(post);

        expect(req.document, expectedDoc);
        expect(_deepEquals(req.variables, expectedVars), isTrue);
        expect(req.modelType, Post.classType);
        expect(req.decodePath, 'updatePost');
      });

      test(
          'ModelMutations.update() should build a valid request with query predicate condition',
          () {
        final id = uuid();
        const name = 'Test Blog';
        const time = '2021-08-03T16:39:18.000000651Z';
        final createdAt = TemporalDateTime.fromString(time);
        final Blog blog = Blog(id: id, name: name, createdAt: createdAt);
        final expectedVars = {
          'input': {
            'id': id,
            'name': name,
            'createdAt': time,
            'file': null,
            'files': null
          },
          'condition': {
            'createdAt': {'lt': time}
          }
        };
        const expectedDoc =
            'mutation updateBlog(\$input: UpdateBlogInput!, \$condition:  ModelBlogConditionInput) { updateBlog(input: \$input, condition: \$condition) { $blogSelectionSet } }';

        final GraphQLRequest<Blog> req =
            ModelMutations.update(blog, where: Blog.CREATEDAT.lt(createdAt));

        expect(req.document, expectedDoc);
        expect(_deepEquals(req.variables, expectedVars), isTrue);
      });

      test('ModelQueries.update() should support additional request parameters',
          () {
        const name = 'Test Blog';
        final blog = Blog(name: name);
        final req = ModelMutations.update(
          blog,
          apiName: _exampleApiName,
          headers: _exampleHeaders,
          authorizationMode: APIAuthorizationType.function,
        );

        expect(req.apiName, _exampleApiName);
        expect(req.headers, _exampleHeaders);
        expect(req.authorizationMode, APIAuthorizationType.function);
      });

      test(
          'ModelMutations.delete() should build a valid request with query predicate condition',
          () {
        final id = uuid();
        const name = 'Test Blog';
        const time = '2021-08-03T16:39:18.000000651Z';
        final createdAt = TemporalDateTime.fromString(time);
        final Blog blog = Blog(id: id, name: name, createdAt: createdAt);
        final expectedVars = {
          'input': {'id': id},
          'condition': {
            'createdAt': {'lt': time}
          }
        };
        const expectedDoc =
            'mutation deleteBlog(\$input: DeleteBlogInput!, \$condition:  ModelBlogConditionInput) { deleteBlog(input: \$input, condition: \$condition) { $blogSelectionSet } }';

        final GraphQLRequest<Blog> req = ModelMutations.delete<Blog>(
          blog,
          where: Blog.CREATEDAT.lt(createdAt),
        );

        expect(req.document, expectedDoc);
        expect(_deepEquals(req.variables, expectedVars), isTrue);
        expect(req.modelType, Blog.classType);
        expect(req.decodePath, 'deleteBlog');
      });
    });

    group('ModelSubScriptions', () {
      test('ModelSubscriptions.onCreate() should build a valid request', () {
        const expected =
            'subscription onCreateBlog { onCreateBlog { $blogSelectionSet } }';
        final GraphQLRequest<Blog> req =
            ModelSubscriptions.onCreate<Blog>(Blog.classType);

        expect(req.document, expected);
        expect(req.modelType, Blog.classType);
        expect(req.decodePath, 'onCreateBlog');
      });

      test(
          'ModelSubscriptions.onCreate() should support additional request parameters',
          () {
        final req = ModelSubscriptions.onCreate(
          Blog.classType,
          apiName: _exampleApiName,
          headers: _exampleHeaders,
          authorizationMode: APIAuthorizationType.function,
        );

        expect(req.apiName, _exampleApiName);
        expect(req.headers, _exampleHeaders);
        expect(req.authorizationMode, APIAuthorizationType.function);
      });

      test('ModelSubscriptions.onUpdate() should build a valid request', () {
        const expected =
            'subscription onUpdateBlog { onUpdateBlog { $blogSelectionSet } }';
        final GraphQLRequest<Blog> req =
            ModelSubscriptions.onUpdate<Blog>(Blog.classType);

        expect(req.document, expected);
        expect(req.modelType, Blog.classType);
        expect(req.decodePath, 'onUpdateBlog');
      });

      test(
          'ModelSubscriptions.onUpdate() should support additional request parameters',
          () {
        final req = ModelSubscriptions.onUpdate(
          Blog.classType,
          apiName: _exampleApiName,
          headers: _exampleHeaders,
          authorizationMode: APIAuthorizationType.function,
        );

        expect(req.apiName, _exampleApiName);
        expect(req.headers, _exampleHeaders);
        expect(req.authorizationMode, APIAuthorizationType.function);
      });

      test('ModelSubscriptions.onDelete() should build a valid request', () {
        const expected =
            'subscription onDeleteBlog { onDeleteBlog { $blogSelectionSet } }';
        final GraphQLRequest<Blog> req =
            ModelSubscriptions.onDelete<Blog>(Blog.classType);

        expect(req.document, expected);
        expect(req.modelType, Blog.classType);
        expect(req.decodePath, 'onDeleteBlog');
      });

      test(
          'ModelSubscriptions.onDelete() should support additional request parameters',
          () {
        final req = ModelSubscriptions.onDelete(
          Blog.classType,
          apiName: _exampleApiName,
          headers: _exampleHeaders,
          authorizationMode: APIAuthorizationType.function,
        );

        expect(req.apiName, _exampleApiName);
        expect(req.headers, _exampleHeaders);
        expect(req.authorizationMode, APIAuthorizationType.function);
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

      test('should translate list to expected format', () {
        final input = <String, dynamic>{
          'items': [
            {
              'id': 'xyz456',
              'title': 'Lorem Ipsum',
              'rating': 0,
              'blog': {'id': 'abc123', 'title': 'blog about life'}
            },
            {
              'id': 'lmn456',
              'title': 'Lorem Ipsum better',
              'rating': 0,
              'blog': {'id': 'abc123', 'title': 'blog about life'}
            }
          ]
        };
        final expectedOutput = <String, dynamic>{
          'items': [
            {
              'id': 'xyz456',
              'title': 'Lorem Ipsum',
              'rating': 0,
              'blog': {
                'serializedData': {'id': 'abc123', 'title': 'blog about life'}
              }
            },
            {
              'id': 'lmn456',
              'title': 'Lorem Ipsum better',
              'rating': 0,
              'blog': {
                'serializedData': {'id': 'abc123', 'title': 'blog about life'}
              }
            }
          ]
        };
        final output = transformAppSyncJsonToModelJson(
          input,
          Post.schema,
          isPaginated: true,
        );
        expect(output, expectedOutput);
      });

      test('should translate list with a null entry to expected format', () {
        final input = <String, dynamic>{
          'items': [
            {
              'id': 'xyz456',
              'title': 'Lorem Ipsum',
              'rating': 0,
              'blog': {'id': 'abc123', 'title': 'blog about life'}
            },
            null
          ]
        };
        final expectedOutput = <String, dynamic>{
          'items': [
            {
              'id': 'xyz456',
              'title': 'Lorem Ipsum',
              'rating': 0,
              'blog': {
                'serializedData': {'id': 'abc123', 'title': 'blog about life'}
              }
            },
            null
          ]
        };
        final output = transformAppSyncJsonToModelJson(
          input,
          Post.schema,
          isPaginated: true,
        );
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

      test('should translate custom type model', () {
        final input = <String, dynamic>{
          'id': 'xyz456',
          'name': 'Lorem Ipsum',
          'file': {'bucket': 'abc123'}
        };
        final expectedOutput = <String, dynamic>{
          'id': 'xyz456',
          'name': 'Lorem Ipsum',
          'file': {
            'serializedData': {'bucket': 'abc123'}
          }
        };
        final output = transformAppSyncJsonToModelJson(input, Blog.schema);
        expect(output, expectedOutput);
      });
    });
  });

  group('without ModelProvider', () {
    setUp(() async {
      await Amplify.reset();
    });

    test('should handle no ModelProvider instance', () async {
      await Amplify.addPlugin(MockAmplifyAPI());

      try {
        ModelQueries.get<Blog>(Blog.classType, '');
      } on ApiException catch (e) {
        expect(e.message, 'No modelProvider found');
        expect(
          e.recoverySuggestion,
          'Pass in a modelProvider instance while instantiating APIPlugin',
        );
        return;
      }
      fail('Expected an ApiException');
    });
  });
}
