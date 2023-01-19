// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
import 'dart:async';

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
          late StreamController<ApiHubEvent> hubEventsController;
          late Stream<ApiHubEvent> hubEvents;
          setUpAll(() async {
            if (!useExistingTestUser) {
              await signUpTestUser();
            }
            await signInTestUser();

            hubEventsController = StreamController.broadcast();
            hubEvents = hubEventsController.stream;
            Amplify.Hub.listen(HubChannel.Api, hubEventsController.add);
          });

          tearDownAll(() async {
            await deleteTestModels();
            if (!useExistingTestUser) {
              await deleteTestUser();
            }

            await hubEventsController.close();
            Amplify.Hub.close();
          });

          testWidgets(
              'should emit event when onCreate subscription made with model helper',
              (WidgetTester tester) async {
            expect(
              hubEvents,
              emitsInOrder(
                [
                  disconnectedHubEvent,
                  connectingHubEvent,
                  connectedHubEvent,
                  pendingDisconnectedHubEvent,
                  disconnectedHubEvent,
                ],
              ),
            );
            final name =
                'Integration Test Blog - subscription create ${uuid()}';
            final subscriptionRequest = ModelSubscriptions.onCreate(
              Blog.classType,
              authorizationMode: APIAuthorizationType.apiKey,
            );

            final eventResponse = await establishSubscriptionAndMutate<Blog>(
              subscriptionRequest,
              () => addBlog(name),
              eventFilter: (response) => response.data?.name == name,
            );
            final blogFromEvent = eventResponse.data;

            expect(blogFromEvent?.name, equals(name));
          });

          testWidgets(
              'subscribe() should handle multiple streams synchronously',
              (WidgetTester tester) async {
            final readyCompleter = Completer<void>();
            final readyCompleter2 = Completer<void>();
            final dataCompleter = Completer<Blog>();
            final dataCompleter2 = Completer<Blog>();

            final name =
                'Integration Test Blog - subscription sync test ${uuid()}';

            final subscriptionRequest1 = ModelSubscriptions.onCreate(
              Blog.classType,
              authorizationMode: APIAuthorizationType.apiKey,
            );

            final stream1 = Amplify.API.subscribe(
              subscriptionRequest1,
              onEstablished: expectAsync0(readyCompleter.complete),
            );
            stream1.listen(
              ((event) {
                if (event.data?.name == name) {
                  dataCompleter.complete(event.data);
                }
              }),
              onError: (Object e) => fail('Error in subscription stream: $e'),
            );

            final subscriptionRequest2 = ModelSubscriptions.onDelete(
              Blog.classType,
              authorizationMode: APIAuthorizationType.apiKey,
            );

            final stream2 = Amplify.API.subscribe(
              subscriptionRequest2,
              onEstablished: expectAsync0(readyCompleter2.complete),
            );
            stream2.listen(
              ((event) {
                if (event.data?.name == name) {
                  final blogFromEvent = event.data;
                  expect(blogFromEvent?.name, equals(name));
                  dataCompleter2.complete(event.data);
                }
              }),
              onError: (Object e) => fail('Error in subscription stream: $e'),
            );

            await readyCompleter.future;
            await readyCompleter2.future;

            final blog = await addBlog(name);

            await expectLater(dataCompleter.future, completes);

            await deleteBlog(blog.id);

            await expectLater(dataCompleter2.future, completes);
          });

          testWidgets('should parse errors within a web socket data message',
              (WidgetTester tester) async {
            final name =
                'Integration Test Blog - subscription create ${uuid()}';
            const error =
                "Cannot return null for non-nullable type: 'AWSDateTime' within "
                "parent 'Blog' (/onCreateBlog/createdAt)";
            final subscriptionRequest = ModelSubscriptions.onCreate(
              Blog.classType,
              authorizationMode: APIAuthorizationType.apiKey,
            );

            final eventResponse = await establishSubscriptionAndMutate<Blog>(
              subscriptionRequest,
              () => runPartialMutation(name),
              eventFilter: (response) => response.errors.isNotEmpty,
              canFail: true,
            );
            final dataErrors = eventResponse.errors;

            expect(dataErrors.first.message, equals(error));
          });
        },
      );
    },
  );
}
