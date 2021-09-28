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

import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('GraphQL', () {
    setUpAll(() async {
      if (!Amplify.isConfigured) {
        await Amplify.addPlugins([AmplifyAPI()]);
        await Amplify.configure(amplifyconfig);
      }
    });

    testWidgets('should fetch', (WidgetTester tester) async {
      const listBlogs = 'listBlogs';
      const items = 'items';
      String graphQLDocument = '''query MyQuery {
        $listBlogs {
          $items {
            id
            name
            createdAt
          }
        }
      }''';

      var _r = Amplify.API
          .query<String>(request: GraphQLRequest(document: graphQLDocument));
      var response = await _r.response;
      Map data = jsonDecode(response.data);
      expect(data[listBlogs][items], hasLength(greaterThanOrEqualTo(0)));
    });
  });
}
