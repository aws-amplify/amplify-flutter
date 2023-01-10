// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:tuple/tuple.dart';

import '../utils/setup_utils.dart';
import '../utils/test_cloud_synced_model_operation.dart';
import 'models/many_to_many/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Many-to-many', () {
    // schema
    // type Post @model {
    //   id: ID!
    //   title: String!
    //   rating: Int!
    //   tags: [Tag] @manyToMany(relationName: "PostTags")
    // }
    // type Tag @model {
    //   id: ID!
    //   label: String!
    //   posts: [Post] @manyToMany(relationName: "PostTags")
    // }
    final enableCloudSync = shouldEnableCloudSync();
    var posts = [
      Post(title: 'many to many post 1', rating: 10),
      Post(title: 'many to many post 2', rating: 5),
    ];
    var tags = [
      Tag(label: 'many to many tag 1'),
      Tag(label: 'many to maby tag 2')
    ];
    var postTags = [
      PostTags(post: posts[0], tag: tags[0]),
      PostTags(post: posts[0], tag: tags[0]),
      PostTags(post: posts[1], tag: tags[1]),
      PostTags(post: posts[1], tag: tags[1])
    ];
    late Future<List<SubscriptionEvent<Post>>> postModelEventsGetter;
    late Future<List<SubscriptionEvent<Tag>>> tagModelEventsGetter;
    late Future<List<SubscriptionEvent<PostTags>>> postTagsModelEventsGetter;

    setUpAll(() async {
      await configureDataStore(
          enableCloudSync: enableCloudSync,
          modelProvider: ModelProvider.instance);

      postModelEventsGetter = createObservedEventsGetter(
        Post.classType,
        take: posts.length,
        eventType: EventType.create,
      );
      tagModelEventsGetter = createObservedEventsGetter(
        Tag.classType,
        take: tags.length,
        eventType: EventType.create,
      );
      postTagsModelEventsGetter = createObservedEventsGetter(
        PostTags.classType,
        take: postTags.length,
        eventType: EventType.create,
      );
    });

    expectModelsNotToBeInLocalStorage([
      Tuple2(Post.classType, posts),
      Tuple2(Tag.classType, tags),
      Tuple2(PostTags.classType, postTags),
    ]);

    testWidgets('save post', (WidgetTester tester) async {
      if (enableCloudSync) {
        await testCloudSyncedModelOperation(
          rootModels: posts,
          expectedRootModelVersion: 1,
          rootModelOperator: Amplify.DataStore.save,
          rootModelEventsAssertor: modelIsNotDeletedAssertor,
        );
      } else {
        for (var post in posts) {
          await Amplify.DataStore.save(post);
        }
      }

      var queriedPosts = await Amplify.DataStore.query(Post.classType);
      expect(queriedPosts, containsAll(posts));
    });

    testWidgets('save tags', (WidgetTester tester) async {
      if (enableCloudSync) {
        await testCloudSyncedModelOperation(
          rootModels: tags,
          expectedRootModelVersion: 1,
          rootModelOperator: Amplify.DataStore.save,
          rootModelEventsAssertor: modelIsNotDeletedAssertor,
        );
      } else {
        for (var tag in tags) {
          await Amplify.DataStore.save(tag);
        }
      }
      var queriedTags = await Amplify.DataStore.query(Tag.classType);
      expect(queriedTags, containsAll(tags));
    });

    testWidgets('save postTags', (WidgetTester tester) async {
      if (enableCloudSync) {
        await testCloudSyncedModelOperation(
          rootModels: postTags,
          expectedRootModelVersion: 1,
          rootModelOperator: Amplify.DataStore.save,
          rootModelEventsAssertor: modelIsNotDeletedAssertor,
        );
      } else {
        for (var postTag in postTags) {
          await Amplify.DataStore.save(postTag);
        }
      }

      var queriedPostTags = await Amplify.DataStore.query(PostTags.classType);
      expect(queriedPostTags, containsAll(postTags));
    });

    testWidgets('observe posts', (WidgetTester tester) async {
      var events = await postModelEventsGetter;
      expectObservedEventsToMatchModels(events: events, referenceModels: posts);
    });

    testWidgets('observe tags', (WidgetTester tester) async {
      var events = await tagModelEventsGetter;
      expectObservedEventsToMatchModels(events: events, referenceModels: tags);
    });

    testWidgets('observe postTags', (WidgetTester tester) async {
      var events = await postTagsModelEventsGetter;
      expectObservedEventsToMatchModels(
          events: events, referenceModels: postTags);
    });

    testWidgets('delete post (cascade delete associated postTag)',
        (WidgetTester tester) async {
      var deletedPost = posts[0];
      var deletedPostTags = postTags.getRange(0, 2).toList();

      if (enableCloudSync) {
        await testCloudSyncedModelOperation(
          rootModels: [deletedPost],
          expectedRootModelVersion: 2,
          rootModelOperator: Amplify.DataStore.delete,
          rootModelEventsAssertor: modelIsDeletedAssertor,
          associatedModels: deletedPostTags,
          expectedAssociatedModelVersion: 2,
          associatedModelEventsAssertor: modelIsDeletedAssertor,
        );
      } else {
        await Amplify.DataStore.delete(deletedPost);
      }

      var queriedPosts = await Amplify.DataStore.query(Post.classType);
      expect(queriedPosts, isNot(contains(deletedPost)));

      var queriedPostTags = await Amplify.DataStore.query(PostTags.classType);
      expect(queriedPostTags, isNot(containsAll(deletedPostTags)));
    });

    testWidgets('delete tag (cascade delete associated postTag)',
        (WidgetTester tester) async {
      var deletedTag = tags[1];
      var deletedPostTags = postTags.getRange(2, postTags.length).toList();

      if (enableCloudSync) {
        await testCloudSyncedModelOperation(
          rootModels: [deletedTag],
          expectedRootModelVersion: 2,
          rootModelOperator: Amplify.DataStore.delete,
          rootModelEventsAssertor: modelIsDeletedAssertor,
          associatedModels: deletedPostTags,
          expectedAssociatedModelVersion: 2,
          associatedModelEventsAssertor: modelIsDeletedAssertor,
        );
      } else {
        await Amplify.DataStore.delete(deletedTag);
      }

      var queriedTags = await Amplify.DataStore.query(Tag.classType);
      expect(queriedTags, isNot(contains(deletedTag)));

      var queriedPostTags = await Amplify.DataStore.query(PostTags.classType);
      expect(queriedPostTags, isNot(containsAll(deletedPostTags)));
    });

    testWidgets('delete remaining post', (WidgetTester tester) async {
      var deletedPost = posts[1];

      if (enableCloudSync) {
        await testCloudSyncedModelOperation(
          rootModels: [deletedPost],
          expectedRootModelVersion: 2,
          rootModelOperator: Amplify.DataStore.delete,
          rootModelEventsAssertor: modelIsDeletedAssertor,
        );
      } else {
        await Amplify.DataStore.delete(deletedPost);
      }

      var queriedPosts = await Amplify.DataStore.query(Post.classType);
      expect(queriedPosts, isNot(contains(deletedPost)));
    });

    testWidgets('delete remaining tag', (WidgetTester tester) async {
      var deletedTag = tags[0];

      if (enableCloudSync) {
        await testCloudSyncedModelOperation(
          rootModels: [deletedTag],
          expectedRootModelVersion: 2,
          rootModelOperator: Amplify.DataStore.delete,
          rootModelEventsAssertor: modelIsDeletedAssertor,
        );
      } else {
        await Amplify.DataStore.delete(deletedTag);
      }

      var queriedTags = await Amplify.DataStore.query(Tag.classType);
      expect(queriedTags, isNot(contains(deletedTag)));
    });
  });
}
