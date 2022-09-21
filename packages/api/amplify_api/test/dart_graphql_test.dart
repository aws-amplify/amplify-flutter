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

import 'dart:async';
import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api/src/api_plugin_impl.dart';
import 'package:amplify_api/src/graphql/app_sync_api_key_auth_provider.dart';
import 'package:amplify_api/src/graphql/ws/web_socket_connection.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';
import 'package:aws_common/testing.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_data/fake_amplify_configuration.dart';
import 'util.dart';

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

final _modelQueryId = uuid();
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

const _authErrorMessage = 'Not authorized';
const _expectedAuthErrorResponseBody = {
  'data': null,
  'errors': [
    {
      'message': _authErrorMessage,
    },
  ]
};

final mockHttpClient = MockAWSHttpClient((request) async {
  if (request.headers[xApiKey] != 'abc123' &&
      request.headers[AWSHeaders.authorization] == testFunctionToken) {
    // Not authorized w API key but has lambda auth token, mock that auth mode
    // does not work for this query.
    return AWSHttpResponse(
      statusCode: 401,
      body: utf8.encode(json.encode(_expectedAuthErrorResponseBody)),
    );
  }
  if (request.headers[xApiKey] != 'abc123') {
    // Not expected in test.
    throw const AmplifyException('Unexpected auth error in test HTTP client');
  }
  final body = await utf8.decodeStream(request.body);
  if (body.contains('getBlog')) {
    return AWSHttpResponse(
      statusCode: 200,
      body: utf8.encode(json.encode(_expectedModelQueryResult)),
    );
  }
  if (body.contains('TestMutate')) {
    return AWSHttpResponse(
      statusCode: 400,
      body: utf8.encode(json.encode(_expectedMutateSuccessResponseBody)),
    );
  }
  if (body.contains('TestError')) {
    return AWSHttpResponse(
      statusCode: 400,
      body: utf8.encode(json.encode(_expectedErrorResponseBody)),
    );
  }

  return AWSHttpResponse(
    statusCode: 400,
    body: utf8.encode((json.encode(_expectedQuerySuccessResponseBody))),
  );
});

class MockAmplifyAPI extends AmplifyAPIDart {
  MockAmplifyAPI({
    List<APIAuthProvider> authProviders = const [],
    ModelProviderInterface? modelProvider,
    AWSHttpClient? baseHttpClient,
  }) : super(
          authProviders: authProviders,
          modelProvider: modelProvider,
          baseHttpClient: baseHttpClient,
        );

  @override
  WebSocketConnection getWebSocketConnection({String? apiName}) =>
      MockWebSocketConnection(testApiKeyConfig, getTestAuthProviderRepo());
}

void main() {
  setUpAll(() async {
    final api = MockAmplifyAPI(
      authProviders: [const CustomFunctionProvider()],
      baseHttpClient: mockHttpClient,
      modelProvider: ModelProvider.instance,
    );

    await Amplify.addPlugin(api);
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
      final req = GraphQLRequest<String>(
        document: graphQLDocument,
        variables: {},
      );

      final operation = Amplify.API.query(request: req);
      final res = await operation.value;

      final expected = json.encode(_expectedQuerySuccessResponseBody['data']);

      expect(res.data, equals(expected));
      expect(res.errors, equals(null));
    });

    test('Query returns proper response.data with dynamic type', () async {
      String graphQLDocument = ''' query TestQuery {
          listBlogs {
            items {
              id
              name
              createdAt
            }
          }
        } ''';
      final req = GraphQLRequest<dynamic>(
        document: graphQLDocument,
        variables: {},
      );

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
      final req = GraphQLRequest<String>(
        document: graphQLDocument,
        variables: graphQLVariables,
      );

      final operation = Amplify.API.mutate(request: req);
      final res = await operation.value;

      final expected = json.encode(_expectedMutateSuccessResponseBody['data']);

      expect(res.data, equals(expected));
      expect(res.errors, equals(null));
    });

    test('subscribe() should return a subscription stream', () async {
      Completer<void> establishedCompleter = Completer();
      Completer<String> dataCompleter = Completer();
      const graphQLDocument = '''subscription MySubscription {
        onCreateBlog {
          id
          name
          createdAt
        }
      }''';
      final subscriptionRequest =
          GraphQLRequest<String>(document: graphQLDocument);
      final subscription = Amplify.API.subscribe(
        subscriptionRequest,
        onEstablished: () => establishedCompleter.complete(),
      );

      final streamSub = subscription.listen(
        (event) => dataCompleter.complete(event.data),
      );
      await expectLater(establishedCompleter.future, completes);

      final subscriptionData = await dataCompleter.future;
      expect(subscriptionData, json.encode(mockSubscriptionData));
      streamSub.cancel();
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

    test('subscribe() should decode model data', () async {
      Completer<void> establishedCompleter = Completer();
      final subscriptionRequest = ModelSubscriptions.onCreate(Post.classType);
      final subscription = Amplify.API.subscribe(
        subscriptionRequest,
        onEstablished: () => establishedCompleter.complete(),
      );
      await establishedCompleter.future;

      late StreamSubscription<GraphQLResponse<Post>> streamSub;
      streamSub = subscription.listen(
        expectAsync1((event) {
          expect(event.data, isA<Post>());
          streamSub.cancel();
        }),
      );
    });
  });

  group('Error Handling', () {
    test('response errors are decoded', () async {
      String graphQLDocument = ''' TestError ''';
      final req = GraphQLRequest<String>(
        document: graphQLDocument,
        variables: {},
      );

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

    test('request with custom auth mode and auth error', () async {
      String graphQLDocument = ''' query TestQuery {
          listBlogs {
            items {
              id
              name
              createdAt
            }
          }
        } ''';
      final req = GraphQLRequest<String>(
        document: graphQLDocument,
        variables: {},
        authorizationMode: APIAuthorizationType.function,
      );

      final operation = Amplify.API.query(request: req);
      final res = await operation.value;

      const errorExpected = GraphQLResponseError(
        message: _authErrorMessage,
      );

      expect(res.data, equals(null));
      expect(res.errors?.single, equals(errorExpected));
    });

    test('canceled query request should never resolve', () async {
      final req = GraphQLRequest<String>(document: '', variables: {});
      final operation = Amplify.API.query(request: req);
      operation.cancel();
      operation.then((p0) => fail('Request should have been cancelled.'));
      await operation.valueOrCancellation();
      expect(operation.isCanceled, isTrue);
    });

    test('canceled mutation request should never resolve', () async {
      final req = GraphQLRequest<String>(document: '', variables: {});
      final operation = Amplify.API.mutate(request: req);
      operation.cancel();
      operation.then((p0) => fail('Request should have been cancelled.'));
      await operation.valueOrCancellation();
      expect(operation.isCanceled, isTrue);
    });
  });
}
