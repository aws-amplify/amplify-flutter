part of amplify_core_platform_interface;

/// Interface for Auth category. This expose all the APIs that
/// are supported by this category's plugins. This class will accept plugins to
/// be registered and configured and then subsequent API calls will be forwarded
/// to those plugins.
class AuthCategory {
  const AuthCategory();
  static List<AuthPluginInterface> plugins = [];

  /// `Add plugin` method
  bool addPlugin(AuthPluginInterface plugin) {
    plugins.add(plugin);
    // probably configure the plugin now.
    return true;
  }

  Future<SignUpResult> signUp({@required SignUpRequest request, Function(SignUpResult) success, Function(SignUpResult) error}) {
    /// call `signUp` on all the plugins
    return plugins.length == 1 ? plugins[0].signUp(request: request, success: success, error: error) : null;
  }

  Future<SignUpResult> confirmSignUp({@required ConfirmSignUpRequest request, Function(SignUpResult) success, Function(SignUpResult) error}) {
    /// call `signUp` on all the plugins
    return plugins.length == 1 ? plugins[0].confirmSignUp(request: request, success: success, error: error) : null;
  }

    Future<SignInResult> signIn({@required SignInRequest request, Function(SignInResult) success, Function(SignInResult) error}) {
    /// call `signUp` on all the plugins
    return plugins.length == 1 ? plugins[0].signIn(request: request, success: success, error: error) : null;
  }
  nullPluginsError(String functionName) {
    
  }
}
