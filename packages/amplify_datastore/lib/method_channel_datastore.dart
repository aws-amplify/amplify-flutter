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

import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:flutter/services.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:meta/meta.dart';

const MethodChannel _channel = MethodChannel('com.amazonaws.amplify/datastore');

/// An implementation of [AmplifyDataStore] that uses method channels.
class AmplifyDataStoreMethodChannel extends AmplifyDataStore {
  @override
  Future<List<T>> query<T extends Model>(ModelType<T> modelType,
      {QueryPredicate where,
      QueryPagination pagination,
      List<QuerySortBy> sortBy}) async {
    final List<Map<dynamic, dynamic>> serializedResults =
        await _channel.invokeListMethod('query', <String, dynamic>{
      'modelName': modelType.modelName(),
      'queryPredicate': where?.serializeAsMap(),
      'queryPagination': pagination?.serializeAsMap(),
      'querySort': sortBy?.map((element) => element?.serializeAsMap())?.toList()
    });

    return serializedResults
        .map((serializedResult) => modelType.fromJson(
            new Map<String, dynamic>.from(serializedResult["serializedData"])))
        .toList();
  }

  Future<void> configure({@required List<ModelSchema> modelSchemas}) async {
    return _channel.invokeMethod('configure', <String, dynamic>{
      'modelSchemas': modelSchemas.map((schema) => schema.toMap()).toList()
    });
  }
}
