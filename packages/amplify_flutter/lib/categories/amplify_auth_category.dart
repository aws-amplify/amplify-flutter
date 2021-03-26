part of amplify_interface;

/// Interface for Auth category. This expose all the APIs that
/// are supported by this category's plugins. This class will accept plugins to
/// be registered and configured and then subsequent API calls will be forwarded
/// to those plugins.
class AuthCategory {
  const AuthCategory();
  static List<AuthPluginInterface> plugins = [];

  /// `Add plugin` method
  Future<void> addPlugin(AuthPluginInterface plugin) async {
    //TODO: Allow for multiple plugins to work simultaneously
    if (plugins.length == 0) {
      plugins.add(plugin);
      await plugin.addPlugin();
    } else {
      throw AmplifyException("Auth plugin has already been added, " +
          "multiple plugins for Auth category are currently not supported.");
    }
  }

  StreamController get streamController {
    return plugins.length == 1
        ? plugins[0].streamController
        : throw _pluginNotAddedException("Auth");
  }

  Future<SignUpResult> signUp(
      {@required String username, @required password, SignUpOptions options}) {
    var request =
        SignUpRequest(username: username, password: password, options: options);
    return plugins.length == 1
        ? plugins[0].signUp(request: request)
        : throw _pluginNotAddedException("Auth");
  }

  Future<SignUpResult> confirmSignUp(
      {@required String username,
      @required String confirmationCode,
      ConfirmSignUpOptions options}) {
    var request = ConfirmSignUpRequest(
        username: username,
        confirmationCode: confirmationCode,
        options: options);
    return plugins.length == 1
        ? plugins[0].confirmSignUp(request: request)
        : throw _pluginNotAddedException("Auth");
  }

  Future<ResendSignUpCodeResult> resendSignUpCode({@required String username}) {
    var request = ResendSignUpCodeRequest(username: username);
    return plugins.length == 1
        ? plugins[0].resendSignUpCode(request: request)
        : throw _pluginNotAddedException("Auth");
  }

  Future<SignInResult> signIn(
      {@required String username,
      @required String password,
      SignInOptions options}) {
    var request =
        SignInRequest(username: username, password: password, options: options);
    return plugins.length == 1
        ? plugins[0].signIn(request: request)
        : throw _pluginNotAddedException("Auth");
  }

  Future<SignInResult> confirmSignIn(
      {@required String confirmationValue, ConfirmSignInOptions options}) {
    var request = ConfirmSignInRequest(
        confirmationValue: confirmationValue, options: options);
    return plugins.length == 1
        ? plugins[0].confirmSignIn(request: request)
        : throw _pluginNotAddedException("Auth");
  }

  Future<SignOutResult> signOut({SignOutOptions options}) {
    var request = SignOutRequest(options: options);
    return plugins.length == 1
        ? plugins[0].signOut(request: request)
        : throw _pluginNotAddedException("Auth");
  }

  Future<UpdatePasswordResult> updatePassword(
      {@required String oldPassword,
      @required String newPassword,
      PasswordOptions options}) {
    var request = UpdatePasswordRequest(
        oldPassword: oldPassword, newPassword: newPassword, options: options);
    return plugins.length == 1
        ? plugins[0].updatePassword(request: request)
        : throw _pluginNotAddedException("Auth");
  }

  Future<ResetPasswordResult> resetPassword(
      {@required String username, PasswordOptions options}) {
    var request = ResetPasswordRequest(username: username, options: options);
    return plugins.length == 1
        ? plugins[0].resetPassword(request: request)
        : throw _pluginNotAddedException("Auth");
  }

  Future<UpdatePasswordResult> confirmPassword(
      {@required String username,
      @required String newPassword,
      @required String confirmationCode,
      PasswordOptions options}) {
    var request = ConfirmPasswordRequest(
        username: username,
        newPassword: newPassword,
        confirmationCode: confirmationCode,
        options: options);
    return plugins.length == 1
        ? plugins[0].confirmPassword(request: request)
        : throw _pluginNotAddedException("Auth");
  }

  Future<AuthUser> getCurrentUser() {
    var request = AuthUserRequest();
    return plugins.length == 1
        ? plugins[0].getCurrentUser(request: request)
        : throw _pluginNotAddedException("Auth");
  }

  Future<List<AuthUserAttribute>> fetchUserAttributes(
      {AuthUserAttributeOptions options}) {
    var request = AuthUserAttributeRequest(options: options);
    return plugins.length == 1
        ? plugins[0].fetchUserAttributes(request: request)
        : throw _pluginNotAddedException("Auth");
  }

  Future<AuthSession> fetchAuthSession({AuthSessionOptions options}) {
    var request = AuthSessionRequest(options: options);
    return plugins.length == 1
        ? plugins[0].fetchAuthSession(request: request)
        : throw _pluginNotAddedException("Auth");
  }

  Future<SignInResult> signInWithWebUI({AuthProvider provider}) {
    var request = SignInWithWebUIRequest(provider: provider);
    return plugins.length == 1
        ? plugins[0].signInWithWebUI(request: request)
        : throw _pluginNotAddedException("Auth");
  }
}
