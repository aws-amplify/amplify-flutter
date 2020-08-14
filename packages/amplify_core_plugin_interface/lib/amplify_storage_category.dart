part of amplify_core_plugin_interface;

class StorageCategory {
  const StorageCategory();

  static List<StoragePluginInterface> plugins = [];

  /// `Add plugin` method
  bool addPlugin(StoragePluginInterface plugin) {
    //TODO: Allow for multiple plugins to work simultaneously
    if (plugins.length == 0) {
      plugins.add(plugin);
      return true;
    } else {
      throw ("Failed to add the Storage plugin");
    }
  }

  Future<UploadFileResponse> uploadFile({@required UploadFileRequest request}) {
    /// call `uploadFile` on the plugin
    return plugins[0].uploadFile(request: request);
  }

  Future<GetUrlResponse> getUrl({@required GetUrlRequest request}) {
    /// call `getUrl` on the plugin
    return plugins[0].getUrl(request: request);
  }
}
