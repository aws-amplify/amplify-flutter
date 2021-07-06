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

import 'package:amplify_datastore_plugin_interface/src/types/models/model_provider.dart';
import 'package:amplify_core/types/index.dart';
import 'package:meta/meta.dart';

import 'src/types/models/model.dart';
import 'src/types/models/subscription_event.dart';
import 'src/types/sync/DataStoreSyncExpression.dart';
import 'src/types/query/query_field.dart';

export 'src/types/models/auth_rule.dart';
export 'src/types/models/model.dart';
export 'src/types/models/model_field.dart';
export 'src/types/models/model_field_definition.dart';
export 'src/types/models/model_field_type.dart';
export 'src/types/models/model_provider.dart';
export 'src/types/models/model_schema.dart';
export 'src/types/models/model_schema_definition.dart';
export 'src/types/models/subscription_event.dart';
export 'src/types/models/uuid.dart';
export 'src/types/query/query_field.dart';
export 'src/types/temporal/datetime_parse.dart';
export 'src/types/utils/parsers.dart';

export 'src/publicTypes.dart';

abstract class DataStorePluginInterface extends AmplifyPluginInterface {
  /// modelProvider
  ModelProviderInterface? modelProvider;

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
    this.syncExpressions,
    this.syncInterval,
    this.syncMaxRecords,
    this.syncPageSize,
  }) : super(token: token);

  /// Internal use constructor
  @protected
  DataStorePluginInterface.tokenOnly({required Object token})
      : super(token: token);

  StreamController get streamController {
    throw UnimplementedError(
        'streamController getter has not been implemented.');
  }

  /// Configure AmplifyDataStore plugin with mandatory [modelProvider]
  /// and optional datastore configuration properties including
  ///
  /// [syncInterval]: datastore syncing interval (in seconds)
  ///
  /// [syncMaxRecords]: max number of records to sync
  ///
  /// [syncPageSize]: page size to sync
  Future<void> configureDataStore(
      {required ModelProviderInterface modelProvider,
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

  Future<void> delete<T extends Model>(T model) {
    throw UnimplementedError('delete() has not been implemented.');
  }

  Future<void> save<T extends Model>(T model) {
    throw UnimplementedError('save() has not been implemented');
  }

  Stream<SubscriptionEvent<T>> observe<T extends Model>(
      ModelType<T> modelType) {
    throw UnimplementedError('observe() has not been implemented.');
  }

  Future<void> clear() {
    throw UnimplementedError('clear() has not been implemented.');
  }
}
