part of amplify_core_plugin_interface;

/// Interface for DataStore category. This expose all the APIs that
/// are supported by this category's plugins. This class will accept plugins to
/// be registered and configured and then subsequent API calls will be forwarded
/// to those plugins.
class DataStoreCategory {
  final errorMsg = "DataStore plugin not added correctly";
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
      await plugin.configure(modelSchemas: plugin.modelSchemas);
    } else {
      throw ("DataStore plugin was not added");
    }
  }

  Future<List<T>> query<T extends Model>(ModelType<T> modelType,
      {QueryPredicate where,
      QueryPagination pagination,
      List<QuerySortBy> sortBy}) {
    return plugins.length == 1
        ? plugins[0].query(modelType,
            where: where, pagination: pagination, sortBy: sortBy)
        : throw (errorMsg);
  }
}
