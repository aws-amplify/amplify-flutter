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

library amplify_datastore_plugin_interface;

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'src/types/models/model.dart';
import 'src/types/models/model_schema.dart';
import 'src/types/query/query_field.dart';

export 'src/types/models/flutter_serialized_model.dart';
export 'src/types/models/model.dart';
export 'src/types/models/model_schema.dart';
export 'src/types/query/query_field.dart';
export 'src/types/models/model_field.dart';
export 'src/types/utils/date_time_parser.dart';

abstract class DataStorePluginInterface extends PlatformInterface {
  final List<ModelSchema> modelSchemas;

  /// Constructs an AmplifyPlatform.
  DataStorePluginInterface(
      {@required Object token, @required this.modelSchemas})
      : super(token: token);

  Future<List<T>> query<T extends Model>(ModelType<T> modelType,
      {QueryPredicate where,
      QueryPagination pagination,
      List<QuerySortBy> sortBy}) {
    throw UnimplementedError('query() has not been implemented.');
  }

  Future<void> configure({@required List<ModelSchema> modelSchemas}) {
    throw UnimplementedError('configure() has not been implemented.');
  }
}
