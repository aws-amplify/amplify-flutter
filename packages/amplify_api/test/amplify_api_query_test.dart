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

void main() {
  const MethodChannel apiChannel = MethodChannel('com.amazonaws.amplify/api');

  AmplifyAPI api = AmplifyAPI();

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

  test('query should serialize apiName parameter when included in request',
      () async {
    var apiName = "publicApi";
    String graphQLDocument = '''query MyQuery {
      listBlogs {
        items {
          id
          name
          createdAt
        }
      }
    }''';

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      expect(methodCall.arguments['apiName'], apiName);
      return {'errors': []};
    });
    var operation = api.query<String>(
        request: GraphQLRequest(
            document: graphQLDocument, variables: {}, apiName: apiName));
    await operation.response;
  });

  test('query should not serialize apiName when not included in request',
      () async {
    String graphQLDocument = '''query MyQuery {
      listBlogs {
        items {
          id
          name
          createdAt
        }
      }
    }''';

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      expect(methodCall.arguments['apiName'], null);
      return {'errors': []};
    });
    var operation = api.query<String>(
        request: GraphQLRequest(document: graphQLDocument, variables: {}));
    await operation.response;
  });
}
