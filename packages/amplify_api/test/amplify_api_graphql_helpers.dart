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

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api/graphql_helpers.dart';
import 'package:amplify_api_plugin_interface/amplify_api_plugin_interface.dart';
import 'package:flutter_test/flutter_test.dart';

import 'resources/Blog.dart';
import 'resources/ModelProvider.dart';

void main() {
  test("ModelQueries.get() should craft a valid request", () {
    AmplifyAPI api = AmplifyAPI(modelProvider: ModelProvider.instance);

    String id = "f70d1142-12da-4564-a699-966a75f96db6";
    String expected =
        "query getBlog(\$id: ID!) { getBlog(id: \$id) { id name createdAt } }";

    GraphQLRequest<String> req = ModelQueries.get(Blog.classType, id);

    expect(req.document, expected);
    expect(req.variables.containsValue(id), true);
  });

  test("should handle no ModelProvider instance", () {
    AmplifyAPI api = AmplifyAPI();

    try {
      GraphQLRequest<String> req = ModelQueries.get(Blog.classType, "");
    } on ApiException catch (e) {
      expect(e.message, "No modelProvider found");
      expect(e.recoverySuggestion,
          "Pass in a modelProvider instance while instantiating APIPlugin");
      return;
    }
    throw new Exception("Expected an ApiException");
  });
}
