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

import 'package:flutter/foundation.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api/src/graphql/graphql_response_decoder.dart';
import 'package:flutter_test/flutter_test.dart';

import 'resources/Blog.dart';
import 'resources/ModelProvider.dart';

void main() {
  AmplifyAPI? api;
  setUp(() {
    api = AmplifyAPI(modelProvider: ModelProvider.instance);
  });

  tearDown(() {
    api = null;
  });

  test("ModelQueries.get() should craft a valid request", () {
    String id = UUID.getUUID();
    String expected =
        r"query getBlog($id: ID!) { getBlog(id: $id) { id name createdAt } }";

    GraphQLRequest<Blog> req = ModelQueries.get<Blog>(Blog.classType, id);

    expect(req.document, expected);
    expect(mapEquals(req.variables, {'id': id}), isTrue);
    expect(req.modelType, Blog.classType);
    expect(req.decodePath, "getBlog");
  });

  test("should handle no ModelProvider instance", () {
    AmplifyAPI api = AmplifyAPI(); // no modelProvider

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

  test('Query returns a GraphQLRequest<Blog> when provided a modelType',
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

    expect(response.data.runtimeType, Blog);
  });

  test('Query returns a GraphQLRequest<String> when not provided a modelType',
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

    expect(response.data.runtimeType, String);
  });
}
