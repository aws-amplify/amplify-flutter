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

part of amplify_core_plugin_interface;

/// Interface for DataStore category. This expose all the APIs that
/// are supported by this category's plugins. This class will accept plugins to
/// be registered and configured and then subsequent API calls will be forwarded
/// to those plugins.
class DataStoreCategory {
  const DataStoreCategory();
  static List<DataStorePluginInterface> plugins = [];

  /// `Add plugin` method
  Future<void> addPlugin(DataStorePluginInterface plugin) async {
    // TODO: Discuss and support multiple plugins
    if (plugins.length == 0) {
      plugins.add(plugin);
      // Extra step to configure datastore specifically.
      // Note: The native datastore plugins are not added
      // in the `onAttachedToEngine` but rather in the `configure()
      await plugin.configureModelProvider(modelProvider: plugin.modelProvider);
    } else {
      throw ("Failed to add DataStore plugin. You already registered one.");
    }
  }

  Future<List<T>> query<T extends Model>(ModelType<T> modelType,
      {QueryPredicate where,
      QueryPagination pagination,
      List<QuerySortBy> sortBy}) {
    return _select((it) => it.query(modelType,
        where: where, pagination: pagination, sortBy: sortBy));
  }

  Future<void> delete<T extends Model>(T model) {
    return _select((it) => it.delete(model));
  }

  Future<void> save<T extends Model>(T model) {
    return _select((it) => it.save(model));
  }

  Stream<SubscriptionEvent<T>> observe<T extends Model>(
      ModelType<T> modelType) {
    // TODO: _select would give us a Future<Stream<SubscriptionEvent<T>>>,
    // how can we avoid the outer Future?
    return plugins.length == 1
        ? plugins[0].observe(modelType)
        : throw ("DataStore plugin not added correctly.");
  }

  Future<void> clear() {
    return _select((it) => it.clear());
  }

  Future<void> configure(String configuration) async {
    return plugins.forEach((plugin) {
      plugin.configure(configuration: configuration);
    });
  }

  Future<R> _select<R>(FutureOr<R> onValue(DataStorePluginInterface plugin)) {
    return plugins.length == 1
        ? Future.value(plugins[0]).then(onValue)
        : throw ("DataStore plugin not added correctly");
  }
}
