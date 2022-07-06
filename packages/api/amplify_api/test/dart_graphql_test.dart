import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api/src/api_plugin_impl.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

import 'test_data/fake_amplify_configuration.dart';

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
const _errorMessage = 'Not Authorized';
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
  @override
  http.Client getGraphQLClient({String? apiName}) =>
      MockClient((request) async {
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
  group('GraphQL Dart API', () {
    late AmplifyAPI dartApi;

    setUpAll(() async {
      await Amplify.addPlugin(MockAmplifyAPI());
      await Amplify.configure(amplifyconfig);
    });

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
    });

    test('Errors are decoded in response.errors', () async {
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

      // expect(res.data, equals(null));
      expect(res.errors?.single, equals(errorExpected));
    });
  });
}
