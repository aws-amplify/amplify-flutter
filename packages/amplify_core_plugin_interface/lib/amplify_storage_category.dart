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

  Future<UploadFileResult> uploadFile(
      {@required String path,
      @required String key,
      UploadFileOptions options}) {
    final UploadFileRequest request =
        UploadFileRequest(path: path, key: key, options: options);
    return plugins[0].uploadFile(request: request);
  }

  Future<GetUrlResult> getUrl({@required String key, GetUrlOptions options}) {
    final GetUrlRequest request = GetUrlRequest(key: key, options: options);
    return plugins[0].getUrl(request: request);
  }
}
