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
import 'dart:io';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../util.dart';

void main({bool useExistingTestUser = false}) {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
    'GraphQL API key',
    () {
      setUpAll(() async {
        await configureAmplify();
        await signOutTestUser();
      });

      group('queries', () {
        testWidgets('should query authorized model',
            (WidgetTester tester) async {
          final req = ModelQueries.list<Blog>(
            Blog.classType,
            authorizationMode: APIAuthorizationType.apiKey,
          );
          final res = await Amplify.API.query(request: req).response;
          final data = res.data;
          expect(res, hasNoGraphQLErrors);
          expect(data?.items.length, greaterThanOrEqualTo(0));
        });

        testWidgets('should get error for unauthorized model', (
          WidgetTester tester,
        ) async {
          final req = ModelQueries.list<Post>(
            Post.classType,
            authorizationMode: APIAuthorizationType.apiKey,
          );
          final res = await Amplify.API.query(request: req).response;
          expect(res.hasErrors, true);
          expect(res.data, isNull);
        });
      });

      group(
        'subscriptions',
        () {
          setUpAll(() async {
            if (!useExistingTestUser) {
              await signUpTestUser();
            }
            await signInTestUser();
          });

          tearDownAll(() async {
            await deleteTestModels();
            if (!useExistingTestUser) {
              await deleteTestUser();
            }
          });

          testWidgets(
              'should emit event when onCreate subscription made with model helper',
              (WidgetTester tester) async {
            String name =
                'Integration Test Blog - subscription create ${uuid()}';
            final subscriptionRequest = ModelSubscriptions.onCreate(
              Blog.classType,
              authorizationMode: APIAuthorizationType.apiKey,
            );

            final eventResponse = await establishSubscriptionAndMutate(
              subscriptionRequest,
              () => addBlog(name),
              eventFilter: (Blog? blog) => blog?.name == name,
            );
            Blog? blogFromEvent = eventResponse.data;

            expect(blogFromEvent?.name, equals(name));
          });
        },
        // TODO(equartey): ensure state machine GQL sub impl doesn't have this issue.
        skip: Platform.isWindows,
      );
    },
  );
}
