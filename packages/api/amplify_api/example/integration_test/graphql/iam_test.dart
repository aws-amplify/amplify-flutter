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
import 'dart:async';
import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api_example/models/ModelProvider.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../util.dart';

void main({bool useExistingTestUser = false}) {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('GraphQL IAM', () {
    setUpAll(() async {
      await configureAmplify();

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

    group('queries (authorized user)', () {
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
        final operation = Amplify.API.query<String>(
          request: GraphQLRequest(document: graphQLDocument),
        );
        final response = await operation.response;
        Map data = jsonDecode(response.data!) as Map;
        expect(data[listBlogs][items], hasLength(greaterThanOrEqualTo(0)));
      });

      testWidgets('should fetch when document string contains tabs',
          (WidgetTester tester) async {
        const listBlogs = 'listBlogs';
        const items = 'items';
        // tab before id and name
        String graphQLDocument = '''query MyQuery {
        $listBlogs {
          $items {
          \tid
          \tname
          }
        }
      }''';

        final operation = Amplify.API
            .query<String>(request: GraphQLRequest(document: graphQLDocument));
        final res = await operation.response;
        Map data = jsonDecode(res.data!) as Map;
        expect(res, hasNoGraphQLErrors);
        expect(data[listBlogs][items], hasLength(greaterThanOrEqualTo(0)));
      });

      // Queries
      testWidgets('should GET a blog with Model helper',
          (WidgetTester tester) async {
        String name = 'Integration Test Blog to fetch';
        Blog blog = await addBlog(name);
        final req = ModelQueries.get(Blog.classType, blog.id);
        final res = await Amplify.API.query(request: req).response;
        Blog? data = res.data;
        expect(res, hasNoGraphQLErrors);
        expect(data, equals(blog));
      });

      testWidgets('should LIST blogs with Model helper',
          (WidgetTester tester) async {
        String blog1Name = 'Integration Test Blog 1';
        String blog2Name = 'Integration Test Blog 2';
        String blog3Name = 'Integration Test Blog 3';
        Blog blog1 = await addBlog(blog1Name);
        Blog blog2 = await addBlog(blog2Name);
        Blog blog3 = await addBlog(blog3Name);
        final req = ModelQueries.list<Blog>(Blog.classType);
        final operation = Amplify.API.query(request: req);
        final res = await operation.response;
        final data = res.data;
        final blogs = [blog1, blog2, blog3];
        expect(res, hasNoGraphQLErrors);
        expect(data?.items, containsAll(blogs));
      });

      testWidgets(
          'get requestForNextResult should produce next page of results from first response',
          (WidgetTester tester) async {
        const limit = 1;
        final firstReq = ModelQueries.list<Blog>(Blog.classType, limit: limit);
        final firstRes = await Amplify.API.query(request: firstReq).response;
        final firstData = firstRes.data;
        expect(firstData?.items.length, limit);
        expect(firstData?.hasNextResult, true);
        final secondReq = firstData?.requestForNextResult;
        final secondRes = await Amplify.API.query(request: secondReq!).response;
        final secondData = secondRes.data;
        expect(secondData?.items.length, limit);
        final firstId = firstData?.items[0]?.id;
        final secondId = secondData?.items[0]?.id;
        expect(firstId?.isNotEmpty, isTrue);
        expect(secondId?.isNotEmpty, isTrue);
        expect(firstId, isNot(secondId));
      });

      testWidgets('should LIST blogs with Model helper with query predicate',
          (WidgetTester tester) async {
        String blogName = 'Integration Test Blog ${uuid()}';
        Blog blog = await addBlog(blogName);

        final req = ModelQueries.list<Blog>(Blog.classType,
            where: Blog.NAME.eq(blogName) & Blog.ID.eq(blog.id));
        final res = await Amplify.API.query(request: req).response;
        final data = res.data;
        final blogs = [blog];

        expect(res, hasNoGraphQLErrors);
        expect(data?.items.length, 1);
        expect(data?.items, containsAll(blogs));
      });

      testWidgets(
          'should LIST posts with Model and include parents in response',
          (WidgetTester tester) async {
        final title = 'Lorem Ipsum Test Post: ${uuid()}';
        const rating = 0;
        final createdPost = await addPostAndBlog(title, rating);

        final req =
            ModelQueries.list(Post.classType, where: Post.TITLE.eq(title));
        final res = await Amplify.API.query(request: req).response;
        final postFromResponse = res.data?.items[0];

        expect(res, hasNoGraphQLErrors);
        expect(postFromResponse?.blog?.id, isNotNull);
        expect(postFromResponse?.blog?.id, createdPost.blog?.id);
      });

      testWidgets('should LIST posts by parent ID',
          (WidgetTester tester) async {
        final title = 'Lorem Ipsum Test Post: ${uuid()}';
        const rating = 0;
        final createdPost = await addPostAndBlog(title, rating);
        final blogId = createdPost.blog?.id;

        final req =
            ModelQueries.list(Post.classType, where: Post.BLOG.eq(blogId));
        final res = await Amplify.API.query(request: req).response;
        final postFromResponse = res.data?.items[0];

        expect(res, hasNoGraphQLErrors);
        expect(postFromResponse?.blog?.id, isNotNull);
        expect(postFromResponse?.blog?.id, createdPost.blog?.id);
        expect(postFromResponse?.title, title);
      });

      testWidgets('should decode a custom list request',
          (WidgetTester tester) async {
        final name = 'Lorem Ipsum Test Blog: ${uuid()}';
        await addBlog(name);

        const listBlogs = 'listBlogs';
        String graphQLDocument = '''query GetBlogsCustomDecoder {
          $listBlogs {
            items {
              id
              name
              createdAt
            }
          }
        }''';
        final request = GraphQLRequest<PaginatedResult<Blog>>(
          document: graphQLDocument,
          modelType: const PaginatedModelType(Blog.classType),
          decodePath: listBlogs,
        );
        final res = await Amplify.API.query(request: request).response;
        expect(res, hasNoGraphQLErrors);
        expect(res.data?.items.first, isA<Blog>());
      });

      testWidgets('should allow custom headers', (WidgetTester tester) async {
        final testName = 'lorem ipsum ${uuid()}';
        // First ensure that request will fail without custom headers.
        final reqThatFails = ModelMutations.create(
          Blog(name: testName),
        );
        final failRes = await Amplify.API.query(request: reqThatFails).response;
        expect(failRes.data, isNull);
        expect(failRes.hasErrors, isTrue);

        // Authorize w cognito user pools using a custom header, same as plugin
        // would do if that was the auth mode.
        final authSession =
            await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
        final accessToken = authSession.userPoolTokens?.accessToken.raw;
        if (accessToken == null) {
          throw const AmplifyException(
            'Could not get access token from cognito.',
            recoverySuggestion: 'Ensure test user signed in.',
          );
        }
        final headers = {AWSHeaders.authorization: accessToken};
        final reqThatShouldWork = GraphQLRequest<Blog>(
          document: reqThatFails.document,
          variables: reqThatFails.variables,
          modelType: reqThatFails.modelType,
          decodePath: reqThatFails.decodePath,
          headers: headers,
        );
        final res =
            await Amplify.API.query(request: reqThatShouldWork).response;
        expect(res, hasNoGraphQLErrors);
        expect(res.data?.name, testName);
        await deleteBlog(res.data!.id);
      });
    });

    group('queries (guest access)', () {
      setUpAll(() async {
        await signOutTestUser();
      });

      testWidgets('should fetch model that allows guest access',
          (WidgetTester tester) async {
        final req = ModelQueries.list<Blog>(Blog.classType);
        final res = await Amplify.API.query(request: req).response;
        final data = res.data;
        expect(res, hasNoGraphQLErrors);
        expect(data?.items.length, greaterThanOrEqualTo(0));
      });

      testWidgets('should get error model that does not allow guest access',
          (WidgetTester tester) async {
        final req = ModelQueries.list<Comment>(Comment.classType);
        final res = await Amplify.API.query(request: req).response;
        expect(res.data, isNull);
        expect(res.hasErrors, isTrue);
      });

      tearDownAll(() async {
        await signInTestUser();
      });
    });

    group(
      'subscriptions',
      () {
        testWidgets(
            'should emit event when onCreate subscription made with model helper',
            (WidgetTester tester) async {
          String name = 'Integration Test Blog - subscription create ${uuid()}';
          final subscriptionRequest =
              ModelSubscriptions.onCreate(Blog.classType);

          final eventResponse = await establishSubscriptionAndMutate(
            subscriptionRequest,
            () => addBlog(name),
            eventFilter: (Blog? blog) => blog?.name == name,
          );
          Blog? blogFromEvent = eventResponse.data;

          expect(blogFromEvent?.name, equals(name));
        });

        testWidgets(
            'should emit event when onUpdate subscription made with model helper',
            (WidgetTester tester) async {
          const originalName = 'Integration Test Blog - subscription update';
          final updatedName =
              'Integration Test Blog - subscription update, name now ${uuid()}';
          Blog blogToUpdate = await addBlog(originalName);

          final subscriptionRequest =
              ModelSubscriptions.onUpdate(Blog.classType);
          final eventResponse = await establishSubscriptionAndMutate(
            subscriptionRequest,
            () async {
              blogToUpdate = blogToUpdate.copyWith(name: updatedName);
              final updateReq = authorizeRequestForUserPools(
                  ModelMutations.update(blogToUpdate));
              await Amplify.API.mutate(request: updateReq).response;
            },
            eventFilter: (Blog? blog) => blog?.id == blogToUpdate.id,
          );
          Blog? blogFromEvent = eventResponse.data;

          expect(blogFromEvent?.name, equals(updatedName));
        });

        testWidgets(
            'should emit event when onDelete subscription made with model helper',
            (WidgetTester tester) async {
          const name = 'Integration Test Blog - subscription delete';
          Blog blogToDelete = await addBlog(name);

          final subscriptionRequest =
              ModelSubscriptions.onDelete(Blog.classType);
          final eventResponse = await establishSubscriptionAndMutate(
            subscriptionRequest,
            () => deleteBlog(blogToDelete.id),
            eventFilter: (Blog? blog) => blog?.id == blogToDelete.id,
          );
          Blog? blogFromEvent = eventResponse.data;

          expect(blogFromEvent?.name, equals(name));
        });

        testWidgets('should cancel subscription', (WidgetTester tester) async {
          const name = 'Integration Test Blog - subscription to cancel';
          Blog blogToDelete = await addBlog(name);

          final subReq = ModelSubscriptions.onDelete(Blog.classType);
          final subscription = await getEstablishedSubscriptionOperation<Blog>(
            subReq,
            (_) {
              fail('Subscription event triggered. Should be canceled.');
            },
          );
          await subscription.cancel();

          // delete the blog, wait for update
          await deleteBlog(blogToDelete.id);
          await Future<dynamic>.delayed(const Duration(seconds: 5));
        });

        testWidgets(
            'should emit event when onCreate subscription made with model helper for post (model with parent).',
            (WidgetTester tester) async {
          String title =
              'Integration Test post - subscription create ${uuid()}';
          final subscriptionRequest =
              ModelSubscriptions.onCreate(Post.classType);

          final eventResponse = await establishSubscriptionAndMutate(
            subscriptionRequest,
            () => addPostAndBlog(title, 0),
            eventFilter: (Post? post) => post?.title == title,
          );
          Post? postFromEvent = eventResponse.data;

          expect(postFromEvent?.title, equals(title));
        });

        testWidgets(
            'stream should emit response with error when subscription fails',
            (WidgetTester tester) async {
          // Create a subscription we will ignore to keep the connection open after
          // canceling a failed subscription.
          final firstSubscriptionCompleter = Completer<void>();
          final firstStream = Amplify.API.subscribe(
            ModelSubscriptions.onCreate(Blog.classType),
            onEstablished: firstSubscriptionCompleter.complete,
          );
          await firstSubscriptionCompleter.future;

          // Then create a 2nd subscription with an error
          const document = '''subscription MyInvalidSubscription {
            onCreateInvalidBlog {
              id
              name
              createdAt
            }
          }''';
          final invalidSubscriptionRequest =
              GraphQLRequest<String>(document: document);
          final streamWithError =
              Amplify.API.subscribe(invalidSubscriptionRequest,
                  onEstablished: () => fail(
                        'onEstablished should not be called during failed subscription',
                      ));

          expect(
            streamWithError,
            emits(predicate<GraphQLResponse<String>>(
              (GraphQLResponse<String> response) =>
                  response.hasErrors && response.data == null,
              'Has GraphQL Errors',
            )),
          );
          // Cancel subscription that had an error.
          await streamWithError.listen(null).cancel();
          // Give AppSync a few seconds to send an error, which happens when
          // canceling a failed subscription and throws if not handled correctly.
          // Needs to be on a canceled error subscription with an open connection.
          await Future<void>.delayed(const Duration(seconds: 3));
          // Cancel the first subscription, which will close the WebSocket connection.
          await firstStream.listen(null).cancel();
        });
      },
    );
  });
}
