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

  Future<SignUpResult> signUp({@required String username, @required password, SignUpOptions options}) {
    var request = SignUpRequest(username: username, password: password, options: options);
    return plugins[0].signUp(request: request);
  }

  Future<SignUpResult> confirmSignUp({@required String username, @required String confirmationCode, ConfirmSignUpOptions options}) {
    var request = ConfirmSignUpRequest(username: username, confirmationCode: confirmationCode, options: options);
    return plugins[0].confirmSignUp(request: request);
  }

  Future<ResendSignUpCodeResult> resendSignUpCode({@required String username}) {
    var request = ResendSignUpCodeRequest(username: username);
    return plugins[0].resendSignUpCode(request: request);
  }

  Future<SignInResult> signIn({@required String username, @required String password, SignInOptions options }) {
    var request = SignInRequest(username: username, password: password, options: options);
    return plugins[0].signIn(request: request);
  }

  Future<SignInResult> confirmSignIn({@required String confirmationValue, ConfirmSignInOptions options}) {
    var request = ConfirmSignInRequest(confirmationValue: confirmationValue, options: options);
    return plugins[0].confirmSignIn(request: request);
  }

  Future<SignOutResult> signOut({SignOutOptions options}) {
    var request = SignOutRequest(options: options);
    return plugins[0].signOut(request: request);
  }

  Future<UpdatePasswordResult> updatePassword({@required String oldPassword, @required String newPassword, PasswordOptions options}) {
    var request = UpdatePasswordRequest(oldPassword: oldPassword, newPassword: newPassword, options: options);
    return plugins[0].updatePassword(request: request);
  }

  Future<ResetPasswordResult> resetPassword({@required String username, PasswordOptions options}) {
    var request = ResetPasswordRequest(username: username, options: options);
    return plugins[0].resetPassword(request: request);
  }

  Future<UpdatePasswordResult> confirmPassword({@required String username, @required String newPassword, @required String confirmationCode, PasswordOptions options}) {
    var request = ConfirmPasswordRequest(username: username, newPassword: newPassword, confirmationCode: confirmationCode, options: options);
    return plugins[0].confirmPassword(request: request);
  }

  Future<AuthUser> getCurrrentUser() {
    var request = AuthUserRequest();
    return plugins[0].getCurrentUser();
  }

  Future<AuthSession> fetchAuthSession({AuthSessionOptions options}) {
    var request = AuthSessionRequest(options: options);
    return plugins[0].fetchAuthSession(request: request);
  }
}
