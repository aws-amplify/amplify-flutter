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
import 'package:amplify_api_example/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../util.dart';

void main({bool useExistingTestUser = false}) {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('GraphQL Cognito User Pools', () {
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

    group('queries', () {
      testWidgets(
          'should parse a deeply nested response if modelType and decodePath included in request',
          (WidgetTester tester) async {
        final originalTitle = 'Lorem Ipsum Test Post: ${uuid()}';
        const rating = 0;
        Post post = await addPostAndBlog(originalTitle, rating);
        final blogId = post.blog?.id;
        final inputComment =
            Comment(content: 'Lorem ipsum test comment', post: post);
        final createCommentReq = authorizeRequestForUserPools(
          ModelMutations.create(inputComment),
        );
        final createCommentRes =
            await Amplify.API.mutate(request: createCommentReq).response;
        final createdComment = createCommentRes.data;
        if (createdComment == null) {
          fail('Unable to create comment. ${createCommentRes.errors}');
        }

        const getBlog = 'getBlog';
        String graphQLDocument = '''query GetBlogPostsComments(\$id: ID!) {
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
        final nestedGetBlogReq = authorizeRequestForUserPools(
          GraphQLRequest<Blog>(
            document: graphQLDocument,
            modelType: Blog.classType,
            variables: <String, String>{'id': blogId!},
            decodePath: getBlog,
          ),
        );
        final nestedResponse =
            await Amplify.API.query(request: nestedGetBlogReq).response;
        final responseBlog = nestedResponse.data;
        final firstCommentFromResponse = responseBlog?.posts?[0].comments?[0];
        expect(nestedResponse, hasNoGraphQLErrors);
        expect(firstCommentFromResponse?.id, createdComment.id);
        // clean up the comment
        final deleteCommentReq = authorizeRequestForUserPools(
          ModelMutations.deleteById(Comment.classType, createdComment.id),
        );
        await Amplify.API.mutate(request: deleteCommentReq).response;
      });
    });

    group('mutations', () {
      testWidgets('should CREATE a blog with Model helper',
          (WidgetTester tester) async {
        String name = 'Integration Test Blog - create';
        Blog blog = Blog(name: name);

        final req = authorizeRequestForUserPools(
          ModelMutations.create(blog),
        );
        final res = await Amplify.API.mutate(request: req).response;
        expect(res, hasNoGraphQLErrors);
        Blog? data = res.data;
        if (data != null) blogCache.add(data);

        expect(data?.name, equals(blog.name));
        expect(data?.id, equals(blog.id));
      });

      testWidgets('should CREATE a post (model with parent) with Model helper',
          (WidgetTester tester) async {
        final title = 'Lorem Ipsum Test Post: ${uuid()}';
        const rating = 0;
        Post data = await addPostAndBlog(title, rating);

        expect(data.title, equals(title));
        expect(data.rating, equals(rating));
      });

      testWidgets('should UPDATE a blog with Model helper',
          (WidgetTester tester) async {
        String oldName = 'Integration Test Blog to update';
        String newName = 'Integration Test Blog - updated';
        Blog blog = await addBlog(oldName);
        blog = blog.copyWith(name: newName);

        final req = authorizeRequestForUserPools(
          ModelMutations.update(blog),
        );
        final res = await Amplify.API.mutate(request: req).response;

        expect(res, hasNoGraphQLErrors);
        expect(res.data, equals(blog));
      });

      testWidgets('should UPDATE a post (model with parent) with Model helper',
          (WidgetTester tester) async {
        final originalTitle = 'Lorem Ipsum Test Post: ${uuid()}';
        const rating = 0;
        Post originalPost = await addPostAndBlog(originalTitle, rating);

        final updatedTitle = 'Lorem Ipsum Test Post: (title updated) ${uuid()}';
        Post localUpdatedPost = originalPost.copyWith(title: updatedTitle);
        final updateReq = authorizeRequestForUserPools(
          ModelMutations.update(localUpdatedPost),
        );
        final updateRes = await Amplify.API.mutate(request: updateReq).response;
        Post? mutatedPost = updateRes.data;
        expect(updateRes, hasNoGraphQLErrors);
        expect(mutatedPost?.title, equals(updatedTitle));
      });

      testWidgets(
          'should get AppSync error when trying to CREATE a post (model with parent) without a parent on the instance',
          (WidgetTester tester) async {
        Post post =
            Post(title: 'Lorem ipsum, fail update', rating: 0, blog: null);
        final createPostReq = authorizeRequestForUserPools(
          ModelMutations.create(post),
        );
        final createPostRes =
            await Amplify.API.mutate(request: createPostReq).response;
        final createdPost = createPostRes.data;
        if (createdPost != null) {
          postCache.add(createdPost);
          fail('Successfully created a post when request should have failed.');
        }

        expect(createPostRes.data, isNull);
        expect(createPostRes.errors, hasLength(1));
      });

      testWidgets(
          'should not UPDATE a blog with Model helper when where condition not met',
          (WidgetTester tester) async {
        String oldName = 'Integration Test Blog to update';
        String newName = 'Integration Test Blog - updated';
        Blog blog = await addBlog(oldName);
        blog = blog.copyWith(name: newName);
        final req = authorizeRequestForUserPools(
          ModelMutations.update(blog, where: Blog.NAME.eq('THATS_NOT_MY_NAME')),
        );

        // attempt update
        final updateRes = await Amplify.API.mutate(request: req).response;
        expect(updateRes.data, isNull);
        // query again to ensure it still unchanged
        final getReq = ModelQueries.get(Blog.classType, blog.id);
        final res = await Amplify.API.query(request: getReq).response;
        expect(res, hasNoGraphQLErrors);
        expect(res.data?.name, oldName);
      });

      testWidgets('should DELETE a blog with Model helper',
          (WidgetTester tester) async {
        String name = 'Integration Test Blog - delete';
        Blog blog = await addBlog(name);
        Blog? data = await deleteBlog(blog.id);
        expect(data, equals(blog));

        final checkReq = ModelQueries.get(Blog.classType, blog.id);
        final checkRes = await Amplify.API.query(request: checkReq).response;
        expect(checkRes.data, isNull);
      });

      testWidgets('should Delete a post (model with parent) with Model helper',
          (WidgetTester tester) async {
        final title = 'Lorem Ipsum Test Post: ${uuid()}';
        const rating = 0;
        Post post = await addPostAndBlog(title, rating);

        Post? mutatedPost = await deletePost(post.id);
        expect(mutatedPost?.title, equals(title));
      });

      testWidgets(
          'should not DELETE a blog with Model helper when where condition not met',
          (WidgetTester tester) async {
        String name = 'Integration Test Blog - failed delete';
        Blog blog = await addBlog(name);
        final req = authorizeRequestForUserPools(
          ModelMutations.delete(blog, where: Blog.NAME.eq('THATS_NOT_MY_NAME')),
        );

        // attempt delete
        final deleteRes = await Amplify.API.mutate(request: req).response;
        expect(deleteRes.data, isNull);
        // query again to ensure it still exists
        final getReq = ModelQueries.get(Blog.classType, blog.id);
        final res = await Amplify.API.query(request: getReq).response;
        expect(res, hasNoGraphQLErrors);
        expect(res.data?.name, name);
      });
    });

    group(
      'subscriptions',
      () {
        // TODO(ragingsquirrel3): auth workaround not working for subs
        // when authType param added or headers passed to sub reqs, fix
        testWidgets(
          'should emit event when onCreate subscription made with model helper',
          (WidgetTester tester) async {},
          skip: true,
        );
      },
    );
  });
}
