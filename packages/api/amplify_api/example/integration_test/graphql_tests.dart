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
import 'package:amplify_api_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

const _subscriptionTimeoutInterval = 10;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  // Keep track of what is created here so it can be deleted.
  List<Blog> blogCache = [];
  List<Post> postCache = [];

  // utility to query blogs and return length
  group('GraphQL', () {
    // declare utility to delete all blogs async
    Future<bool> deleteBlog(String id) async {
      String graphQLDocument = '''mutation deleteBlog(\$id: ID!) {
          deleteBlog(input: {id: \$id}) {
            id
            name
            createdAt
          }
        }''';
      final req = GraphQLRequest<String>(
          document: graphQLDocument, variables: <String, String>{'id': id});
      final response = await Amplify.API.mutate(request: req).response;
      if (response.errors.isNotEmpty) {
        fail(
            'GraphQL error while deleting a blog: ${response.errors.toString()}');
      }
      return true;
    }

    Future<bool> deletePost(String id) async {
      final req = ModelMutations.deleteById<Post>(Post.classType, id);
      await Amplify.API.mutate(request: req).response;
      return true;
    }

    Future<bool> deleteAllBlogsAndPosts() async {
      await Future.wait(blogCache.map((blog) => deleteBlog(blog.id)));
      await Future.wait(postCache.map((post) => deletePost(post.id)));

      return true;
    }

    // declare utility which creates blog with title as parameter
    Future<Blog> addBlog(String name) async {
      String graphQLDocument = '''mutation createBlog(\$name: String!) {
        createBlog(input: {name: \$name}) {
          id
          name
          createdAt
          updatedAt
        }
      }''';

      var r = Amplify.API.mutate(
          request: GraphQLRequest<String>(
              document: graphQLDocument,
              variables: <String, String>{'name': name}));

      var response = await r.response;
      Map data = jsonDecode(response.data!) as Map;
      Blog blog = Blog.fromJson((data['createBlog'] as Map).cast());
      blogCache.add(blog);
      return blog;
    }

    Future<Post> addPostAndBlogWithModelHelper(String title, int rating,
        {bool skipDelete = false}) async {
      String name = 'Integration Test Blog with a post - create';
      Blog createdBlog = await addBlog(name);

      Post post = Post(title: title, rating: rating, blog: createdBlog);
      final createPostReq = ModelMutations.create(post);
      final createPostRes =
          await Amplify.API.mutate(request: createPostReq).response;
      Post? data = createPostRes.data;
      if (data == null) {
        throw Exception(
            'Null response while creating post. Response errors: ${createPostRes.errors}');
      }
      if (!skipDelete) postCache.add(data);

      return data;
    }

    setUpAll(() async {
      if (!Amplify.isConfigured) {
        await Amplify.addPlugins(
            [AmplifyAPI(modelProvider: ModelProvider.instance)]);
        await Amplify.configure(amplifyconfig);
      }
    });

    tearDownAll(() async {
      await deleteAllBlogsAndPosts();
    });

    group('queries', () {
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
        var r = Amplify.API
            .query<String>(request: GraphQLRequest(document: graphQLDocument));
        var response = await r.response;
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

        var r = Amplify.API
            .query<String>(request: GraphQLRequest(document: graphQLDocument));
        var response = await r.response;
        Map data = jsonDecode(response.data!) as Map;
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

        var req = ModelQueries.list<Blog>(Blog.classType);
        var r = Amplify.API.query(request: req);

        var res = await r.response;
        var data = res.data;

        final blogs = [blog1, blog2, blog3];

        expect(data?.items, containsAll(blogs));
      });

      testWidgets(
          'get requestForNextResult should produce next page of results from first response',
          (WidgetTester tester) async {
        const limit = 1;
        var firstReq = ModelQueries.list<Blog>(Blog.classType, limit: limit);
        var firstRes = await Amplify.API.query(request: firstReq).response;
        var firstData = firstRes.data;
        expect(firstData?.items.length, limit);
        expect(firstData?.hasNextResult, true);
        var secondReq = firstData?.requestForNextResult;
        var secondRes = await Amplify.API.query(request: secondReq!).response;
        var secondData = secondRes.data;
        expect(secondData?.items.length, limit);
        final firstId = firstData?.items[0]?.id;
        final secondId = secondData?.items[0]?.id;
        expect(firstId?.isNotEmpty, isTrue);
        expect(secondId?.isNotEmpty, isTrue);
        expect(firstId, isNot(secondId));
      });

      testWidgets('should LIST blogs with Model helper with query predicate',
          (WidgetTester tester) async {
        String uuid = UUID.getUUID();
        String blogName = 'Integration Test Blog $uuid';
        Blog blog = await addBlog(blogName);

        final req = ModelQueries.list<Blog>(Blog.classType,
            where: Blog.NAME.eq(blogName) & Blog.ID.eq(blog.id));
        final res = await Amplify.API.query(request: req).response;
        final data = res.data;
        final blogs = [blog];

        expect(data?.items.length, 1);
        expect(data?.items, containsAll(blogs));
      });

      testWidgets(
          'should LIST posts with Model and include parents in response',
          (WidgetTester tester) async {
        final title = 'Lorem Ipsum Test Post: ${UUID.getUUID()}';
        const rating = 0;
        final createdPost = await addPostAndBlogWithModelHelper(title, rating);

        final req =
            ModelQueries.list(Post.classType, where: Post.TITLE.eq(title));
        final res = await Amplify.API.query(request: req).response;
        final postFromResponse = res.data?.items[0];

        expect(postFromResponse?.blog?.id, isNotNull);
        expect(postFromResponse?.blog?.id, createdPost.blog?.id);
      });

      testWidgets('should LIST posts by parent ID',
          (WidgetTester tester) async {
        final title = 'Lorem Ipsum Test Post: ${UUID.getUUID()}';
        const rating = 0;
        final createdPost = await addPostAndBlogWithModelHelper(title, rating);
        final blogId = createdPost.blog?.id;

        final req =
            ModelQueries.list(Post.classType, where: Post.BLOG.eq(blogId));
        final res = await Amplify.API.query(request: req).response;
        final postFromResponse = res.data?.items[0];

        expect(postFromResponse?.blog?.id, isNotNull);
        expect(postFromResponse?.blog?.id, createdPost.blog?.id);
        expect(postFromResponse?.title, title);
      });

      testWidgets(
          'should parse a deeply nested response if modelType and decodePath included in request',
          (WidgetTester tester) async {
        final originalTitle = 'Lorem Ipsum Test Post: ${UUID.getUUID()}';
        const rating = 0;
        Post post = await addPostAndBlogWithModelHelper(originalTitle, rating);
        final blogId = post.blog?.id;
        final inputComment =
            Comment(content: 'Lorem ipsum test comment', post: post);
        final createCommentReq = ModelMutations.create(inputComment);
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
        final nestedGetBlogReq = GraphQLRequest<Blog>(
            document: graphQLDocument,
            modelType: Blog.classType,
            variables: <String, String>{'id': blogId!},
            decodePath: getBlog);
        final nestedResponse =
            await Amplify.API.query(request: nestedGetBlogReq).response;
        final responseBlog = nestedResponse.data;
        final firstCommentFromResponse = responseBlog?.posts?[0].comments?[0];
        expect(firstCommentFromResponse?.id, createdComment.id);
        // clean up the comment
        final deleteCommentReq =
            ModelMutations.deleteById(Comment.classType, createdComment.id);
        await Amplify.API.mutate(request: deleteCommentReq).response;
      });

      testWidgets('should decode a custom list request',
          (WidgetTester tester) async {
        final name = 'Lorem Ipsum Test Blog: ${UUID.getUUID()}';
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
            decodePath: listBlogs);
        final response = await Amplify.API.query(request: request).response;
        expect(response.data?.items.first, isA<Blog>());
      });
    });

    group('mutations', () {
      testWidgets('should CREATE a blog with Model helper',
          (WidgetTester tester) async {
        String name = 'Integration Test Blog - create';
        Blog blog = Blog(name: name);

        final req = ModelMutations.create(blog);
        final res = await Amplify.API.mutate(request: req).response;
        Blog? data = res.data;
        if (data != null) blogCache.add(data);

        expect(data?.name, equals(blog.name));
        expect(data?.id, equals(blog.id));
      });

      testWidgets('should CREATE a blog with Model helper and custom type',
          (WidgetTester tester) async {
        String name = 'Integration Test Blog - create, custom type';
        String bucketName = 'Good bucket';
        Blog blog = Blog(
            name: name,
            file:
                S3Object(bucket: bucketName, region: 'us-west-2', key: 'foo'));

        final req = ModelMutations.create(blog);
        final res = await Amplify.API.mutate(request: req).response;
        Blog? data = res.data;
        if (data != null) blogCache.add(data);

        expect(data?.file?.bucket, equals(bucketName));
      });

      testWidgets(
          'should CREATE a blog with Model helper and nested custom type',
          (WidgetTester tester) async {
        String name = 'Integration Test Blog - create, nested custom type';
        String metaName = 'alpha';
        Blog blog = Blog(
            name: name,
            file: S3Object(
                bucket: 'nested bucket',
                region: 'us-west-2',
                key: 'foo',
                meta: FileMeta(name: metaName)));

        final req = ModelMutations.create(blog);
        final res = await Amplify.API.mutate(request: req).response;
        Blog? data = res.data;
        if (data != null) blogCache.add(data);

        expect(data?.file?.meta?.name, equals(metaName));
      });

      testWidgets('should CREATE a blog with Model helper and custom type list',
          (WidgetTester tester) async {
        String name = 'Integration Test Blog - create';
        String bucketName = 'Good bucket';
        Blog blog = Blog(name: name, files: [
          S3Object(bucket: bucketName, region: 'us-west-2', key: 'foo')
        ]);

        final req = ModelMutations.create(blog);
        final res = await Amplify.API.mutate(request: req).response;
        Blog? data = res.data;
        if (data != null) blogCache.add(data);

        expect(data?.files?[0].bucket, equals(bucketName));
      });

      testWidgets('should CREATE a post (model with parent) with Model helper',
          (WidgetTester tester) async {
        final title = 'Lorem Ipsum Test Post: ${UUID.getUUID()}';
        const rating = 0;
        Post data = await addPostAndBlogWithModelHelper(title, rating);

        expect(data.title, equals(title));
        expect(data.rating, equals(rating));
      });

      testWidgets('should UPDATE a blog with Model helper',
          (WidgetTester tester) async {
        String oldName = 'Integration Test Blog to update';
        String newName = 'Integration Test Blog - updated';
        Blog blog = await addBlog(oldName);
        blog = blog.copyWith(name: newName);

        final req = ModelMutations.update(blog);
        final res = await Amplify.API.mutate(request: req).response;

        expect(res.data, equals(blog));
      });

      testWidgets('should UPDATE a post (model with parent) with Model helper',
          (WidgetTester tester) async {
        final originalTitle = 'Lorem Ipsum Test Post: ${UUID.getUUID()}';
        const rating = 0;
        Post originalPost =
            await addPostAndBlogWithModelHelper(originalTitle, rating);

        final updatedTitle =
            'Lorem Ipsum Test Post: (title updated) ${UUID.getUUID()}';
        Post localUpdatedPost = originalPost.copyWith(title: updatedTitle);
        final updateReq = ModelMutations.update(localUpdatedPost);
        final updateRes = await Amplify.API.mutate(request: updateReq).response;
        Post? mutatedPost = updateRes.data;
        expect(mutatedPost?.title, equals(updatedTitle));
      });

      testWidgets(
          'should get AppSync error when trying to CREATE a post (model with parent) without a parent on the instance',
          (WidgetTester tester) async {
        Post post =
            Post(title: 'Lorem ipsum, fail update', rating: 0, blog: null);
        final createPostReq = ModelMutations.create(post);
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
        final req = ModelMutations.update(blog,
            where: Blog.NAME.eq('THATS_NOT_MY_NAME'));

        // attempt update
        final updateRes = await Amplify.API.mutate(request: req).response;
        expect(updateRes.data, isNull);
        // query again to ensure it still unchanged
        final getReq = ModelQueries.get(Blog.classType, blog.id);
        final res = await Amplify.API.query(request: getReq).response;
        expect(res.data?.name, oldName);
      });

      testWidgets('should DELETE a blog with Model helper',
          (WidgetTester tester) async {
        String name = 'Integration Test Blog - delete';
        Blog blog = await addBlog(name);

        final deleteReq = ModelMutations.delete(blog);
        final deleteRes = await Amplify.API.mutate(request: deleteReq).response;
        Blog data = deleteRes.data!;
        expect(data, equals(blog));

        final checkReq = ModelQueries.get(Blog.classType, blog.id);
        final checkRes = await Amplify.API.query(request: checkReq).response;
        expect(checkRes.data, isNull);
      });

      testWidgets('should Delete a post (model with parent) with Model helper',
          (WidgetTester tester) async {
        final title = 'Lorem Ipsum Test Post: ${UUID.getUUID()}';
        const rating = 0;
        Post post = await addPostAndBlogWithModelHelper(title, rating,
            skipDelete: true);

        final req = ModelMutations.deleteById(Post.classType, post.id);
        final res = await Amplify.API.mutate(request: req).response;
        Post? mutatedPost = res.data;
        expect(mutatedPost?.title, equals(title));
      });

      testWidgets(
          'should not DELETE a blog with Model helper when where condition not met',
          (WidgetTester tester) async {
        String name = 'Integration Test Blog - failed delete';
        Blog blog = await addBlog(name);
        final req = ModelMutations.delete(blog,
            where: Blog.NAME.eq('THATS_NOT_MY_NAME'));

        // attempt delete
        final deleteRes = await Amplify.API.mutate(request: req).response;
        expect(deleteRes.data, isNull);
        // query again to ensure it still exists
        final getReq = ModelQueries.get(Blog.classType, blog.id);
        final res = await Amplify.API.query(request: getReq).response;
        expect(res.data?.name, name);
      });
    });

    group('subscriptions', () {
      // Some local helper methods to help with establishing subscriptions and such.

      // Wait for subscription established for given request.
      Future<StreamSubscription<GraphQLResponse<T>>>
          _getEstablishedSubscriptionOperation<T>(
              GraphQLRequest<T> subscriptionRequest,
              void Function(GraphQLResponse<T>) onData) async {
        Completer<void> establishedCompleter = Completer();
        final stream =
            Amplify.API.subscribe<T>(subscriptionRequest, onEstablished: () {
          establishedCompleter.complete();
        });
        final subscription = stream.listen(
          onData,
          onError: (Object e) => fail('Error in subscription stream: $e'),
        );

        await establishedCompleter.future
            .timeout(const Duration(seconds: _subscriptionTimeoutInterval));
        return subscription;
      }

      // Establish subscription for request, do the mutationFunction, then wait
      // for the stream event, cancel the operation, return response from event.
      Future<GraphQLResponse<T?>> _establishSubscriptionAndMutate<T>(
          GraphQLRequest<T> subscriptionRequest,
          Future<void> Function() mutationFunction) async {
        Completer<GraphQLResponse<T?>> dataCompleter = Completer();
        // With stream established, exec callback with stream events.
        final subscription = await _getEstablishedSubscriptionOperation<T>(
            subscriptionRequest, (event) {
          if (event.errors.isNotEmpty) {
            fail('subscription errors: ${event.errors}');
          }
          dataCompleter.complete(event);
        });
        await mutationFunction();
        final response = await dataCompleter.future
            .timeout((const Duration(seconds: _subscriptionTimeoutInterval)));

        await subscription.cancel();
        return response;
      }

      testWidgets(
          'should emit event when onCreate subscription made with model helper',
          (WidgetTester tester) async {
        String name =
            'Integration Test Blog - subscription create ${UUID.getUUID()}';
        final subscriptionRequest = ModelSubscriptions.onCreate(Blog.classType);

        final eventResponse = await _establishSubscriptionAndMutate(
            subscriptionRequest, () => addBlog(name));
        Blog? blogFromEvent = eventResponse.data;

        expect(blogFromEvent?.name, equals(name));
      });

      testWidgets(
          'should emit event when onUpdate subscription made with model helper',
          (WidgetTester tester) async {
        const originalName = 'Integration Test Blog - subscription update';
        final updatedName =
            'Integration Test Blog - subscription update, name now ${UUID.getUUID()}';
        Blog blogToUpdate = await addBlog(originalName);

        final subscriptionRequest = ModelSubscriptions.onUpdate(Blog.classType);
        final eventResponse =
            await _establishSubscriptionAndMutate(subscriptionRequest, () {
          blogToUpdate = blogToUpdate.copyWith(name: updatedName);
          final updateReq = ModelMutations.update(blogToUpdate);
          return Amplify.API.mutate(request: updateReq).response;
        });
        Blog? blogFromEvent = eventResponse.data;

        expect(blogFromEvent?.name, equals(updatedName));
      });

      testWidgets(
          'should emit event when onDelete subscription made with model helper',
          (WidgetTester tester) async {
        const name = 'Integration Test Blog - subscription delete';
        Blog blogToDelete = await addBlog(name);

        final subscriptionRequest = ModelSubscriptions.onDelete(Blog.classType);
        final eventResponse =
            await _establishSubscriptionAndMutate(subscriptionRequest, () {
          final deleteReq =
              ModelMutations.deleteById(Blog.classType, blogToDelete.id);
          return Amplify.API.mutate(request: deleteReq).response;
        });
        Blog? blogFromEvent = eventResponse.data;

        expect(blogFromEvent?.name, equals(name));
      });

      testWidgets('should cancel subscription', (WidgetTester tester) async {
        const name = 'Integration Test Blog - subscription to cancel';
        Blog blogToDelete = await addBlog(name);

        final subReq = ModelSubscriptions.onDelete(Blog.classType);
        final subscription =
            await _getEstablishedSubscriptionOperation<Blog>(subReq, (_) {
          fail('Subscription event triggered. Should be canceled.');
        });
        await subscription.cancel();

        // delete the blog, wait for update
        final deleteReq =
            ModelMutations.deleteById(Blog.classType, blogToDelete.id);
        await Amplify.API.mutate(request: deleteReq).response;
        await Future<dynamic>.delayed(const Duration(seconds: 5));
      });

      testWidgets(
          'should emit event when onCreate subscription made with model helper for post (model with parent).',
          (WidgetTester tester) async {
        String title =
            'Integration Test post - subscription create ${UUID.getUUID()}';
        final subscriptionRequest = ModelSubscriptions.onCreate(Post.classType);

        final eventResponse = await _establishSubscriptionAndMutate(
            subscriptionRequest, () => addPostAndBlogWithModelHelper(title, 0));
        Post? postFromEvent = eventResponse.data;

        expect(postFromEvent?.title, equals(title));
      });
    });
  });
}
