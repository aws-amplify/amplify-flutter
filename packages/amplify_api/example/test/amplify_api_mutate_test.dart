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

  test('Mutate advanced flow executes correctly in the happy case', () async {
    const mutationResult = {
      "createBlog": {
        "id": "068ac891-77a3-4653-89de-b05d46bcc60a",
        "name": "Test Blog",
        "createdAt": "2020-12-14T19:54:18.733Z"
      }
    };

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "mutate") {
        return {'data': mutationResult.toString(), 'errors': []};
      }
    });

    String graphQLDocument = '''mutation MyMutation(\$name: String!) {
      createBlog(input: {name: \$name}) {
        id
        name
        createdAt
      }
    }''';

    var operation = await api.mutate(
        request: GraphQLRequest<String>(
            document: graphQLDocument, variables: {"name": "Test App Blog"}));

    var response = await operation.response;
    expect(response.data, mutationResult.toString());
  });

  test(
      'A PlatformException for malformed request results in the corresponding ApiError',
      () async {
    final exception = PlatformException(
        code: "AmplifyException",
        message: "AMPLIFY_REQUEST_MALFORMED",
        details: {});

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "mutate") {
        throw exception;
      }
    });
    String graphQLDocument = '';

    try {
      var operation = api.mutate<String>(
          request: GraphQLRequest(document: graphQLDocument, variables: {}));
      await operation.response;
    } on ApiError catch (e) {
      expect(e.code, exception.code);
      expect(e.message, exception.message);
      expect(e.details, exception.details);
      return;
    }
    throw new Exception('Expected an ApiError');
  });
}
