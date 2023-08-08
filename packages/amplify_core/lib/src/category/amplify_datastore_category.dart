// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of amplify_interface;

/// Interface for DataStore category. This expose all the APIs that
/// are supported by this category's plugins. This class will accept plugins to
/// be registered and configured and then subsequent API calls will be forwarded
/// to those plugins.
class DataStoreCategory extends AmplifyCategory<DataStorePluginInterface> {
  @override
  @nonVirtual
  Category get category => Category.dataStore;

  @override
  @nonVirtual
  Set<Category> get categoryDependencies => const {Category.api, Category.auth};

  @override
  Future<void> addPlugin(
    DataStorePluginInterface plugin, {
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    if (plugins.isEmpty) {
      try {
        // Extra step to configure datastore specifically.
        // Note: The native datastore plugins are not added
        // in the `onAttachedToEngine` but rather in the `configure()
        await plugin.configureDataStore(
          modelProvider: plugin.modelProvider!,
          errorHandler: plugin.errorHandler,
        );
        _plugins.add(plugin);
      } on AmplifyAlreadyConfiguredException {
        _plugins.add(plugin);
      } on Object catch (e) {
        try {
          throw AmplifyException.fromMap(
            Map<String, String>.from(
              // ignore: avoid_dynamic_calls
              (e as dynamic /* PlatformException */).details as Map,
            ),
          );
        } on NoSuchMethodError {
          // fallthrough
        }
        rethrow;
      }
    } else {
      throw PluginError(
        'DataStore plugin has already been added, multiple plugins for '
        'DataStore category are currently not supported.',
      );
    }
  }

  /// Get [streamController]
  StreamController<DataStoreHubEvent> get streamController {
    return plugins.length == 1
        ? plugins[0].streamController
        : throw _pluginNotAddedException('DataStore');
  }

  /// Query the DataStore to find all items of the specified [modelType] that satisfy the specified
  /// query predicate [where].
  ///
  /// Returned items are paginated by [pagination] and sorted by [sortBy].
  Future<List<T>> query<T extends Model>(
    ModelType<T> modelType, {
    QueryPredicate? where,
    QueryPagination? pagination,
    List<QuerySortBy>? sortBy,
  }) {
    return plugins.length == 1
        ? plugins[0].query(
            modelType,
            where: where,
            pagination: pagination,
            sortBy: sortBy,
          )
        : throw _pluginNotAddedException('DataStore');
  }

  /// Delete [model] from the DataStore.
  Future<void> delete<T extends Model>(T model, {QueryPredicate? where}) {
    return plugins.length == 1
        ? plugins[0].delete(model, where: where)
        : throw _pluginNotAddedException('DataStore');
  }

  /// Save [model] into the DataStore.
  Future<void> save<T extends Model>(T model, {QueryPredicate? where}) {
    return plugins.length == 1
        ? plugins[0].save(model, where: where)
        : throw _pluginNotAddedException('DataStore');
  }

  /// Observe changes on the specified [modelType].
  Stream<SubscriptionEvent<T>> observe<T extends Model>(
    ModelType<T> modelType, {
    QueryPredicate? where,
  }) {
    return plugins.length == 1
        ? plugins[0].observe(modelType, where: where)
        : throw _pluginNotAddedException('DataStore');
  }

  /// Stops the underlying DataStore's synchronization with a remote system, if DataStore is configured to
  /// support remote synchronization, resetting the plugin to the initialized state, and deletes all data
  /// from the local device.
  ///
  /// Any items pending synchronization in the outbound queue will be lost. Remotely synced data can be re-synced
  /// back when starting DataStore using [start]. **Local-only data will be lost permanently.**
  ///
  /// Synchronization processes will be restarted on the next interaction with the DataStore, or can be
  /// restarted manually by calling [start].
  Future<void> clear() {
    return plugins.length == 1
        ? plugins[0].clear()
        : throw _pluginNotAddedException('DataStore');
  }

  /// Starts the DataStore's synchronization with a remote system, if DataStore is configured to support
  /// remote synchronization.
  ///
  /// This only needs to be called if you wish to start the synchronization eagerly.
  /// If you don't call start(), the synchronization will start automatically, prior to executing any other
  /// operations (query, save, delete, update).
  Future<void> start() {
    return plugins.length == 1
        ? plugins[0].start()
        : throw _pluginNotAddedException('DataStore');
  }

  /// Stops the underlying DataStore's synchronization with a remote system, if DataStore is configured to
  /// support remote synchronization.
  ///
  /// Synchronization processes will be restarted on the next interaction with the DataStore, or can be
  /// restarted manually by calling [start].
  Future<void> stop() {
    return plugins.length == 1
        ? plugins[0].stop()
        : throw _pluginNotAddedException('DataStore');
  }

  /// Observe the result set of a given Query.
  ///
  /// Emits an initial [QuerySnapshot] with data from the local store, as well as
  /// subsequent events with data synced over the network.
  Stream<QuerySnapshot<T>> observeQuery<T extends Model>(
    ModelType<T> modelType, {
    QueryPredicate? where,
    List<QuerySortBy>? sortBy,
    ObserveQueryThrottleOptions throttleOptions =
        const ObserveQueryThrottleOptions.defaults(),
  }) {
    return plugins.length == 1
        ? plugins[0].observeQuery(
            modelType,
            where: where,
            sortBy: sortBy,
            throttleOptions: throttleOptions,
          )
        : throw _pluginNotAddedException('DataStore');
  }
}
