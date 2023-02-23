// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
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
        const graphQLDocument = '''query MyQuery {
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
        final data = jsonDecode(response.data!) as Map;
        // ignore: avoid_dynamic_calls
        expect(data[listBlogs][items], hasLength(greaterThanOrEqualTo(0)));
      });

      testWidgets('should fetch when document string contains tabs',
          (WidgetTester tester) async {
        const listBlogs = 'listBlogs';
        const items = 'items';
        // tab before id and name
        const graphQLDocument = '''query MyQuery {
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
        final data = jsonDecode(res.data!) as Map;
        expect(res, hasNoGraphQLErrors);
        // ignore: avoid_dynamic_calls
        expect(data[listBlogs][items], hasLength(greaterThanOrEqualTo(0)));
      });

      // Queries
      testWidgets('should GET a blog with Model helper',
          (WidgetTester tester) async {
        const name = 'Integration Test Blog to fetch';
        final blog = await addBlog(name);
        final req = ModelQueries.get(Blog.classType, blog.modelIdentifier);
        final res = await Amplify.API.query(request: req).response;
        final data = res.data;
        expect(res, hasNoGraphQLErrors);
        expect(data, equals(blog));
      });

      testWidgets('should LIST blogs with Model helper',
          (WidgetTester tester) async {
        await addBlog('Integration Test Blog 1');
        final req = ModelQueries.list<Blog>(Blog.classType);
        final operation = Amplify.API.query(request: req);
        final res = await operation.response;
        final data = res.data;
        expect(res, hasNoGraphQLErrors);
        expect(data?.items, isNotEmpty);
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
        final blogName = 'Integration Test Blog ${uuid()}';
        final blog = await addBlog(blogName);

        final req = ModelQueries.list<Blog>(
          Blog.classType,
          where: Blog.NAME.eq(blogName) & Blog.ID.eq(blog.id),
        );
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
        const graphQLDocument = '''query GetBlogsCustomDecoder {
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
        final accessToken =
            authSession.userPoolTokensResult.value.accessToken.raw;
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
        await deleteBlog(res.data!);
      });

      testWidgets(
          'should GET a model with custom primary key and complex identifier using model helpers',
          (WidgetTester tester) async {
        const name = 'Integration Test CpkParent to fetch';
        final cpkParent = await addCpkParent(name);
        final req = ModelQueries.get(
          CpkOneToOneBidirectionalParentCD.classType,
          cpkParent.modelIdentifier,
        );
        final res = await Amplify.API.query(request: req).response;
        final data = res.data;
        expect(res, hasNoGraphQLErrors);
        expect(data, equals(cpkParent));
      });

      /// parent: { customId, name } // complex identifier
      /// child: { belongsToParent } // references parent by complex identifier
      /// get(child) -> child populated with parent that has customId and name
      testWidgets(
          'should GET a child and include parent with complex identifier and custom primary key',
          (WidgetTester tester) async {
        const name = 'Integration Test CpkParent to fetch w child';
        const explicitChildName = 'Explicit child name fetch test';
        const implicitChildName = 'Implicit child name fetch test';
        // Create test parent, explicit child and implicit child
        final cpkParent = await addCpkParent(name);
        final createExplicitChildReq = ModelMutations.create(
          CpkOneToOneBidirectionalChildExplicitCD(
            name: explicitChildName,
            belongsToParent: cpkParent,
          ),
        );
        final createImplicitChildReq = ModelMutations.create(
          CpkOneToOneBidirectionalChildImplicitCD(
            name: implicitChildName,
            belongsToParent: cpkParent,
          ),
        );
        final explicitChildCreateRes =
            await Amplify.API.mutate(request: createExplicitChildReq).response;
        expect(explicitChildCreateRes, hasNoGraphQLErrors);
        final createdExplicitChild = explicitChildCreateRes.data!;
        cpkExplicitChildCache.add(createdExplicitChild);
        final implicitChildCreateRes =
            await Amplify.API.mutate(request: createImplicitChildReq).response;
        expect(implicitChildCreateRes, hasNoGraphQLErrors);
        final createdImplicitChild = implicitChildCreateRes.data!;
        cpkImplicitChildCache.add(createdImplicitChild);

        // Fetch the created children and check responses.
        final fetchExplicitChildReq =
            ModelQueries.get<CpkOneToOneBidirectionalChildExplicitCD>(
          CpkOneToOneBidirectionalChildExplicitCD.classType,
          createdExplicitChild.modelIdentifier,
        );
        final fetchExplicitChildRes =
            await Amplify.API.query(request: fetchExplicitChildReq).response;
        final fetchedExplicitChild = fetchExplicitChildRes.data;
        expect(fetchExplicitChildRes, hasNoGraphQLErrors);
        // Convert to JSON because `_belongsToParent` is private on the model
        // but present in the converted JSON.
        final explicitChildJson = fetchedExplicitChild?.toJson();
        final explicitParentJson =
            explicitChildJson?['belongsToParent'] as Map<String, dynamic>;
        expect(
          explicitParentJson['customId'],
          equals(cpkParent.customId),
        );
        final fetchImplicitChildReq =
            ModelQueries.get<CpkOneToOneBidirectionalChildImplicitCD>(
          CpkOneToOneBidirectionalChildImplicitCD.classType,
          createdImplicitChild.modelIdentifier,
        );
        final fetchImplicitChildRes =
            await Amplify.API.query(request: fetchImplicitChildReq).response;
        final fetchedImplicitChild = fetchImplicitChildRes.data;
        expect(fetchImplicitChildRes, hasNoGraphQLErrors);
        final implicitChildJson = fetchedImplicitChild?.toJson();
        final implicitParentJson =
            implicitChildJson?['belongsToParent'] as Map<String, dynamic>;
        expect(
          implicitParentJson['customId'],
          equals(cpkParent.customId),
        );
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
          final name = 'Integration Test Blog - subscription create ${uuid()}';
          final subscriptionRequest =
              ModelSubscriptions.onCreate(Blog.classType);

          final eventResponse = await establishSubscriptionAndMutate<Blog>(
            subscriptionRequest,
            () => addBlog(name),
            eventFilter: (response) => response.data?.name == name,
          );
          final blogFromEvent = eventResponse.data;

          expect(blogFromEvent?.name, equals(name));
        });

        testWidgets(
            'should emit event when onUpdate subscription made with model helper',
            (WidgetTester tester) async {
          const originalName = 'Integration Test Blog - subscription update';
          final updatedName =
              'Integration Test Blog - subscription update, name now ${uuid()}';
          var blogToUpdate = await addBlog(originalName);

          final subscriptionRequest =
              ModelSubscriptions.onUpdate(Blog.classType);
          final eventResponse = await establishSubscriptionAndMutate<Blog>(
            subscriptionRequest,
            () async {
              blogToUpdate = blogToUpdate.copyWith(name: updatedName);
              final updateReq = ModelMutations.update(
                blogToUpdate,
                authorizationMode: APIAuthorizationType.userPools,
              );
              await Amplify.API.mutate(request: updateReq).response;
            },
            eventFilter: (response) => response.data?.id == blogToUpdate.id,
          );
          final blogFromEvent = eventResponse.data;

          expect(blogFromEvent?.name, equals(updatedName));
        });

        testWidgets(
            'should emit event when onDelete subscription made with model helper',
            (WidgetTester tester) async {
          const name = 'Integration Test Blog - subscription delete';
          final blogToDelete = await addBlog(name);

          final subscriptionRequest =
              ModelSubscriptions.onDelete(Blog.classType);
          final eventResponse = await establishSubscriptionAndMutate<Blog>(
            subscriptionRequest,
            () => deleteBlog(blogToDelete),
            eventFilter: (response) => response.data?.id == blogToDelete.id,
          );
          final blogFromEvent = eventResponse.data;

          expect(blogFromEvent?.name, equals(name));
        });

        testWidgets('should cancel subscription', (WidgetTester tester) async {
          const name = 'Integration Test Blog - subscription to cancel';
          final blogToDelete = await addBlog(name);

          final subReq = ModelSubscriptions.onDelete(Blog.classType);
          final subscription = await getEstablishedSubscriptionOperation<Blog>(
            subReq,
            (_) {
              fail('Subscription event triggered. Should be canceled.');
            },
          );
          await subscription.cancel();

          // delete the blog, wait for update
          await deleteBlog(blogToDelete);
          await Future<dynamic>.delayed(const Duration(seconds: 5));
        });

        testWidgets(
            'should emit event when onCreate subscription made with model helper for post (model with parent).',
            (WidgetTester tester) async {
          final title = 'Integration Test post - subscription create ${uuid()}';
          final subscriptionRequest =
              ModelSubscriptions.onCreate(Post.classType);

          final eventResponse = await establishSubscriptionAndMutate<Post>(
            subscriptionRequest,
            () => addPostAndBlog(title, 0),
            eventFilter: (response) => response.data?.title == title,
          );
          final postFromEvent = eventResponse.data;

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
          final streamWithError = Amplify.API.subscribe(
            invalidSubscriptionRequest,
            onEstablished: () => fail(
              'onEstablished should not be called during failed subscription',
            ),
          );

          expect(
            streamWithError,
            emits(
              predicate<GraphQLResponse<String>>(
                (GraphQLResponse<String> response) =>
                    response.hasErrors && response.data == null,
                'Has GraphQL Errors',
              ),
            ),
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
