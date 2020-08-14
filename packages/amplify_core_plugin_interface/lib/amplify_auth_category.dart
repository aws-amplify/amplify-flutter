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

  Future<SignUpResult> signUp({@required SignUpRequest request}) {
    /// call `signUp` on all the plugins
    return plugins[0].signUp(request: request);
  }

  Future<SignUpResult> confirmSignUp({@required ConfirmSignUpRequest request}) {
    /// call `signUp` on all the plugins
    return plugins[0].confirmSignUp(request: request);
  }

  Future<ResendSignUpCodeResult> resendSignUpCode({@required ResendSignUpCodeRequest request}) {
    return plugins[0].resendSignUpCode(request: request);
  }

  Future<SignInResult> signIn({@required SignInRequest request}) {
    /// call `signUp` on all the plugins
    return plugins[0].signIn(request: request);
  }

  Future<SignInResult> confirmSignIn({@required ConfirmSignInRequest request}) {
    /// call `signUp` on all the plugins
    return plugins[0].confirmSignIn(request: request);
  }

  Future<SignOutResult> signOut({SignOutRequest request}) {
    /// call `signUp` on all the plugins
    return plugins[0].signOut(request: request);
  }

  Future<UpdatePasswordResult> updatePassword({UpdatePasswordRequest request}) {
    return plugins[0].updatePassword(request: request);
  }

  Future<ResetPasswordResult> resetPassword({ResetPasswordRequest request}) {
    return plugins[0].resetPassword(request: request);
  }

  Future<UpdatePasswordResult> confirmPassword({ConfirmPasswordRequest request}) {
    return plugins[0].confirmPassword(request: request);
  }

  Future<AuthSession> fetchAuthSession({AuthSessionRequest request}) {
    return plugins[0].fetchAuthSession(request: request);
  }
}
