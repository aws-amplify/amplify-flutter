// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../util.dart';

void main({
  bool useExistingTestUser = false,
  bool useGen1 = false,
  TestUser? testUser,
}) {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('GraphQL Cognito User Pools', () {
    setUpAll(() async {
      await configureAmplify(useGen1: useGen1);

      if (!useExistingTestUser) {
        testUser = await signUpTestUser(testUser);
      }
      await signInTestUser(testUser);
    });

    tearDownAll(() async {
      await deleteTestModels();
      if (!useExistingTestUser) {
        await deleteTestUser(testUser);
      }
    });

    group('queries', () {
      testWidgets(
        'should parse a deeply nested response if modelType and decodePath included in request',
        (WidgetTester tester) async {
          final originalTitle = 'Lorem Ipsum Test Post: ${uuid()}';
          const rating = 0;
          final post = await addPostAndBlog(originalTitle, rating);
          final blogId = post.blog?.id;
          final inputComment = Comment(
            content: 'Lorem ipsum test comment',
            post: post,
          );
          final createCommentReq = ModelMutations.create(
            inputComment,
            authorizationMode: APIAuthorizationType.userPools,
          );

          final createCommentRes = await Amplify.API
              .mutate(request: createCommentReq)
              .response;
          final createdComment = createCommentRes.data;
          if (createdComment == null) {
            fail('Unable to create comment. ${createCommentRes.errors}');
          }

          const getBlog = 'getBlog';
          const graphQLDocument =
              '''query GetBlogPostsComments(\$id: ID!) {
        $getBlog(id: \$id) {
            id
            name
            posts {
              items {
                id
                title
                rating
                comments {
                  items {
                    id
                    content
                  }
                }
              }
            }
        }
      }''';
          final nestedGetBlogReq = GraphQLRequest<Blog>(
            document: graphQLDocument,
            modelType: Blog.classType,
            variables: <String, String>{'id': blogId!},
            decodePath: getBlog,
            authorizationMode: APIAuthorizationType.userPools,
          );
          final nestedResponse = await Amplify.API
              .query(request: nestedGetBlogReq)
              .response;
          final responseBlog = nestedResponse.data;
          final firstCommentFromResponse = responseBlog?.posts?[0].comments?[0];
          expect(nestedResponse, hasNoGraphQLErrors);
          expect(firstCommentFromResponse?.id, createdComment.id);
          // clean up the comment
          final deleteCommentReq = ModelMutations.deleteById(
            Comment.classType,
            createdComment.modelIdentifier,
            authorizationMode: APIAuthorizationType.userPools,
          );
          await Amplify.API.mutate(request: deleteCommentReq).response;
        },
      );
    });

    group('mutations', () {
      testWidgets('should CREATE a blog with Model helper', (
        WidgetTester tester,
      ) async {
        const name = 'Integration Test Blog - create';
        final blog = Blog(name: name);

        final req = ModelMutations.create(
          blog,
          authorizationMode: APIAuthorizationType.userPools,
        );
        final res = await Amplify.API.mutate(request: req).response;
        expect(res, hasNoGraphQLErrors);
        final data = res.data;
        if (data != null) blogCache.add(data);

        expect(data?.name, equals(blog.name));
        expect(data?.id, equals(blog.id));
      });

      testWidgets(
        'should CREATE a post (model with parent) with Model helper',
        (WidgetTester tester) async {
          final title = 'Lorem Ipsum Test Post: ${uuid()}';
          const rating = 0;
          final data = await addPostAndBlog(title, rating);

          expect(data.title, equals(title));
          expect(data.rating, equals(rating));
        },
      );

      testWidgets('should CREATE a lower case model name with Model helper', (
        WidgetTester tester,
      ) async {
        final name = 'Integration Test lowercase - ${uuid()}';
        final model = lowerCase(name: name);

        final req = ModelMutations.create(
          model,
          authorizationMode: APIAuthorizationType.userPools,
        );
        final res = await Amplify.API.mutate(request: req).response;
        expect(res, hasNoGraphQLErrors);
        final data = res.data;
        if (data != null) lowerCaseCache.add(data);

        expect(data?.name, equals(model.name));
        expect(data?.id, equals(model.id));
      });

      testWidgets('should UPDATE a blog with Model helper', (
        WidgetTester tester,
      ) async {
        const oldName = 'Integration Test Blog to update';
        const newName = 'Integration Test Blog - updated';
        var blog = await addBlog(oldName);
        blog = blog.copyWith(name: newName);

        final req = ModelMutations.update(
          blog,
          authorizationMode: APIAuthorizationType.userPools,
        );
        final res = await Amplify.API.mutate(request: req).response;

        expect(res, hasNoGraphQLErrors);
        expect(res.data, equals(blog));
      });

      testWidgets(
        'should UPDATE a post (model with parent) with Model helper',
        (WidgetTester tester) async {
          final originalTitle = 'Lorem Ipsum Test Post: ${uuid()}';
          const rating = 0;
          final originalPost = await addPostAndBlog(originalTitle, rating);

          final updatedTitle =
              'Lorem Ipsum Test Post: (title updated) ${uuid()}';
          final localUpdatedPost = originalPost.copyWith(title: updatedTitle);
          final updateReq = ModelMutations.update(
            localUpdatedPost,
            authorizationMode: APIAuthorizationType.userPools,
          );
          final updateRes = await Amplify.API
              .mutate(request: updateReq)
              .response;
          final mutatedPost = updateRes.data;
          expect(mutatedPost?.title, equals(updatedTitle));
        },
      );

      testWidgets(
        'should get AppSync error when trying to CREATE a post (model with parent) without a parent on the instance',
        (WidgetTester tester) async {
          final post = Post(
            title: 'Lorem ipsum, fail update',
            rating: 0,
            blog: null,
          );
          final createPostReq = ModelMutations.create(
            post,
            authorizationMode: APIAuthorizationType.userPools,
          );
          final createPostRes = await Amplify.API
              .mutate(request: createPostReq)
              .response;
          final createdPost = createPostRes.data;
          if (createdPost != null) {
            postCache.add(createdPost);
            fail(
              'Successfully created a post when request should have failed.',
            );
          }

          expect(createPostRes.data, isNull);
          expect(createPostRes.errors, hasLength(1));
        },
      );

      testWidgets(
        'should not UPDATE a blog with Model helper when where condition not met',
        (WidgetTester tester) async {
          const oldName = 'Integration Test Blog to update';
          const newName = 'Integration Test Blog - updated';
          var blog = await addBlog(oldName);
          blog = blog.copyWith(name: newName);
          final req = ModelMutations.update(
            blog,
            where: Blog.NAME.eq('THATS_NOT_MY_NAME'),
            authorizationMode: APIAuthorizationType.userPools,
          );

          // attempt update
          final updateRes = await Amplify.API.mutate(request: req).response;
          expect(updateRes.data, isNull);
          // query again to ensure it still unchanged
          final getReq = ModelQueries.get(Blog.classType, blog.modelIdentifier);
          final res = await Amplify.API.query(request: getReq).response;
          expect(res, hasNoGraphQLErrors);
          expect(res.data?.name, oldName);
        },
      );

      testWidgets('should DELETE a blog with Model helper', (
        WidgetTester tester,
      ) async {
        const name = 'Integration Test Blog - delete';
        final blog = await addBlog(name);
        final data = await deleteBlog(blog);
        expect(data, equals(blog));

        final checkReq = ModelQueries.get(Blog.classType, blog.modelIdentifier);
        final checkRes = await Amplify.API.query(request: checkReq).response;
        expect(checkRes.data, isNull);
      });

      testWidgets(
        'should Delete a post (model with parent) with Model helper',
        (WidgetTester tester) async {
          final title = 'Lorem Ipsum Test Post: ${uuid()}';
          const rating = 0;
          final post = await addPostAndBlog(title, rating);

          final mutatedPost = await deletePost(post);
          expect(mutatedPost?.title, equals(title));
        },
      );

      testWidgets(
        'should not DELETE a blog with Model helper when where condition not met',
        (WidgetTester tester) async {
          const name = 'Integration Test Blog - failed delete';
          final blog = await addBlog(name);
          final req = ModelMutations.delete(
            blog,
            where: Blog.NAME.eq('THATS_NOT_MY_NAME'),
            authorizationMode: APIAuthorizationType.userPools,
          );
          // attempt delete
          final deleteRes = await Amplify.API.mutate(request: req).response;
          expect(deleteRes.data, isNull);
          // query again to ensure it still exists
          final getReq = ModelQueries.get(Blog.classType, blog.modelIdentifier);
          final res = await Amplify.API.query(request: getReq).response;
          expect(res, hasNoGraphQLErrors);
          expect(res.data?.name, name);
        },
      );
    });

    group('subscriptions', () {
      testWidgets(
        'should emit event when onCreate subscription made with model helper',
        (WidgetTester tester) async {
          final name = 'Integration Test Blog - subscription create ${uuid()}';
          final subscriptionRequest = ModelSubscriptions.onCreate(
            Blog.classType,
            authorizationMode: APIAuthorizationType.userPools,
          );

          final eventResponse = await establishSubscriptionAndMutate<Blog>(
            subscriptionRequest,
            () => addBlog(name),
            eventFilter: (response) => response.data?.name == name,
          );
          final blogFromEvent = eventResponse.data;

          expect(blogFromEvent?.name, equals(name));
        },
      );

      testWidgets('should subscribe with owner only auth rule', (
        WidgetTester tester,
      ) async {
        final name =
            'Integration Test OwnerOnly - subscription create ${uuid()}';
        final subscriptionRequest = ModelSubscriptions.onCreate(
          OwnerOnly.classType,
          authorizationMode: APIAuthorizationType.userPools,
        );

        final eventResponse = await establishSubscriptionAndMutate<OwnerOnly>(
          subscriptionRequest,
          () => addOwnerOnly(name),
          eventFilter: (response) => response.data?.name == name,
        );

        final modelFromEvent = eventResponse.data;

        expect(modelFromEvent?.name, equals(name));
      });
    });
  });
}
