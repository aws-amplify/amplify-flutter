part of amplify_flutter_platform_interface;

class StorageCategory {
  const StorageCategory();

  static List<StoragePluginInterface> plugins = [];

  /// `Add plugin` method
  bool addPlugin(StoragePluginInterface plugin) {
    plugins.add(plugin);
    return true;
  }

  ///TODO: Remove if indiviual plugins cant be configured
  Future<bool> configure(String configuration) {
    throw UnimplementedError('configure() has not been implemented.');
  }

  Future<UploadFileResponse> uploadFile(UploadFileRequest request) {
    /// call `uploadFile` on the plugins
    return plugins.length == 1 ? plugins[0].uploadFile(request) : null;
  }
}
