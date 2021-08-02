/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api_plugin_interface/amplify_api_plugin_interface.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'resources/Blog.dart';
import 'resources/ModelProvider.dart';

void main() {
  const MethodChannel apiChannel = MethodChannel('com.amazonaws.amplify/api');

  AmplifyAPI api = AmplifyAPI(modelProvider: ModelProvider.instance);

  TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(() {
    apiChannel.setMockMethodCallHandler(null);
  });

  test('Query advanced flow executes correctly in the happy case', () async {
    const queryResult = {
      'listBlogs': {
        'items': [
          {
            'id': 'ec0c71cb-8b88-4c57-86d7-6758bf4cba4a',
            'name': 'Test Blog 1',
            'createdAt': '2020-12-10T21:25:51.252Z'
          },
          {
            'id': '33546237-8e0d-450f-8bf5-4da0dbd2659c',
            'name': 'Test Blog 2',
            'createdAt': '2020-12-03T16:39:18.651Z'
          },
          {
            'createdAt': '2020-12-04T16:14:31.418Z',
            'name': 'Test Blog 3',
            'id': 'f6b8fbb8-0224-4232-b970-0cc9105d5faf'
          },
          {
            'createdAt': '2020-12-04T16:24:20.765Z',
            'name': 'Test Blog 4',
            'id': 'c6a33487-6237-4f53-ba9f-2cb487d2c6ad'
          },
        ]
      }
    };

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return {'data': queryResult.toString(), 'errors': []};
    });

    String graphQLDocument = '''query MyQuery {
      listBlogs {
        items {
          id
          name
          createdAt
        }
      }
    }''';

    var operation = await api.query<String>(
        request: GraphQLRequest(document: graphQLDocument, variables: {}));

    var response = await operation.response;
    expect(response.data, queryResult.toString());
  });

  test('ModelQueries.get Model Helper executes correctly in the happy case',
      () async {
    String expectedDoc =
        r"query getBlog($id: ID!) { getBlog(id: $id) { id name createdAt } }";
    final String id = UUID.getUUID();
    var queryResult = '''{
      "getBlog": {
        "createdAt": "2021-07-21T22:23:33.707Z",
        "id": "$id",
        "name": "Test App Blog"
      }
    }''';

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return {'data': queryResult.toString(), 'errors': []};
    });

    GraphQLRequest<Blog> req = ModelQueries.get<Blog>(Blog.classType, id);

    var operation = await api.query<Blog>(request: req);

    var response = await operation.response;

    expect(req.document, expectedDoc);
    expect(response.data, isA<Blog>());
    expect(response.data.id, id);
  });

  test('ModelQueries.list Model Helper executes correctly in the happy case',
      () async {
    String expectedDoc =
        r"query listBlogs { listBlogs(limit: 4) { items { id name createdAt } nextToken } }";
    const queryResult = '''{
      "listBlogs": {
        "items": [
          {
            "id": "ec0c71cb-8b88-4c57-86d7-6758bf4cba4a",
            "name": "Test Blog 1",
            "createdAt": "2020-12-10T21:25:51.252Z"
          },
          {
            "id": "33546237-8e0d-450f-8bf5-4da0dbd2659c",
            "name": "Test Blog 2",
            "createdAt": "2020-12-03T16:39:18.651Z"
          },
          {
            "createdAt": "2020-12-04T16:14:31.418Z",
            "name": "Test Blog 3",
            "id": "f6b8fbb8-0224-4232-b970-0cc9105d5faf"
          },
          {
            "createdAt": "2020-12-04T16:24:20.765Z",
            "name": "Test Blog 4",
            "id": "c6a33487-6237-4f53-ba9f-2cb487d2c6ad"
          }
        ],
        "nextToken": "super-secret-next-token"
      }
    }''';

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      return {'data': queryResult, 'errors': []};
    });

    GraphQLRequest<PaginatedResult<Blog>> req = ModelQueries.list<Blog>(
        Blog.classType,
        modelPagination: ModelPagination(limit: 4));

    var operation = await api.query<PaginatedResult<Blog>>(request: req);

    var response = await operation.response;

    expect(req.document, expectedDoc);
    expect(response.data, isA<PaginatedResult<Blog>>());
    expect(response.data.items.length, 4);
  });

  test(
      'A PlatformException for a failed API call results in the corresponding ApiException',
      () async {
    final exception = PlatformException(code: 'ApiException', details: {
      'message': 'AMPLIFY_API_QUERY_FAILED',
      'recoverySuggestion': 'some insightful suggestion',
      'underlyingException': 'Act of God'
    });

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'query') {
        throw exception;
      }
    });
    String graphQLDocument = '';

    try {
      var operation = api.query<String>(
          request: GraphQLRequest(document: graphQLDocument, variables: {}));
      await operation.response;
    } on ApiException catch (e) {
      expect(e.message, 'AMPLIFY_API_QUERY_FAILED');
      expect(e.recoverySuggestion, 'some insightful suggestion');
      expect(e.underlyingException, 'Act of God');
      return;
    }
    throw new Exception('Expected an ApiException');
  });

  test(
      'A PlatformException for a malformed request results in the corresponding ApiException',
      () async {
    final exception = PlatformException(code: 'ApiException', details: {
      'message': 'AMPLIFY_API_QUERY_FAILED',
      'recoverySuggestion': 'some insightful suggestion',
      'underlyingException': 'Act of God'
    });

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'query') {
        throw exception;
      }
    });
    String graphQLDocument = '';

    try {
      var operation = api.query<String>(
          request: GraphQLRequest(document: graphQLDocument, variables: {}));
      await operation.response;
    } on ApiException catch (e) {
      expect(e.message, 'AMPLIFY_API_QUERY_FAILED');
      expect(e.recoverySuggestion, 'some insightful suggestion');
      expect(e.underlyingException, 'Act of God');
      return;
    }
    throw new Exception('Expected an ApiException');
  });

  test(
      'An unrecognized PlatformException results in the corresponding ApiException',
      () async {
    final exception = PlatformException(code: 'ApiException', details: {
      'message': 'AMPLIFY_API_QUERY_FAILED',
      'recoverySuggestion': 'some insightful suggestion',
      'underlyingException': 'Act of God'
    });

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'query') {
        throw exception;
      }
    });
    String graphQLDocument = '';
    try {
      var operation = api.query<String>(
          request: GraphQLRequest(document: graphQLDocument, variables: {}));
      await operation.response;
    } on ApiException catch (e) {
      expect(e.message, 'AMPLIFY_API_QUERY_FAILED');
      expect(e.recoverySuggestion, 'some insightful suggestion');
      expect(e.underlyingException, 'Act of God');
      return;
    }
    throw new Exception('Expected an ApiException');
  });
}
