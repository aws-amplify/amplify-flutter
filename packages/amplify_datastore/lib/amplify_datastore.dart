/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_core/amplify_core.dart';

import 'amplify_datastore_stream_controller.dart';
import 'method_channel_datastore.dart';

export 'package:amplify_core/src/types/datastore/datastore_types.dart';

class AmplifyDataStore extends DataStorePluginInterface {
  /// Constructs an AmplifyDataStore plugin with mandatory [modelProvider]
  /// and optional datastore configuration properties including
  ///
  /// [syncExpressions]: list of sync expressions to filter datastore sync against
  ///
  /// [syncInterval]: datastore syncing interval (in seconds)
  ///
  /// [syncMaxRecords]: max number of records to sync
  ///
  /// [syncPageSize]: page size to sync
  AmplifyDataStore({
    required ModelProviderInterface modelProvider,
    Function(AmplifyException)? errorHandler,
    DataStoreConflictHandler? conflictHandler,
    List<DataStoreSyncExpression> syncExpressions = const [],
    int? syncInterval,
    int? syncMaxRecords,
    int? syncPageSize,
    AuthModeStrategy authModeStrategy = AuthModeStrategy.defaultStrategy,
  }) : super(
          modelProvider: modelProvider,
          errorHandler: errorHandler,
          conflictHandler: conflictHandler,
          syncExpressions: syncExpressions,
          syncInterval: syncInterval,
          syncMaxRecords: syncMaxRecords,
          syncPageSize: syncPageSize,
          authModeStrategy: authModeStrategy,
        );

  static AmplifyDataStore _instance =
      AmplifyDataStoreMethodChannel(modelProvider: modelProvider);
  static DataStoreStreamController streamWrapper = DataStoreStreamController();

  StreamController<DataStoreHubEvent> get streamController {
    return streamWrapper.datastoreStreamController;
  }

  @override
  Future<void> configureDataStore({
    ModelProviderInterface? modelProvider,
    Function(AmplifyException)? errorHandler,
    DataStoreConflictHandler? conflictHandler,
    List<DataStoreSyncExpression>? syncExpressions,
    int? syncInterval,
    int? syncMaxRecords,
    int? syncPageSize,
    AuthModeStrategy authModeStrategy = AuthModeStrategy.defaultStrategy,
  }) async {
    ModelProviderInterface provider = modelProvider ?? this.modelProvider!;
    if (provider.modelSchemas.isEmpty) {
      throw DataStoreException('No modelProvider or modelSchemas found',
          recoverySuggestion:
              'Pass in a modelProvider instance while instantiating DataStorePlugin');
    }
    streamWrapper.registerModelsForHub(provider);
    return _instance.configureDataStore(
      modelProvider: provider,
      errorHandler: errorHandler ?? this.errorHandler,
      conflictHandler: conflictHandler ?? this.conflictHandler,
      syncExpressions: this.syncExpressions,
      syncInterval: this.syncInterval,
      syncMaxRecords: this.syncMaxRecords,
      syncPageSize: this.syncPageSize,
      authModeStrategy: this.authModeStrategy,
    );
  }

  @override
  Future<void> configure({String? config}) async {
    return _instance.configure(config: config);
  }

  @override
  Future<List<T>> query<T extends Model>(ModelType<T> modelType,
      {QueryPredicate? where,
      QueryPagination? pagination,
      List<QuerySortBy>? sortBy}) async {
    return _instance.query(modelType,
        where: where, pagination: pagination, sortBy: sortBy);
  }

  @override
  Future<void> delete<T extends Model>(T model, {QueryPredicate? where}) async {
    return _instance.delete(model, where: where);
  }

  @override
  Future<void> save<T extends Model>(T model, {QueryPredicate? where}) {
    return _instance.save(model, where: where);
  }

  @override
  Stream<SubscriptionEvent<T>> observe<T extends Model>(ModelType<T> modelType,
      {QueryPredicate? where}) {
    return _instance.observe(modelType, where: where);
  }

  @override
  Future<void> clear() async {
    return _instance.clear();
  }

  @override
  Future<void> start() async {
    return _instance.start();
  }

  @override
  Future<void> stop() async {
    return _instance.stop();
  }

  @override
  Stream<QuerySnapshot<T>> observeQuery<T extends Model>(
    ModelType<T> modelType, {
    QueryPredicate? where,
    List<QuerySortBy>? sortBy,
    ObserveQueryThrottleOptions throttleOptions =
        const ObserveQueryThrottleOptions.defaults(),
  }) {
    return _instance.observeQuery(
      modelType,
      where: where,
      sortBy: sortBy,
      throttleOptions: throttleOptions,
    );
  }
}
