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

library amplify_datastore_plugin_interface;

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

import 'src/types/conflict_handler/datastore_conflict_handler.dart';
import 'src/types/models/observe_query_throttle_options.dart';
import 'src/types/models/query_snapshot.dart';
import 'src/types/models/subscription_event.dart';
import 'src/types/sync/DataStoreSyncExpression.dart';

export 'src/publicTypes.dart';

abstract class DataStorePluginInterface extends AmplifyPluginInterface {
  /// modelProvider
  ModelProviderInterface? modelProvider;

  // errorHandler
  Function(AmplifyException)? errorHandler;

  // conflictHandler
  DataStoreConflictHandler? conflictHandler;

  /// list of sync expressions to filter datastore sync against
  List<DataStoreSyncExpression>? syncExpressions;

  /// Datastore sync interval (in seconds)
  int? syncInterval;

  /// Datastore max number of records to sync
  int? syncMaxRecords;

  /// Datastore page size to sync
  int? syncPageSize;

  /// Constructs an AmplifyPlatform.
  DataStorePluginInterface({
    required Object token,
    required this.modelProvider,
    this.errorHandler,
    this.conflictHandler,
    this.syncExpressions,
    this.syncInterval,
    this.syncMaxRecords,
    this.syncPageSize,
  }) : super(token: token);

  /// Internal use constructor
  @protected
  DataStorePluginInterface.tokenOnly({required Object token})
      : super(token: token);

  StreamController<HubEvent> get streamController {
    throw UnimplementedError(
        'streamController getter has not been implemented.');
  }

  /// Configure AmplifyDataStore plugin with mandatory [modelProvider]
  /// and optional DataStore configuration properties including
  ///
  /// [errorHandler]: Custom error handler function that may receive an [AmplifyException] object when DataStore encounters an unhandled error during its background operations
  ///
  /// [syncInterval]: DataStore syncing interval (in seconds)
  ///
  /// [syncMaxRecords]: Max number of records to sync
  ///
  /// [syncPageSize]: Page size to sync
  Future<void> configureDataStore(
      {required ModelProviderInterface modelProvider,
      Function(AmplifyException)? errorHandler,
      DataStoreConflictHandler? conflictHandler,
      int? syncInterval,
      int? syncMaxRecords,
      int? syncPageSize}) {
    throw UnimplementedError('configureDataStore() has not been implemented.');
  }

  Future<void> configure({String? configuration}) {
    throw UnimplementedError('configure() has not been implemented.');
  }

  Future<List<T>> query<T extends Model>(ModelType<T> modelType,
      {QueryPredicate? where,
      QueryPagination? pagination,
      List<QuerySortBy>? sortBy}) {
    throw UnimplementedError('query() has not been implemented.');
  }

  Future<void> delete<T extends Model>(T model, {QueryPredicate? where}) {
    throw UnimplementedError('delete() has not been implemented.');
  }

  Future<void> save<T extends Model>(T model, {QueryPredicate? where}) {
    throw UnimplementedError('save() has not been implemented');
  }

  Stream<SubscriptionEvent<T>> observe<T extends Model>(ModelType<T> modelType,
      {QueryPredicate? where}) {
    throw UnimplementedError('observe() has not been implemented.');
  }

  Future<void> clear() {
    throw UnimplementedError('clear() has not been implemented.');
  }

  Future<void> start() {
    throw UnimplementedError('start() has not been implemented.');
  }

  Future<void> stop() {
    throw UnimplementedError('stop() has not been implemented.');
  }

  Stream<QuerySnapshot<T>> observeQuery<T extends Model>(
    ModelType<T> modelType, {
    QueryPredicate? where,
    List<QuerySortBy>? sortBy,
    ObserveQueryThrottleOptions throttleOptions =
        const ObserveQueryThrottleOptions.defaults(),
  }) {
    throw UnimplementedError('observeQuery() has not been implemented.');
  }
}
