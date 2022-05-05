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

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_test/flutter_test.dart';

import 'testData/ModelProvider.dart';

void main() {
  group('QuerySnapshot', () {
    TemporalDateTime _temporalDateTime =
        TemporalDateTime.fromString("2021-11-09T18:53:12.183540Z");
    group('withSubscriptionEvent()', () {
      Blog parent = Blog(
        name: 'parent',
      );
      group('with no query predicate or sort order', () {
        late List<Blog> blogs;
        late QuerySnapshot<Blog> snapshot;
        setUp(() {
          blogs = List.generate(5, (index) => Blog(name: 'blog $index'));
          snapshot = QuerySnapshot(
            items: blogs,
            isSynced: false,
          );
        });

        group('create event', () {
          test('returns a QuerySnapshot with one new item', () async {
            Blog newBlog = Blog(name: 'new blog');

            SubscriptionEvent<Blog> subscriptionEvent = SubscriptionEvent(
              item: newBlog,
              modelType: Blog.classType,
              eventType: EventType.create,
            );

            QuerySnapshot<Blog> updatedSnapshot =
                snapshot.withSubscriptionEvent(
              event: subscriptionEvent,
            );

            expect(updatedSnapshot.items.length, snapshot.items.length + 1);
            expect(updatedSnapshot.items.last, newBlog);
          });
        });

        group('update event', () {
          test(
              'returns a QuerySnapshot with one updated item if event.item is in snapshot.items',
              () async {
            Blog updatedBlog = blogs[2].copyWith(name: 'updated blog');

            SubscriptionEvent<Blog> subscriptionEvent = SubscriptionEvent(
              item: updatedBlog,
              modelType: Blog.classType,
              eventType: EventType.update,
            );

            QuerySnapshot<Blog> updatedSnapshot =
                snapshot.withSubscriptionEvent(
              event: subscriptionEvent,
            );

            expect(updatedSnapshot.items.length, snapshot.items.length);
            expect(updatedSnapshot.items[2], updatedBlog);
          });

          test(
              'returns a QuerySnapshot with one new if event.item is not in snapshot.items',
              () async {
            Blog updatedBlog = Blog(name: 'updated blog');

            SubscriptionEvent<Blog> subscriptionEvent = SubscriptionEvent(
              item: updatedBlog,
              modelType: Blog.classType,
              eventType: EventType.update,
            );

            QuerySnapshot<Blog> updatedSnapshot =
                snapshot.withSubscriptionEvent(
              event: subscriptionEvent,
            );

            expect(updatedSnapshot.items.length, snapshot.items.length + 1);
            expect(updatedSnapshot.items.last, updatedBlog);
          });
        });

        group('delete event', () {
          test(
              'returns a QuerySnapshot with one item removed if event.item is in snapshot.items',
              () async {
            Blog deletedBlog = snapshot.items[2];

            SubscriptionEvent<Blog> subscriptionEvent = SubscriptionEvent(
              item: deletedBlog,
              modelType: Blog.classType,
              eventType: EventType.delete,
            );

            QuerySnapshot<Blog> updatedSnapshot =
                snapshot.withSubscriptionEvent(
              event: subscriptionEvent,
            );

            expect(updatedSnapshot.items.length, snapshot.items.length - 1);
            expect(updatedSnapshot.items.contains(deletedBlog), isFalse);
          });

          test(
              'returns the original snapshot if event.item is not in snapshot.items',
              () async {
            Blog deletedBlog = Blog(name: 'other blog');

            SubscriptionEvent<Blog> subscriptionEvent = SubscriptionEvent(
              item: deletedBlog,
              modelType: Blog.classType,
              eventType: EventType.delete,
            );

            QuerySnapshot<Blog> updatedSnapshot =
                snapshot.withSubscriptionEvent(
              event: subscriptionEvent,
            );

            expect(updatedSnapshot.items.length, snapshot.items.length);
            expect(updatedSnapshot, snapshot);
          });
        });
      });

      group('with a query predicate', () {
        late List<Blog> blogs;
        late QuerySnapshot<Blog> snapshot;
        setUp(() {
          blogs = List.generate(5, (index) => Blog(name: 'blog $index'));
          snapshot = QuerySnapshot(
            items: blogs,
            isSynced: false,
            where: Blog.NAME.contains('blog'),
          );
        });

        group('create event', () {
          test(
              'returns a QuerySnapshot with one new item if event.item matches the predicate',
              () async {
            Blog newBlog = Blog(name: 'new blog');

            SubscriptionEvent<Blog> subscriptionEvent = SubscriptionEvent(
              item: newBlog,
              modelType: Blog.classType,
              eventType: EventType.create,
            );

            QuerySnapshot<Blog> updatedSnapshot =
                snapshot.withSubscriptionEvent(
              event: subscriptionEvent,
            );

            expect(updatedSnapshot.items.length, snapshot.items.length + 1);
            expect(updatedSnapshot.items.last, newBlog);
          });

          test(
              'returns the original QuerySnapshot for if event.item does not match the predicate',
              () async {
            Blog newBlog = Blog(name: 'other');

            SubscriptionEvent<Blog> subscriptionEvent = SubscriptionEvent(
              item: newBlog,
              modelType: Blog.classType,
              eventType: EventType.create,
            );

            QuerySnapshot<Blog> updatedSnapshot =
                snapshot.withSubscriptionEvent(
              event: subscriptionEvent,
            );

            expect(updatedSnapshot.items.length, snapshot.items.length);
            expect(updatedSnapshot, snapshot);
          });
        });

        group('update event', () {
          test(
              'returns a QuerySnapshot with one updated item if event.item matches the predicate and an item with event.item.id was is found in snapshot.items',
              () async {
            Blog updatedBlog = blogs[2].copyWith(name: 'updated blog');

            SubscriptionEvent<Blog> subscriptionEvent = SubscriptionEvent(
              item: updatedBlog,
              modelType: Blog.classType,
              eventType: EventType.update,
            );

            QuerySnapshot<Blog> updatedSnapshot =
                snapshot.withSubscriptionEvent(
              event: subscriptionEvent,
            );

            expect(updatedSnapshot.items.length, snapshot.items.length);
            expect(updatedSnapshot.items[2], updatedBlog);
          });

          test(
              'returns a QuerySnapshot with one item removed if event.item does NOT match the predicate, but an item with event.item.id was is found in snapshot.items',
              () async {
            Blog updatedBlog = blogs[2].copyWith(name: 'updated title');

            SubscriptionEvent<Blog> subscriptionEvent = SubscriptionEvent(
              item: updatedBlog,
              modelType: Blog.classType,
              eventType: EventType.update,
            );

            QuerySnapshot<Blog> updatedSnapshot =
                snapshot.withSubscriptionEvent(
              event: subscriptionEvent,
            );

            expect(updatedSnapshot.items.length, snapshot.items.length - 1);
            expect(updatedSnapshot.items.contains(updatedBlog), isFalse);
          });

          test(
              'returns a QuerySnapshot with one item added if event.item matches the predicate, but an item with event.item.id was NOT is found in snapshot.items',
              () async {
            Blog updatedBlog = Blog(name: 'blog 6');

            SubscriptionEvent<Blog> subscriptionEvent = SubscriptionEvent(
              item: updatedBlog,
              modelType: Blog.classType,
              eventType: EventType.update,
            );

            QuerySnapshot<Blog> updatedSnapshot =
                snapshot.withSubscriptionEvent(
              event: subscriptionEvent,
            );

            expect(updatedSnapshot.items.length, snapshot.items.length + 1);
            // TODO: Should updatedBlog be at a specific index?
            expect(updatedSnapshot.items.contains(updatedBlog), isTrue);
          });

          test(
              'returns the original QuerySnapshot for if event.item does NOT match the predicate and an item with event.item.id was NOT is found in snapshot.items',
              () async {
            Blog updatedBlog = Blog(name: 'other');

            SubscriptionEvent<Blog> subscriptionEvent = SubscriptionEvent(
              item: updatedBlog,
              modelType: Blog.classType,
              eventType: EventType.update,
            );

            QuerySnapshot<Blog> updatedSnapshot =
                snapshot.withSubscriptionEvent(
              event: subscriptionEvent,
            );

            expect(updatedSnapshot.items.length, snapshot.items.length);
            expect(updatedSnapshot, snapshot);
          });
        });

        group('delete event', () {
          test(
              'returns a QuerySnapshot with one item removed if event.item is found in snapshot.items',
              () async {
            Blog deletedBlog = snapshot.items[2];

            SubscriptionEvent<Blog> subscriptionEvent = SubscriptionEvent(
              item: deletedBlog,
              modelType: Blog.classType,
              eventType: EventType.delete,
            );

            QuerySnapshot<Blog> updatedSnapshot =
                snapshot.withSubscriptionEvent(
              event: subscriptionEvent,
            );

            expect(updatedSnapshot.items.length, snapshot.items.length - 1);
            expect(updatedSnapshot.items.contains(deletedBlog), isFalse);
          });

          test(
              'returns the original snapshot if event.item is NOT found in snapshot.items',
              () async {
            Blog deletedBlog = Blog(name: 'other blog');

            SubscriptionEvent<Blog> subscriptionEvent = SubscriptionEvent(
              item: deletedBlog,
              modelType: Blog.classType,
              eventType: EventType.delete,
            );

            QuerySnapshot<Blog> updatedSnapshot =
                snapshot.withSubscriptionEvent(
              event: subscriptionEvent,
            );

            expect(updatedSnapshot.items.length, snapshot.items.length);
            expect(updatedSnapshot, snapshot);
          });
        });
      });
      group('with a sort order', () {
        late List<Post> posts;
        late QuerySnapshot<Post> snapshot;
        setUp(() {
          posts = List.generate(
            5,
            (index) => Post(
              title: 'post $index',
              blogID: parent.id,
              rating: index * 10,
              created: _temporalDateTime,
            ),
          );
          snapshot = QuerySnapshot(
            items: posts,
            isSynced: false,
            sortBy: [Post.RATING.ascending()],
          );
        });

        group('create event', () {
          test('returns a QuerySnapshot with one new item in the correct order',
              () async {
            Post newPost = Post(
              title: 'new post',
              blogID: parent.id,
              rating: 25,
              created: _temporalDateTime,
            );

            SubscriptionEvent<Post> subscriptionEvent = SubscriptionEvent(
              item: newPost,
              modelType: Post.classType,
              eventType: EventType.create,
            );

            QuerySnapshot<Post> updatedSnapshot =
                snapshot.withSubscriptionEvent(
              event: subscriptionEvent,
            );

            var expectedItems = [
              ...snapshot.items,
              newPost,
            ]..sort((a, b) => a.rating.compareTo(b.rating));

            expect(updatedSnapshot.items.length, snapshot.items.length + 1);
            expect(updatedSnapshot.items, orderedEquals(expectedItems));
          });
        });

        group('update event', () {
          test(
              'returns a QuerySnapshot with one updated item in the correct order if event.item is in snapshot.items',
              () async {
            Post updatedPost = posts[2].copyWith(
              title: 'updated blog',
              rating: 35,
            );

            SubscriptionEvent<Post> subscriptionEvent = SubscriptionEvent(
              item: updatedPost,
              modelType: Post.classType,
              eventType: EventType.update,
            );

            QuerySnapshot<Post> updatedSnapshot =
                snapshot.withSubscriptionEvent(
              event: subscriptionEvent,
            );

            var expectedItems = [
              ...snapshot.items
                ..removeWhere((item) => item.id == updatedPost.id),
              updatedPost,
            ]..sort((a, b) => a.rating.compareTo(b.rating));

            expect(updatedSnapshot.items.length, snapshot.items.length);
            expect(updatedSnapshot.items, orderedEquals(expectedItems));
          });

          test(
              'returns a QuerySnapshot with one new item in the correct order if event.item is not in snapshot.items',
              () async {
            Post updatedPost = Post(
              title: 'new post',
              blogID: parent.id,
              rating: 25,
              created: _temporalDateTime,
            );

            SubscriptionEvent<Post> subscriptionEvent = SubscriptionEvent(
              item: updatedPost,
              modelType: Post.classType,
              eventType: EventType.update,
            );

            QuerySnapshot<Post> updatedSnapshot =
                snapshot.withSubscriptionEvent(
              event: subscriptionEvent,
            );

            var expectedItems = [
              ...snapshot.items,
              updatedPost,
            ]..sort((a, b) => a.rating.compareTo(b.rating));

            expect(updatedSnapshot.items.length, snapshot.items.length + 1);
            expect(updatedSnapshot.items, orderedEquals(expectedItems));
          });
        });
      });

      group('with multiple sort orders', () {
        late List<Post> posts;
        late QuerySnapshot<Post> snapshot;
        setUp(() {
          posts = List.generate(
            2,
            (index) => Post(
              title: 'post $index',
              blogID: parent.id,
              rating: index * 10,
              created: _temporalDateTime,
            ),
          );
          snapshot = QuerySnapshot(
            items: posts,
            isSynced: false,
            sortBy: [Post.RATING.ascending(), Post.TITLE.ascending()],
          );
        });

        group('create event', () {
          test('returns a QuerySnapshot with new items in the correct order',
              () async {
            Post newPost1 = Post(
              title: 'new post a',
              blogID: parent.id,
              rating: 25,
              created: _temporalDateTime,
            );

            Post newPost2 = Post(
              title: 'new post a',
              blogID: parent.id,
              rating: 40,
              created: _temporalDateTime,
            );

            Post newPost3 = Post(
              title: 'new post b',
              blogID: parent.id,
              rating: 25,
              created: _temporalDateTime,
            );

            Post newPost4 = Post(
              title: 'new post b',
              blogID: parent.id,
              rating: 40,
              created: _temporalDateTime,
            );

            SubscriptionEvent<Post> subscriptionEvent1 = SubscriptionEvent(
              item: newPost1,
              modelType: Post.classType,
              eventType: EventType.create,
            );

            SubscriptionEvent<Post> subscriptionEvent2 = SubscriptionEvent(
              item: newPost2,
              modelType: Post.classType,
              eventType: EventType.create,
            );

            SubscriptionEvent<Post> subscriptionEvent3 = SubscriptionEvent(
              item: newPost3,
              modelType: Post.classType,
              eventType: EventType.create,
            );

            SubscriptionEvent<Post> subscriptionEvent4 = SubscriptionEvent(
              item: newPost4,
              modelType: Post.classType,
              eventType: EventType.create,
            );

            QuerySnapshot<Post> updatedSnapshot =
                snapshot.withSubscriptionEvent(
              event: subscriptionEvent1,
            );

            updatedSnapshot = updatedSnapshot.withSubscriptionEvent(
              event: subscriptionEvent2,
            );

            updatedSnapshot = updatedSnapshot.withSubscriptionEvent(
              event: subscriptionEvent3,
            );

            updatedSnapshot = updatedSnapshot.withSubscriptionEvent(
              event: subscriptionEvent4,
            );

            var expectedItems = [
              ...snapshot.items,
              newPost1,
              newPost3,
              newPost2,
              newPost4,
            ];

            expect(updatedSnapshot.items.length, snapshot.items.length + 4);
            expect(updatedSnapshot.items, orderedEquals(expectedItems));
          });
        });
      });
    });

    group('withSyncStatus()', () {
      test('should return a QuerySnapshot with the updated status', () {
        var blogs = List.generate(5, (index) => Blog(name: 'blog $index'));
        var snapshot = QuerySnapshot(
          items: blogs,
          isSynced: false,
        );
        var newSnapshot = snapshot.withSyncStatus(true);
        expect(newSnapshot.isSynced, true);
      });
    });
  });
}
