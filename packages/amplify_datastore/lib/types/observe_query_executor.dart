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

import 'package:amplify_datastore/stream_utils/merge_streams.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

import '../amplify_datastore.dart';
import '../stream_utils/throttle.dart';
import 'DataStoreHubEvents/DataStoreHubEvent.dart';
import 'DataStoreHubEvents/ModelSyncedEvent.dart';

typedef Query<T extends Model> = Future<List<T>> Function(
  ModelType<T> modelType, {
  QueryPredicate? where,
  QueryPagination? pagination,
  List<QuerySortBy>? sortBy,
});

typedef Observe<T extends Model> = Stream<SubscriptionEvent<T>> Function(
    ModelType<T> modelType);

/// executes an observeQuery operation
class ObserveQueryExecutor {
  final Stream<dynamic> dataStoreEventStream;

  ObserveQueryExecutor({
    required this.dataStoreEventStream,
  }) : _modelSyncedEventStream = dataStoreEventStream
            .where((event) => event is DataStoreHubEvent)
            .cast<DataStoreHubEvent>()
            .map((event) => event.payload)
            .where((event) => event is ModelSyncedEvent)
            .cast<ModelSyncedEvent>() {
    _initModelSyncCache();
  }

  Stream<ModelSyncedEvent> _modelSyncedEventStream;

  Map<String, bool> _modelSyncCache = {};

  Stream<QuerySnapshot<T>> observeQuery<T extends Model>({
    required Query<T> query,
    required Observe<T> observe,
    required ModelType<T> modelType,
    QueryPredicate? where,
    List<QuerySortBy>? sortBy,
    ObserveQueryThrottleOptions throttleOptions =
        const ObserveQueryThrottleOptions.defaults(),
  }) {
    // cached QuerySnapshot
    late QuerySnapshot<T> querySnapshot;

    // cached subscription events that occur prior to the
    // initial query completing
    List<SubscriptionEvent<T>> subscriptionEvents = [];

    // used to track when the initial query completes
    bool hasInitialQueryCompleted = false;

    Stream<QuerySnapshot<T>> syncStatusStream = _isModelSyncedStream(modelType)
        .map<QuerySnapshot<T>?>((value) {
          if (value == querySnapshot.isSynced) {
            return null;
          }
          querySnapshot = querySnapshot.withSyncStatus(value);
          return querySnapshot;
        })
        .where((event) => event != null)
        .cast<QuerySnapshot<T>>();

    Stream<QuerySnapshot<T>> observeStream = observe(modelType)
        .map<QuerySnapshot<T>?>((event) {
          // cache subscription events until the initial query is returned
          if (!hasInitialQueryCompleted) {
            subscriptionEvents.add(event);
            return null;
          }

          // apply the most recent event to the cached QuerySnapshot
          var updatedQuerySnapshot = querySnapshot.withSubscriptionEvent(
            event: event,
          );

          // if the snapshot has not changed, return null
          if (querySnapshot == updatedQuerySnapshot) {
            return null;
          }

          // otherwise, update the cached QuerySnapshot and return it
          querySnapshot = updatedQuerySnapshot;
          return querySnapshot;
        })
        // filter out null values
        .where((event) => event != null)
        .cast<QuerySnapshot<T>>();

    final queryFuture =
        query(modelType, where: where, sortBy: sortBy).then((value) {
      bool isSynced = _isModelSynced(modelType);
      // cache the intitial QuerySnapshot
      querySnapshot = QuerySnapshot(
        items: value,
        isSynced: isSynced,
        where: where,
        sortBy: sortBy,
      );

      // apply any cached subscription events
      for (var event in subscriptionEvents) {
        querySnapshot = querySnapshot.withSubscriptionEvent(event: event);
      }

      // mark initial query as complete
      hasInitialQueryCompleted = true;

      // return the QuerySnapshot
      return querySnapshot;
    });

    final queryStream = Stream.fromFuture(queryFuture);

    return mergeStreams([
      queryStream,
      observeStream,
      syncStatusStream,
    ]).throttleByCountAndTime(
      throttleCount: throttleOptions.maxCount,
      duration: throttleOptions.maxDuration,
      until: (event) => event.isSynced,
    );
  }

  Stream<bool> _isModelSyncedStream(ModelType type) {
    return _modelSyncedEventStream
        .where((event) => event.modelName == type.modelName())
        .map((event) => _isSyncEvent(event));
  }

  bool _isModelSynced(ModelType type) {
    return _modelSyncCache[type.modelName()] ?? false;
  }

  void _initModelSyncCache() {
    _modelSyncedEventStream.listen((event) {
      _modelSyncCache[event.modelName] = _isSyncEvent(event);
    });
  }

  bool _isSyncEvent(ModelSyncedEvent event) =>
      event.isFullSync || event.isDeltaSync;
}
