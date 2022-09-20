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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:async/async.dart';

import '../stream_utils/throttle.dart';

typedef Query<T extends Model> = Future<List<T>> Function(
  ModelType<T> modelType, {
  QueryPredicate? where,
  QueryPagination? pagination,
  List<QuerySortBy>? sortBy,
});

typedef Observe<T extends Model> = Stream<SubscriptionEvent<T>> Function(
    ModelType<T> modelType);

/// A class for handling observeQuery operations
class ObserveQueryExecutor {
  final Stream<dynamic> dataStoreEventStream;

  ObserveQueryExecutor({
    required this.dataStoreEventStream,
  }) : _dataStoreHubEventStream = dataStoreEventStream
            .where((event) => event is DataStoreHubEvent)
            .cast<DataStoreHubEvent>()
            .asBroadcastStream() {
    _initModelSyncCache();
  }

  /// A stream of ModelSyncEvents
  final Stream<DataStoreHubEvent> _dataStoreHubEventStream;

  /// a cache of modelSyncEvents in the format {'<Model_Name>': true}
  final Map<String, _ModelSyncStatus> _modelSyncCache = {};

  /// executes an observeQuery operation
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
    QuerySnapshot<T>? querySnapshot;

    // cached subscription events that occur prior to the
    // initial query completing
    List<SubscriptionEvent<T>> subscriptionEvents = [];

    Stream<QuerySnapshot<T>> syncStatusStream = _isModelSyncedStream(modelType)
        .skipWhile((element) => querySnapshot == null)
        .where((event) => event != querySnapshot!.isSynced)
        .map<QuerySnapshot<T>>((value) {
      querySnapshot = querySnapshot!.withSyncStatus(value);
      return querySnapshot!;
    });

    Stream<QuerySnapshot<T>> observeStream = observe(modelType)
        .map<QuerySnapshot<T>?>((event) {
          // cache subscription events until the initial query is returned
          if (querySnapshot == null) {
            subscriptionEvents.add(event);
            return null;
          }

          // apply the most recent event to the cached QuerySnapshot
          var updatedQuerySnapshot = querySnapshot!.withSubscriptionEvent(
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

    Future<QuerySnapshot<T>> queryFuture = query(
      modelType,
      where: where,
      sortBy: sortBy,
    ).then((value) {
      // create & cache the intitial QuerySnapshot
      querySnapshot = QuerySnapshot(
        items: value,
        isSynced: _isModelSyncComplete(modelType),
        where: where,
        sortBy: sortBy,
      );

      // apply any cached subscription events
      for (var event in subscriptionEvents) {
        querySnapshot = querySnapshot!.withSubscriptionEvent(event: event);
      }

      // return the QuerySnapshot
      return querySnapshot!;
    });

    final queryStream = Stream.fromFuture(queryFuture);

    return StreamGroup.mergeBroadcast([
      observeStream,
      queryStream,
      syncStatusStream,
    ]).throttleByCountAndTime(
      throttleCount: throttleOptions.maxCount,
      duration: throttleOptions.maxDuration,
      throttleIf: (event) => _isModelSyncStarted(modelType),
    );
  }

  Stream<bool> _isModelSyncedStream(ModelType type) {
    return _dataStoreHubEventStream
        .map((event) => event.payload)
        .where((payload) => payload is ModelSyncedEvent)
        .cast<ModelSyncedEvent>()
        .where((event) => event.modelName == type.modelName())
        .map((event) => true);
  }

  _ModelSyncStatus _getModelSyncStatus(ModelType type) {
    _ModelSyncStatus? status = _modelSyncCache[type.modelName()];
    return status ?? _ModelSyncStatus.none;
  }

  bool _isModelSyncComplete(ModelType type) {
    return _getModelSyncStatus(type) == _ModelSyncStatus.complete;
  }

  bool _isModelSyncStarted(ModelType type) {
    return _getModelSyncStatus(type) == _ModelSyncStatus.started;
  }

  void _initModelSyncCache() {
    this
        ._dataStoreHubEventStream
        .map((event) => event.payload)
        .listen((payload) {
      if (payload is ModelSyncedEvent) {
        _modelSyncCache[payload.modelName] = _ModelSyncStatus.complete;
      } else if (payload is SyncQueriesStartedEvent) {
        payload.models.forEach((model) {
          _modelSyncCache[model] = _ModelSyncStatus.started;
        });
      }
    });
  }
}

enum _ModelSyncStatus { none, started, complete }
