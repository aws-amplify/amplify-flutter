part of amplify_flutter_platform_interface;

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

  Future<UploadFileResponse> uploadFile(UploadFileRequest request) {
    /// call `uploadFile` on the plugin
    return plugins[0].uploadFile(request);
  }

  Future<GetUrlResponse> getUrl(GetUrlRequest request) {
    /// call `getUrl` on the plugin
    return plugins[0].getUrl(request);
  }
}
