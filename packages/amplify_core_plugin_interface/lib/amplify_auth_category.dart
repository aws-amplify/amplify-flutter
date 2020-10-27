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
      throw("Auth plugin was not added. An auth plugin was already added.");
    }
  }

  Future<SignUpResult> signUp({@required String username, @required password, SignUpOptions options}) {
    return _selectPlugin((it) =>
        it.signUp(request: SignUpRequest(username: username, password: password, options: options))
    );
  }

  Future<SignUpResult> confirmSignUp({@required String username, @required String confirmationCode, ConfirmSignUpOptions options}) {
    return _selectPlugin((it) =>
        it.confirmSignUp(request: ConfirmSignUpRequest(username: username, confirmationCode: confirmationCode, options: options))
    );
  }

  Future<ResendSignUpCodeResult> resendSignUpCode({@required String username}) {
    return _selectPlugin((it) =>
        it.resendSignUpCode(request: ResendSignUpCodeRequest(username: username))
    );
  }

  Future<SignInResult> signIn({@required String username, @required String password, SignInOptions options}) {
    return _selectPlugin((it) =>
        it.signIn(request: SignInRequest(username: username, password: password, options: options))
    );
  }

  Future<SignInResult> confirmSignIn({@required String confirmationValue, ConfirmSignInOptions options}) {
    return _selectPlugin((it) =>
        it.confirmSignIn(request: ConfirmSignInRequest(confirmationValue: confirmationValue, options: options))
    );
  }

  Future<SignOutResult> signOut({SignOutOptions options}) {
    return _selectPlugin((it) =>
        it.signOut(request: SignOutRequest(options: options))
    );
  }

  Future<UpdatePasswordResult> updatePassword({@required String oldPassword, @required String newPassword, PasswordOptions options}) {
    return _selectPlugin((it) =>
        it.updatePassword(request: UpdatePasswordRequest(oldPassword: oldPassword, newPassword: newPassword, options: options))
    );
  }

  Future<ResetPasswordResult> resetPassword({@required String username, PasswordOptions options}) {
    return _selectPlugin((it) =>
        it.resetPassword(request: ResetPasswordRequest(username: username, options: options))
    );
  }

  Future<UpdatePasswordResult> confirmPassword({@required String username, @required String newPassword, @required String confirmationCode, PasswordOptions options}) {
    return _selectPlugin((it) =>
        it.confirmPassword(request: ConfirmPasswordRequest(username: username, newPassword: newPassword, confirmationCode: confirmationCode, options: options))
    );
  }

  Future<AuthUser> getCurrentUser() {
    return _selectPlugin((it) =>
        it.getCurrentUser(request: AuthUserRequest())
    );
  }

  Future<AuthSession> fetchAuthSession({AuthSessionOptions options}) {
    return _selectPlugin((it) =>
        it.fetchAuthSession(request: AuthSessionRequest(options: options))
    );
  }

  Future<R> _selectPlugin<R>(FutureOr<R> onValue(AuthPluginInterface plugin)) {
    return plugins.length == 1 ?
      Future.value(plugins[0]).then(onValue) :
      throw("Auth plugin not added correctly");
  }
}
