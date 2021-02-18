part of amplify_interface;

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
      throw AmplifyException("Auth plugin has already been added, " +
          "multiple plugins for Auth category are currently not supported.");
    }
  }

  /// Used to get a auth event stream controller when creating the Hub singleton
  StreamController get streamController {
    return plugins.length == 1
        ? plugins[0].streamController
        : throw _pluginNotAddedException("Auth");
  }

  /// Creates a user record and returns a [SignUpResult] or plugin-specific subclass.
  ///
  /// Throws an [AuthException], or possibly subclasses such as
  /// [CodeDeliveryFailureException], [InvalidParameterException], [InvalidPasswordException],
  /// [LambdaException] or [UsernameExistsException].
  /// Other AuthException subclasses are possible as a result of network issues,
  /// misconfiguration, repeated attempts, internal service errors or other less common reasons.
  Future<SignUpResult> signUp(
      {@required String username, @required password, SignUpOptions options}) {
    var request =
        SignUpRequest(username: username, password: password, options: options);
    return plugins.length == 1
        ? plugins[0].signUp(request: request)
        : throw _pluginNotAddedException("Auth");
  }

  /// Confirms a user record and returns [SignUpResult] or plugin-specific subclass.
  ///
  /// Throws an [AuthException], or possibly subclasses such as
  /// [AliasExistsException], [CodeExpiredException], [CodeMismatchException], [LambdaException]
  ///  or [UserNotFoundException].
  /// Other AuthException subclasses are possible as a result of network issues,
  /// misconfiguration, repeated attempts, internal service errors or other less common reasons.
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

  /// Resends a sign up verification code and returns a [ResendSignUpCodeResult] or plugin-specific subclass.
  ///
  /// Throws an [AuthException], or possibly subclasses such as
  /// [CodeDeliveryFailureException], [InvalidParameterException], [LambdaException]
  ///  or [UserNotFoundException].
  /// Other AuthException subclasses are possible as a result of network issues,
  /// misconfiguration, repeated attempts, internal service errors or other less common reasons.
  Future<ResendSignUpCodeResult> resendSignUpCode({@required String username}) {
    var request = ResendSignUpCodeRequest(username: username);
    return plugins.length == 1
        ? plugins[0].resendSignUpCode(request: request)
        : throw _pluginNotAddedException("Auth");
  }

  /// Initiates the signin process and returns a [SignInResult] or plugin-specific subclass.
  ///
  /// Throws an [AuthException], or possibly subclasses such as
  /// [AliasExistsException], [InvalidParameterException], [NotAuthorizedException],
  /// [PasswordResetRequiredException], [UserNotConfirmedException] or [UserNotFoundException].
  /// Other AuthException subclasses are possible as a result of network issues,
  /// misconfiguration, repeated attempts, internal service errors or other less common reasons.
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

  /// Responds to an auth challenge portion of a signin process and returns a [SignInResult] or plugin-specific subclass.
  ///
  /// Throws an [AuthException], or possibly subclasses such as 
  /// [AliasExistsException], [CodeExpiredException], [CodeMismatchException],
  /// [InvalidParameterException], [LambdaException], [MFAMethodNotFoundException], [NotAuthorizedException],
  /// [PasswordResetRequiredException], [SoftwareTokenMFANotFoundException], [UserNotConfirmedException]
  /// or [UserNotFoundException].
  /// Other AuthException subclasses are possible as a result of network issues,
  /// misconfiguration, internal service errors or other less common reasons.
  Future<SignInResult> confirmSignIn(
      {@required String confirmationValue, ConfirmSignInOptions options}) {
    var request = ConfirmSignInRequest(
        confirmationValue: confirmationValue, options: options);
    return plugins.length == 1
        ? plugins[0].confirmSignIn(request: request)
        : throw _pluginNotAddedException("Auth");
  }

  /// Signs the user out and returns [SignOutResult] or plugin-specific subclass.
  ///
  /// Throws an [AuthException], or possibly a subclass.
  /// Other AuthException subclasses are possible as a result of network issues,
  /// misconfiguration, internal service errors or other less common reasons.
  Future<SignOutResult> signOut({SignOutOptions options}) {
    var request = SignOutRequest(options: options);
    return plugins.length == 1
        ? plugins[0].signOut(request: request)
        : throw _pluginNotAddedException("Auth");
  }

  /// Changes the password for a logged-in user and returns an [UpdatePasswordResult]
  /// or plugin-specific subclass.
  ///
  /// Throws an [AuthException], or possibly subclasses such as
  /// [InvalidParameterException], [InvalidPasswordException], [NotAuthorizedException],
  /// [PasswordResetRequiredException], [UserNotConfirmedException] or [UserNotFoundException].
  /// Other AuthException subclasses are possible as a result of network issues,
  /// misconfiguration, internal service errors or other less common reasons.
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

  /// Allows the user to request a confirmation code to change a forgotten password
  /// and returns a [ResetPasswordResult] or plugin-specific subclass.
  ///
  /// Throws an [AuthException], or possibly subclasses such as
  /// [InvalidParameterException], [InvalidPasswordException], [NotAuthorizedException],
  /// [PasswordResetRequiredException], [UserNotConfirmedException] or [UserNotFoundException].
  /// Other AuthException subclasses are possible as a result of network issues,
  /// misconfiguration, internal service errors or other less common reasons.
  Future<ResetPasswordResult> resetPassword(
      {@required String username, PasswordOptions options}) {
    var request = ResetPasswordRequest(username: username, options: options);
    return plugins.length == 1
        ? plugins[0].resetPassword(request: request)
        : throw _pluginNotAddedException("Auth");
  }

  /// Allows a user to enter a confirmation code to reset a forgotten password
  /// and returns an [UpdatePasswordResult] or plugin-specific subclass.
  ///
  /// Throws an [AuthException], or possibly subclasses such as
  /// [CodeMismatchException], [ExpiredCodeException], [InvalidParameterException], 
  /// [InvalidPasswordException], [LambdaException], [NotAuthorizedException],
  /// [PasswordResetRequiredException], [UserNotConfirmedException] or [UserNotFoundException].
  /// Other AuthException subclasses are possible as a result of network issues,
  /// misconfiguration, internal service errors or other less common reasons.
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

  /// Returns an [AuthUser] or plugin-specific subclass.
  ///
  /// Throws an [AuthException], or possibly a subclass such as [SignedOutException].
  /// Other AuthException subclasses are possible as a result of network issues,
  /// misconfiguration, internal service errors or other less common reasons.
  Future<AuthUser> getCurrentUser() {
    var request = AuthUserRequest();
    return plugins.length == 1
        ? plugins[0].getCurrentUser(request: request)
        : throw _pluginNotAddedException("Auth");
  }

  /// Returns [<List<AuthUserAttribute>>] or a list of a plugin-specific subclass.
  ///
  /// Throws an [AuthException], or possibly a subclass such as [SignedOutException].
  /// Other AuthException subclasses are possible as a result of network issues,
  /// misconfiguration, internal service errors or other less common reasons.
  Future<List<AuthUserAttribute>> fetchUserAttributes({AuthUserAttributeOptions options}) {
    var request = AuthUserAttributeRequest(options: options);
    return plugins.length == 1
        ? plugins[0].fetchUserAttributes(request: request)
        : throw _pluginNotAddedException("Auth");
  }

  /// Returns [AuthSession] or a plugin-specific subclass.
  ///
  /// Throws an [AuthException], or possibly a subclass such as [SessionExpiredException] or [SignedOutException].
  /// Other AuthException subclasses are possible as a result of network issues,
  /// misconfiguration, internal service errors or other less common reasons.
  Future<AuthSession> fetchAuthSession({AuthSessionOptions options}) {
    var request = AuthSessionRequest(options: options);
    return plugins.length == 1
        ? plugins[0].fetchAuthSession(request: request)
        : throw _pluginNotAddedException("Auth");
  }

  /// Initiates an OAuth process and returns a [SignInResult] or a plugin-specific subclass.
  ///
  /// Throws an [AuthException], or possibly a subclass such as [UserCancelledException].
  /// Other AuthException subclasses are possible as a result of network issues,
  /// misconfiguration, internal service errors or other less common reasons.
  Future<SignInResult> signInWithWebUI({AuthProvider provider}) {
    var request = SignInWithWebUIRequest(provider: provider);
    return plugins.length == 1
        ? plugins[0].signInWithWebUI(request: request)
        : throw _pluginNotAddedException("Auth");
  }
}
