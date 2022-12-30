// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:tuple/tuple.dart';

import '../utils/setup_utils.dart';
import '../utils/test_cloud_synced_model_operation.dart';
import 'models/cpk_many_to_many/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Custom Primary Key Many-to-many', () {
    // schema
    // type CpkManyToManyPost @model {
    //   id: ID!
    //   title: String!
    //   tags: [CpkManyToManyTag] @manyToMany(relationName: "CpkPostTags")
    // }

    // type CpkManyToManyTag @model {
    //   id: ID! @primaryKey(sortKeyFields: ["label"])
    //   label: String!
    //   posts: [CpkManyToManyPost] @manyToMany(relationName: "CpkPostTags")
    // }
    final enableCloudSync = shouldEnableCloudSync();
    var posts = [
      CpkManyToManyPost(title: 'many to many post 1'),
      CpkManyToManyPost(title: 'many to many post 2'),
    ];
    var tags = [
      CpkManyToManyTag(label: 'many to many tag 1'),
      CpkManyToManyTag(label: 'many to maby tag 2')
    ];
    var postTags = [
      CpkPostTags(cpkManyToManyPost: posts[0], cpkManyToManyTag: tags[0]),
      CpkPostTags(cpkManyToManyPost: posts[0], cpkManyToManyTag: tags[0]),
      CpkPostTags(cpkManyToManyPost: posts[1], cpkManyToManyTag: tags[1]),
      CpkPostTags(cpkManyToManyPost: posts[1], cpkManyToManyTag: tags[1])
    ];
    late Future<List<SubscriptionEvent<CpkManyToManyPost>>>
        postModelEventsGetter;
    late Future<List<SubscriptionEvent<CpkManyToManyTag>>> tagModelEventsGetter;
    late Future<List<SubscriptionEvent<CpkPostTags>>> postTagsModelEventsGetter;

    setUpAll(() async {
      await configureDataStore(
          enableCloudSync: enableCloudSync,
          modelProvider: ModelProvider.instance);

      postModelEventsGetter = createObservedEventsGetter(
        CpkManyToManyPost.classType,
        take: posts.length,
        eventType: EventType.create,
      );
      tagModelEventsGetter = createObservedEventsGetter(
        CpkManyToManyTag.classType,
        take: tags.length,
        eventType: EventType.create,
      );
      postTagsModelEventsGetter = createObservedEventsGetter(
        CpkPostTags.classType,
        take: postTags.length,
        eventType: EventType.create,
      );
    });

    expectModelsNotToBeInLocalStorage([
      Tuple2(CpkManyToManyPost.classType, posts),
      Tuple2(CpkManyToManyTag.classType, tags),
      Tuple2(CpkPostTags.classType, postTags),
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

      var queriedPosts =
          await Amplify.DataStore.query(CpkManyToManyPost.classType);
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
      var queriedTags =
          await Amplify.DataStore.query(CpkManyToManyTag.classType);
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

      var queriedPostTags =
          await Amplify.DataStore.query(CpkPostTags.classType);
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

      var queriedPosts =
          await Amplify.DataStore.query(CpkManyToManyPost.classType);
      expect(queriedPosts, isNot(contains(deletedPost)));

      var queriedPostTags =
          await Amplify.DataStore.query(CpkPostTags.classType);
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

      var queriedTags =
          await Amplify.DataStore.query(CpkManyToManyTag.classType);
      expect(queriedTags, isNot(contains(deletedTag)));

      var queriedPostTags =
          await Amplify.DataStore.query(CpkPostTags.classType);
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

      var queriedPosts =
          await Amplify.DataStore.query(CpkManyToManyPost.classType);
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

      var queriedTags =
          await Amplify.DataStore.query(CpkManyToManyTag.classType);
      expect(queriedTags, isNot(contains(deletedTag)));
    });
  });
}
