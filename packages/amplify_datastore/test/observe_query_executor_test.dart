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
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_async/fake_async.dart';
import '../lib/types/observe_query_executor.dart';
import 'package:amplify_test/test_models/ModelProvider.dart';

var syncQueriesStartedEvent = DataStoreHubEvent(
  'syncQueriesStarted',
  payload: SyncQueriesStartedEvent({
    "models": "[\"Blog\"]",
  }),
);

var modelSyncEvent = DataStoreHubEvent(
  'modelSynced',
  payload: ModelSyncedEvent({
    "model": "Blog",
    "isFullSync": true,
    "isDeltaSync": false,
    "added": 3,
    "updated": 0,
    "deleted": 0,
  }),
);

void main() {
  Blog initialBlog = Blog(name: 'initial blog');
  List<Blog> syncedBlogs =
      List.generate(10, (index) => Blog(name: 'synced blog $index'));
  group('ObserveQueryExecutor', () {
    Future<List<T>> query<T extends Model>(
      ModelType<T> modelType, {
      QueryPredicate? where,
      QueryPagination? pagination,
      List<QuerySortBy>? sortBy,
    }) {
      return Future.delayed(Duration(milliseconds: 100))
          .then((value) => [initialBlog as T]);
    }

    Stream<SubscriptionEvent<T>> observe<T extends Model>(
      ModelType<T> modelType,
    ) {
      return Stream.periodic(
        Duration(milliseconds: 1000),
        (value) => SubscriptionEvent(
          eventType: EventType.create,
          item: syncedBlogs[value] as T,
          modelType: Blog.classType as ModelType<T>,
        ),
      );
    }

    late Stream<DataStoreHubEvent> eventStream;

    setUp(() {
      eventStream = Stream<DataStoreHubEvent?>.periodic(
        Duration(milliseconds: 1),
        (value) {
          if (value == 10) {
            return syncQueriesStartedEvent;
          } else if (value == 4500) {
            return modelSyncEvent;
          }
          return null;
        },
      ).where((event) => event is DataStoreHubEvent).cast<DataStoreHubEvent>();
    });

    test('should combine the data from observe, query, and modelSync', () {
      fakeAsync((async) {
        ObserveQueryExecutor executor = ObserveQueryExecutor(
          dataStoreEventStream: eventStream,
        );

        Stream<QuerySnapshot<Blog>> observeQuery = executor.observeQuery(
          query: query,
          observe: observe,
          modelType: Blog.classType,
          throttleOptions: ObserveQueryThrottleOptions.none(),
        );

        Stream<bool> observeQueryStatus =
            observeQuery.map((event) => event.isSynced);

        Stream<List<Blog>> observeQueryItems =
            observeQuery.map((event) => event.items);

        expect(
          observeQueryStatus,
          emitsInOrder([false, false, false, false, false, true, true]),
        );

        expect(
          observeQueryItems,
          emitsInOrder([
            orderedEquals([initialBlog]),
            orderedEquals([initialBlog, syncedBlogs[0]]),
            orderedEquals([initialBlog, syncedBlogs[0], syncedBlogs[1]]),
            orderedEquals(
                [initialBlog, syncedBlogs[0], syncedBlogs[1], syncedBlogs[2]]),
          ]),
        );

        async.elapse(Duration(seconds: 10));
      });
    });

    test('should throttle during sync, and then stop throttling', () {
      fakeAsync((async) {
        ObserveQueryExecutor executor = ObserveQueryExecutor(
          dataStoreEventStream: eventStream,
        );

        Stream<QuerySnapshot<Blog>> observeQuery = executor.observeQuery(
          query: query,
          observe: observe,
          modelType: Blog.classType,
        );

        Stream<List<Blog>> observeQueryItems =
            observeQuery.map((event) => event.items);

        expect(
          observeQueryItems,
          emitsInOrder([
            // initial query at 100 ms
            orderedEquals([
              initialBlog,
            ]),
            // + 2 events after 2s throttle
            orderedEquals([
              initialBlog,
              syncedBlogs[0],
              syncedBlogs[1],
            ]),
            // + 2 events after 2s throttle
            orderedEquals([
              initialBlog,
              syncedBlogs[0],
              syncedBlogs[1],
              syncedBlogs[2],
              syncedBlogs[3],
            ]),
            // sync status change at 4500 ms
            orderedEquals([
              initialBlog,
              syncedBlogs[0],
              syncedBlogs[1],
              syncedBlogs[2],
              syncedBlogs[3],
            ]),
            // + 1 event (no throttle)
            orderedEquals([
              initialBlog,
              syncedBlogs[0],
              syncedBlogs[1],
              syncedBlogs[2],
              syncedBlogs[3],
              syncedBlogs[4],
            ]),
            // + 1 event (no throttle)
            orderedEquals([
              initialBlog,
              syncedBlogs[0],
              syncedBlogs[1],
              syncedBlogs[2],
              syncedBlogs[3],
              syncedBlogs[4],
              syncedBlogs[5],
            ]),
          ]),
        );

        async.elapse(Duration(seconds: 10));
      });
    });

    test('should cache sync status', () {
      fakeAsync((async) {
        ObserveQueryExecutor executor = ObserveQueryExecutor(
          dataStoreEventStream: eventStream,
        );

        async.elapse(Duration(seconds: 10));

        Stream<QuerySnapshot<Blog>> observeQuery = executor.observeQuery(
          query: query,
          observe: observe,
          modelType: Blog.classType,
        );

        Stream<bool> observeQueryStatus =
            observeQuery.map((event) => event.isSynced);

        expect(
          observeQueryStatus,
          emitsInOrder([true]),
        );

        async.elapse(Duration(seconds: 10));
      });
    });
  });
}
