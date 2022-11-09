// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';

typedef DataStoreErrorHandler = void Function(Exception);
typedef DataStoreConflictHandler = ConflictResolutionDecision Function(
  ConflictData,
);

class AmplifyDataStoreDart extends DataStorePluginInterface {
  AmplifyDataStoreDart({
    required this.modelProvider,
    this.errorHandler,
    this.conflictHandler,
    this.syncExpressions = const [],
    this.syncInterval = const Duration(days: 1),
    this.syncMaxRecords = 10000,
    this.syncPageSize = 1000,
    this.authModeStrategy = AuthModeStrategy.defaultStrategy,
  });

  final ModelProviderInterface modelProvider;
  final DataStoreErrorHandler? errorHandler;
  final DataStoreConflictHandler? conflictHandler;

  /// list of sync expressions to filter datastore sync against
  final List<DataStoreSyncExpression> syncExpressions;

  /// Datastore sync interval
  final Duration syncInterval;

  /// Datastore max number of records to sync
  final int syncMaxRecords;

  /// Datastore page size to sync
  final int syncPageSize;

  /// The strategy for authorizing an API call.
  final AuthModeStrategy authModeStrategy;

  @override
  Future<M?> queryById<
      ModelIdentifier extends Object,
      M extends Model<ModelIdentifier, M>,
      P extends PartialModel<ModelIdentifier, M>>(
    ModelType<ModelIdentifier, M, P> modelType,
    ModelIdentifier primaryKey,
  ) {
    throw UnimplementedError('queryById() has not been implemented.');
  }

  @override
  Future<List<M>> query<
      ModelIdentifier extends Object,
      M extends Model<ModelIdentifier, M>,
      P extends PartialModel<ModelIdentifier, M>>(
    ModelType<ModelIdentifier, M, P> modelType, {
    QueryPredicate<ModelIdentifier, M>? where,
    QueryPagination? pagination,
    List<QuerySortBy>? sortBy,
  }) {
    throw UnimplementedError('query() has not been implemented.');
  }

  @override
  Future<void> delete<ModelIdentifier extends Object,
      M extends Model<ModelIdentifier, M>>(
    M model, {
    QueryPredicate<ModelIdentifier, M>? where,
  }) {
    throw UnimplementedError('delete() has not been implemented.');
  }

  @override
  Future<void>
      save<ModelIdentifier extends Object, M extends Model<ModelIdentifier, M>>(
    M model, {
    QueryPredicate<ModelIdentifier, M>? where,
  }) {
    throw UnimplementedError('save() has not been implemented');
  }

  @override
  Stream<SubscriptionEvent<ModelIdentifier, M>> observe<
      ModelIdentifier extends Object,
      M extends Model<ModelIdentifier, M>,
      P extends PartialModel<ModelIdentifier, M>>(
    ModelType<ModelIdentifier, M, P> modelType, {
    QueryPredicate<ModelIdentifier, M>? where,
  }) {
    throw UnimplementedError('observe() has not been implemented.');
  }

  @override
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
    throw UnimplementedError('observeQuery() has not been implemented.');
  }

  @override
  Future<void> clear() {
    throw UnimplementedError('clear() has not been implemented.');
  }

  @override
  Future<void> start() {
    throw UnimplementedError('start() has not been implemented.');
  }

  @override
  Future<void> stop() {
    throw UnimplementedError('stop() has not been implemented.');
  }
}
