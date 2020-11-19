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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:meta/meta.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'method_channel_datastore.dart';

class AmplifyDataStore extends DataStorePluginInterface {
  static final Object _token = Object();

  /// Constructs an AmplifyDataStore plugin
  AmplifyDataStore({@required ModelProviderInterface modelProvider})
      : super(token: _token, modelProvider: modelProvider);

  static AmplifyDataStore _instance = AmplifyDataStoreMethodChannel();

  static set instance(DataStorePluginInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  @override
  Future<void> configureModelProvider(
      {ModelProviderInterface modelProvider}) async {
    ModelProviderInterface provider =
        modelProvider == null ? this.modelProvider : modelProvider;
    if (provider == null || provider.modelSchemas.isEmpty) {
      throw ArgumentError("Need to provide at least one modelSchema");
    }
    return _instance.configureModelProvider(modelProvider: modelProvider);
  }

  @override
  Future<void> configure({String configuration}) async {
    return _instance.configure(configuration: configuration);
  }

  @override
  Future<List<T>> query<T extends Model>(ModelType<T> modelType,
      {QueryPredicate where,
      QueryPagination pagination,
      List<QuerySortBy> sortBy}) async {
    return _instance.query(modelType,
        where: where, pagination: pagination, sortBy: sortBy);
  }

  @override
  Future<void> delete<T extends Model>(T model) async {
    return _instance.delete(model);
  }

  @override
  Future<void> save<T extends Model>(T model, {QueryPredicate when}) {
    return _instance.save(model, when: when);
  }

  Stream<SubscriptionEvent<T>> observe<T extends Model>(
      ModelType<T> modelType) {
    return _instance.observe(modelType);
  }

  @override
  Future<void> clear() async {
    return _instance.clear();
  }
}
