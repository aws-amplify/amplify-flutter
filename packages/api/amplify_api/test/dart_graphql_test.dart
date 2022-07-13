// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api/src/api_plugin_impl.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_test/test_models/Blog.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

import 'test_data/fake_amplify_configuration.dart';

final _deepEquals = const DeepCollectionEquality().equals;

// Success Mocks
const _expectedQuerySuccessResponseBody = {
  'data': {
    'listBlogs': {
      'items': [
        {
          'id': 'TEST_ID',
          'name': 'Test App Blog',
          'createdAt': '2022-06-28T17:36:52.460Z'
        }
      ]
    }
  }
};

final _modelQueryId = UUID.getUUID();
final _expectedModelQueryResult = {
  'data': {
    'getBlog': {
      'createdAt': '2021-07-21T22:23:33.707Z',
      'id': _modelQueryId,
      'name': 'Test App Blog'
    }
  }
};
const _expectedMutateSuccessResponseBody = {
  'data': {
    'createBlog': {
      'id': 'TEST_ID',
      'name': 'Test App Blog',
      'createdAt': '2022-07-06T18:42:26.126Z'
    }
  }
};

// Error Mocks
const _errorMessage = 'Unable to parse GraphQL query.';
const _errorLocations = [
  {'line': 2, 'column': 3},
  {'line': 4, 'column': 5}
];
const _errorPath = ['a', 1, 'b'];
const _errorExtensions = {
  'a': 'blah',
  'b': {'c': 'd'}
};
const _expectedErrorResponseBody = {
  'data': null,
  'errors': [
    {
      'message': _errorMessage,
      'locations': _errorLocations,
      'path': _errorPath,
      'extensions': _errorExtensions,
    },
  ]
};

class MockAmplifyAPI extends AmplifyAPIDart {
  MockAmplifyAPI({
    ModelProviderInterface? modelProvider,
  }) : super(modelProvider: modelProvider);

  @override
  http.Client getGraphQLClient({String? apiName}) =>
      MockClient((request) async {
        if (request.body.contains('getBlog')) {
          return http.Response(json.encode(_expectedModelQueryResult), 200);
        }
        if (request.body.contains('TestMutate')) {
          return http.Response(
              json.encode(_expectedMutateSuccessResponseBody), 400);
        }
        if (request.body.contains('TestError')) {
          return http.Response(json.encode(_expectedErrorResponseBody), 400);
        }

        return http.Response(
            json.encode(_expectedQuerySuccessResponseBody), 200);
      });
}

void main() {
  setUpAll(() async {
    await Amplify.addPlugin(MockAmplifyAPI(
      modelProvider: ModelProvider.instance,
    ));
    await Amplify.configure(amplifyconfig);
  });
  group('Vanilla GraphQL', () {
    test('Query returns proper response.data', () async {
      String graphQLDocument = ''' query TestQuery {
          listBlogs {
            items {
              id
              name
              createdAt
            }
          }
        } ''';
      final req = GraphQLRequest(document: graphQLDocument, variables: {});

      final operation = Amplify.API.query(request: req);
      final res = await operation.value;

      final expected = json.encode(_expectedQuerySuccessResponseBody['data']);

      expect(res.data, equals(expected));
      expect(res.errors, equals(null));
    });

    test('Mutate returns proper response.data', () async {
      String graphQLDocument = ''' mutation TestMutate(\$name: String!) {
          createBlog(input: {name: \$name}) {
            id
            name
            createdAt
          }
        } ''';
      final graphQLVariables = {'name': 'Test Blog 1'};
      final req = GraphQLRequest(
          document: graphQLDocument, variables: graphQLVariables);

      final operation = Amplify.API.mutate(request: req);
      final res = await operation.value;

      final expected = json.encode(_expectedMutateSuccessResponseBody['data']);

      expect(res.data, equals(expected));
      expect(res.errors, equals(null));
    });
  });
  group('Model Helpers', () {
    const blogSelectionSet =
        'id name createdAt file { bucket region key meta { name } } files { bucket region key meta { name } } updatedAt';

    test('Query returns proper response.data for Models', () async {
      const expectedDoc =
          'query getBlog(\$id: ID!) { getBlog(id: \$id) { $blogSelectionSet } }';
      const decodePath = 'getBlog';

      GraphQLRequest<Blog> req =
          ModelQueries.get<Blog>(Blog.classType, _modelQueryId);

      final operation = Amplify.API.query(request: req);
      final res = await operation.value;

      // request asserts
      expect(req.document, expectedDoc);
      expect(_deepEquals(req.variables, {'id': _modelQueryId}), isTrue);
      expect(req.modelType, Blog.classType);
      expect(req.decodePath, decodePath);
      // response asserts
      expect(res.data, isA<Blog>());
      expect(res.data?.id, _modelQueryId);
      expect(res.errors, equals(null));
    });
  });

  group('Error Handling', () {
    test('response errors are decoded', () async {
      String graphQLDocument = ''' TestError ''';
      final req = GraphQLRequest(document: graphQLDocument, variables: {});

      final operation = Amplify.API.query(request: req);
      final res = await operation.value;

      const errorExpected = GraphQLResponseError(
        message: _errorMessage,
        locations: [
          GraphQLResponseErrorLocation(2, 3),
          GraphQLResponseErrorLocation(4, 5),
        ],
        path: <dynamic>[..._errorPath],
        extensions: <String, dynamic>{..._errorExtensions},
      );

      expect(res.data, equals(null));
      expect(res.errors?.single, equals(errorExpected));
    });

    test('canceled query request should never resolve', () async {
      final req = GraphQLRequest(document: '', variables: {});
      final operation = Amplify.API.query(request: req);
      operation.cancel();
      operation.then((p0) => fail('Request should have been cancelled.'));
      await operation.valueOrCancellation();
      expect(operation.isCanceled, isTrue);
    });

    test('canceled mutation request should never resolve', () async {
      final req = GraphQLRequest(document: '', variables: {});
      final operation = Amplify.API.mutate(request: req);
      operation.cancel();
      operation.then((p0) => fail('Request should have been cancelled.'));
      await operation.valueOrCancellation();
      expect(operation.isCanceled, isTrue);
    });
  });
}
