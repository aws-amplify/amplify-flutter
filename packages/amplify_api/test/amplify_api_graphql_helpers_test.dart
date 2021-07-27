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
import 'package:flutter_test/flutter_test.dart';

import 'resources/Blog.dart';
import 'resources/ModelProvider.dart';

void main() {
  test("ModelQueries.get() should craft a valid request", () {
    AmplifyAPI api = AmplifyAPI(modelProvider: ModelProvider.instance);

    String id = UUID.getUUID();
    String expected =
        "query getBlog(\$id: ID!) { getBlog(id: \$id) { id name createdAt } }";

    GraphQLRequest<Blog> req = ModelQueries.get<Blog>(Blog.classType, id);

    expect(req.document, expected);
    expect(req.variables.containsValue(id), true);
  });

  test("should handle no ModelProvider instance", () {
    AmplifyAPI api = AmplifyAPI();
    try {
      GraphQLRequest<Blog> req = ModelQueries.get<Blog>(Blog.classType, "");
    } on ApiException catch (e) {
      expect(e.message, "No modelProvider found");
      expect(e.recoverySuggestion,
          "Pass in a modelProvider instance while instantiating APIPlugin");
      return;
    }
    throw new Exception("Expected an ApiException");
  });
}
