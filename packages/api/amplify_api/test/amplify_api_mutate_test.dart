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
import 'package:amplify_api/src/method_channel_api.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'graphql_helpers_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const MethodChannel apiChannel = MethodChannel('com.amazonaws.amplify/api');

  late AmplifyAPI api;

  setUpAll(() async {
    api = MockAmplifyAPI(
      modelProvider: ModelProvider.instance,
    );
    await Amplify.addPlugin(api);
  });

  tearDown(() {
    apiChannel.setMockMethodCallHandler(null);
  });

  test('Mutate advanced flow executes correctly in the happy case', () async {
    const mutationResult = {
      'createBlog': {
        'id': '068ac891-77a3-4653-89de-b05d46bcc60a',
        'name': 'Test Blog',
        'createdAt': '2020-12-14T19:54:18.733Z'
      }
    };

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'mutate') {
        return {
          'data': mutationResult.toString(),
          'errors': <Map>[],
        };
      }
    });

    String graphQLDocument = '''mutation MyMutation(\$name: String!) {
      createBlog(input: {name: \$name}) {
        id
        name
        createdAt
      }
    }''';

    var operation = api.mutate(
      request: GraphQLRequest<String>(
        document: graphQLDocument,
        variables: <String, dynamic>{'name': 'Test App Blog'},
      ),
    );

    var response = await operation.response;
    expect(response.data, mutationResult.toString());
  });

  test('ModelMutations.create() executes correctly in the happy case',
      () async {
    final id = UUID.getUUID();
    const name = 'Test App Blog';
    const time = '2020-12-14T19:54:18.733Z';
    final dateTime = TemporalDateTime.fromString(time);
    final mutationResult = '''{
      "createBlog": {
        "id": "$id",
        "name": "$name",
        "createdAt": "$time"
      }
    }''';

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'mutate') {
        return {'data': mutationResult.toString(), 'errors': <Object>[]};
      }
    });

    Blog blog = Blog(id: id, name: name, createdAt: dateTime);

    var operation = api.mutate(request: ModelMutations.create<Blog>(blog));

    var response = await operation.response;
    expect(response.data?.equals(blog), isTrue);
  });

  test('ModelMutations.delete() executes correctly in the happy case',
      () async {
    final id = UUID.getUUID();
    const name = 'Test App Blog';
    const time = '2020-12-14T19:54:18.733Z';
    final dateTime = TemporalDateTime.fromString(time);
    final mutationResult = '''{
      "deleteBlog": {
        "id": "$id",
        "name": "$name",
        "createdAt": "$time"
      }
    }''';

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'mutate') {
        return {'data': mutationResult.toString(), 'errors': <Object>[]};
      }
    });

    Blog blog = Blog(id: id, name: name, createdAt: dateTime);

    var operation = api.mutate(request: ModelMutations.delete<Blog>(blog));

    var response = await operation.response;
    expect(response.data, equals(blog));
  });

  test('ModelMutations.update() executes correctly in the happy case',
      () async {
    final id = UUID.getUUID();
    const name = 'Test App Blog';
    const time = '2020-12-14T19:54:18.733Z';
    final dateTime = TemporalDateTime.fromString(time);
    final mutationResult = '''{
      "updateBlog": {
        "id": "$id",
        "name": "$name",
        "createdAt": "$time"
      }
    }''';

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'mutate') {
        return {'data': mutationResult.toString(), 'errors': <Object>[]};
      }
    });

    Blog blog = Blog(id: id, name: name, createdAt: dateTime);

    var operation = api.mutate(request: ModelMutations.update<Blog>(blog));

    var response = await operation.response;
    expect(response.data, equals(blog));
  });

  test(
      'A PlatformException for a failed API call results in the corresponding ApiException',
      () async {
    final exception = PlatformException(
      code: 'ApiException',
      details: {
        'message': 'AMPLIFY_API_MUTATE_FAILED',
        'recoverySuggestion': 'some insightful suggestion',
        'underlyingException': 'Act of God'
      },
    );

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'mutate') {
        throw exception;
      }
    });
    String graphQLDocument = '';

    try {
      var operation = api.mutate<String>(
        request: GraphQLRequest(
          document: graphQLDocument,
          variables: <String, dynamic>{},
        ),
      );
      await operation.response;
    } on ApiException catch (e) {
      expect(e.message, 'AMPLIFY_API_MUTATE_FAILED');
      expect(e.recoverySuggestion, 'some insightful suggestion');
      expect(e.underlyingException, 'Act of God');
      return;
    }
    throw Exception('Expected an ApiException');
  });

  test(
      'A PlatformException for a malformed request results in the corresponding ApiException',
      () async {
    final exception = PlatformException(
      code: 'ApiException',
      details: {
        'message': 'AMPLIFY_API_MUTATE_FAILED',
        'recoverySuggestion': 'some insightful suggestion',
        'underlyingException': 'Act of God'
      },
    );

    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'mutate') {
        throw exception;
      }
    });
    String graphQLDocument = '';

    try {
      var operation = api.mutate<String>(
        request: GraphQLRequest(
          document: graphQLDocument,
          variables: <String, dynamic>{},
        ),
      );
      await operation.response;
    } on ApiException catch (e) {
      expect(e.message, 'AMPLIFY_API_MUTATE_FAILED');
      expect(e.recoverySuggestion, 'some insightful suggestion');
      expect(e.underlyingException, 'Act of God');
      return;
    }
    throw Exception('Expected an ApiException');
  });

  test(
      'An unrecognized PlatformException results in the corresponding ApiException',
      () async {
    final exception = PlatformException(
      code: 'ApiException',
      details: {
        'message': 'AMPLIFY_API_MUTATE_FAILED',
        'recoverySuggestion': 'some insightful suggestion',
        'underlyingException': 'Act of God'
      },
    );
    apiChannel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == 'mutate') {
        throw exception;
      }
    });
    String graphQLDocument = '';

    try {
      var operation = api.mutate<String>(
        request: GraphQLRequest(
          document: graphQLDocument,
          variables: <String, dynamic>{},
        ),
      );
      await operation.response;
    } on ApiException catch (e) {
      expect(e.message, 'AMPLIFY_API_MUTATE_FAILED');
      expect(e.recoverySuggestion, 'some insightful suggestion');
      expect(e.underlyingException, 'Act of God');
      return;
    }
    throw Exception('Expected an ApiException');
  });
}
