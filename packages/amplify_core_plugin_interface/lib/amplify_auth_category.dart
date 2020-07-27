part of amplify_core_plugin_interface;

/// Interface for Auth category. This expose all the APIs that
/// are supported by this category's plugins. This class will accept plugins to
/// be registered and configured and then subsequent API calls will be forwarded
/// to those plugins.
class AuthCategory {
  const AuthCategory();
  static List<AuthPluginInterface> plugins = [];

  /// `Add plugin` method
  void addPlugin(AuthPluginInterface plugin) {
    // TODO: Discuss and support multiple plugins
    if (plugins.length == 0) {
      plugins.add(plugin);
      
    } else {
      throw("Auth plugin was not added");
    }
  }

  Future<SignUpResult> signUp({@required SignUpRequest request, Function(SignUpResult) success, Function(SignUpResult) error}) {
    return plugins[0].signUp(request: request);
  }
}
