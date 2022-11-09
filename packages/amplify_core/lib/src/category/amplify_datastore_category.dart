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
import 'package:meta/meta.dart';

/// Interface for DataStore category. This expose all the APIs that
/// are supported by this category's plugins. This class will accept plugins to
/// be registered and configured and then subsequent API calls will be forwarded
/// to those plugins.
class DataStoreCategory extends AmplifyCategory<DataStorePluginInterface> {
  @override
  @nonVirtual
  Category get category => Category.dataStore;

  Future<M?> queryById<
      ModelIdentifier extends Object,
      M extends Model<ModelIdentifier, M>,
      P extends PartialModel<ModelIdentifier, M>>(
    ModelType<ModelIdentifier, M, P> modelType,
    ModelIdentifier primaryKey,
  ) {
    return defaultPlugin.queryById(modelType, primaryKey);
  }

  /// Query the DataStore to find all items of the specified [modelType] that
  /// satisfy the specified query predicate [where].
  ///
  /// Returned items are paginated by [pagination] and sorted by [sortBy].
  Future<List<M>> query<
      ModelIdentifier extends Object,
      M extends Model<ModelIdentifier, M>,
      P extends PartialModel<ModelIdentifier, M>>(
    ModelType<ModelIdentifier, M, P> modelType, {
    QueryPredicate<ModelIdentifier, M>? where,
    QueryPagination? pagination,
    List<QuerySortBy>? sortBy,
  }) {
    return defaultPlugin.query(
      modelType,
      where: where,
      pagination: pagination,
      sortBy: sortBy,
    );
  }

  /// Delete [model] from the DataStore.
  Future<void> delete<ModelIdentifier extends Object,
      M extends Model<ModelIdentifier, M>>(
    M model, {
    QueryPredicate<ModelIdentifier, M>? where,
  }) {
    return defaultPlugin.delete(model, where: where);
  }

  /// Save [model] into the DataStore.
  Future<void>
      save<ModelIdentifier extends Object, M extends Model<ModelIdentifier, M>>(
    M model, {
    QueryPredicate<ModelIdentifier, M>? where,
  }) {
    return defaultPlugin.save(model, where: where);
  }

  /// Observe changes on the specified [modelType].
  Stream<SubscriptionEvent<ModelIdentifier, M>> observe<
      ModelIdentifier extends Object,
      M extends Model<ModelIdentifier, M>,
      P extends PartialModel<ModelIdentifier, M>>(
    ModelType<ModelIdentifier, M, P> modelType, {
    QueryPredicate<ModelIdentifier, M>? where,
  }) {
    return defaultPlugin.observe(modelType, where: where);
  }

  /// Stops the underlying DataStore's synchronization with a remote system, if
  /// DataStore is configured to support remote synchronization, resetting the
  /// plugin to the initialized state, and deletes all data from the local
  /// device.
  ///
  /// Any items pending synchronization in the outbound queue will be lost.
  /// Remotely synced data can be re-synced back when starting DataStore using
  /// [start]. **Local-only data will be lost permanently.**
  ///
  /// Synchronization processes will be restarted on the next interaction with
  /// the DataStore, or can be restarted manually by calling [start].
  Future<void> clear() {
    return defaultPlugin.clear();
  }

  /// Starts the DataStore's synchronization with a remote system, if DataStore
  /// is configured to support remote synchronization.
  ///
  /// This only needs to be called if you wish to start the synchronization
  /// eagerly. If you don't call start(), the synchronization will start
  /// automatically, prior to executing any other operations (query, save,
  /// delete, update).
  Future<void> start() {
    return defaultPlugin.start();
  }

  /// Stops the underlying DataStore's synchronization with a remote system, if
  /// DataStore is configured to support remote synchronization.
  ///
  /// Synchronization processes will be restarted on the next interaction with
  /// the DataStore, or can be restarted manually by calling [start].
  Future<void> stop() {
    return defaultPlugin.stop();
  }

  /// Observe the result set of a given Query.
  ///
  /// Emits an initial [QuerySnapshot] with data from the local store, as well
  /// as subsequent events with data synced over the network.
  Stream<QuerySnapshot<ModelIdentifier, M>> observeQuery<
      ModelIdentifier extends Object,
      M extends Model<ModelIdentifier, M>,
      P extends PartialModel<ModelIdentifier, M>>(
    ModelType<ModelIdentifier, M, P> modelType, {
    QueryPredicate<ModelIdentifier, M>? where,
    List<QuerySortBy>? sortBy,
    ObserveQueryThrottleOptions throttleOptions =
        const ObserveQueryThrottleOptions.defaults(),
  }) {
    return defaultPlugin.observeQuery(
      modelType,
      where: where,
      sortBy: sortBy,
      throttleOptions: throttleOptions,
    );
  }
}
