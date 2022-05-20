/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

part of amplify_interface;

/// Interface for Auth category. This expose all the APIs that
/// are supported by this category's plugins. This class will accept plugins to
/// be registered and configured and then subsequent API calls will be forwarded
/// to those plugins.
class AuthCategory extends AmplifyCategory<AuthPluginInterface> {
  @override
  @nonVirtual
  Category get category => Category.auth;

  StreamController get streamController {
    return plugins.length == 1
        ? plugins[0].streamController
        : throw _pluginNotAddedException('Auth');
  }

  Future<SignUpResult> signUp({
    required String username,
    required String password,
    SignUpOptions? options,
  }) {
    var request =
        SignUpRequest(username: username, password: password, options: options);
    return plugins.length == 1
        ? plugins[0].signUp(request: request)
        : throw _pluginNotAddedException('Auth');
  }

  Future<SignUpResult> confirmSignUp({
    required String username,
    required String confirmationCode,
    ConfirmSignUpOptions? options,
  }) {
    var request = ConfirmSignUpRequest(
        username: username,
        confirmationCode: confirmationCode,
        options: options);
    return plugins.length == 1
        ? plugins[0].confirmSignUp(request: request)
        : throw _pluginNotAddedException('Auth');
  }

  /// Resends the code that is used to confirm the user's account after sign up
  ///
  /// Resends the code to the user with the given [username], where [username]
  /// is a login identifier or an email/phone number, depending on the configuration
  ///
  /// Accepts plugin-specific, advanced [options] for the request
  Future<ResendSignUpCodeResult> resendSignUpCode({
    required String username,
    ResendSignUpCodeOptions? options,
  }) {
    var request = ResendSignUpCodeRequest(username: username, options: options);
    return plugins.length == 1
        ? plugins[0].resendSignUpCode(request: request)
        : throw _pluginNotAddedException('Auth');
  }

  Future<SignInResult> signIn({
    required String username,
    String? password,
    SignInOptions? options,
  }) {
    var request =
        SignInRequest(username: username, password: password, options: options);
    return plugins.length == 1
        ? plugins[0].signIn(request: request)
        : throw _pluginNotAddedException('Auth');
  }

  Future<SignInResult> confirmSignIn({
    required String confirmationValue,
    ConfirmSignInOptions? options,
  }) {
    var request = ConfirmSignInRequest(
        confirmationValue: confirmationValue, options: options);
    return plugins.length == 1
        ? plugins[0].confirmSignIn(request: request)
        : throw _pluginNotAddedException('Auth');
  }

  /// Signs the user out of the current device
  ///
  /// Accepts advanced [options] for the request, which can be used for
  /// global sign out as well as other plugin-specific options
  Future<SignOutResult> signOut({
    SignOutOptions? options,
  }) {
    var request = SignOutRequest(options: options);
    return plugins.length == 1
        ? plugins[0].signOut(request: request)
        : throw _pluginNotAddedException('Auth');
  }

  /// Updates the password of the current user.
  ///
  /// There must be a user signed in to perform this action.
  ///
  /// Optionally accepts plugin-specific, advanced [options] for the request.
  Future<UpdatePasswordResult> updatePassword({
    required String oldPassword,
    required String newPassword,
    UpdatePasswordOptions? options,
  }) {
    var request = UpdatePasswordRequest(
        oldPassword: oldPassword, newPassword: newPassword, options: options);
    return plugins.length == 1
        ? plugins[0].updatePassword(request: request)
        : throw _pluginNotAddedException('Auth');
  }

  /// Initiates a password reset for the user with the given username.
  ///
  /// The [username] is a login identifier or an email/phone number, depending on
  /// the configuration.
  ///
  /// Optionally accepts plugin-specific, advanced [options] for the request.
  Future<ResetPasswordResult> resetPassword({
    required String username,
    ResetPasswordOptions? options,
  }) {
    var request = ResetPasswordRequest(username: username, options: options);
    return plugins.length == 1
        ? plugins[0].resetPassword(request: request)
        : throw _pluginNotAddedException('Auth');
  }

  /// Completes the password reset process given a username, new password,
  /// and confirmation code.
  ///
  /// The [username] is a login identifier or an email/phone number, depending on
  /// the configuration.
  ///
  /// Optionally accepts plugin-specific, advanced [options] for the request.
  Future<UpdatePasswordResult> confirmResetPassword({
    required String username,
    required String newPassword,
    required String confirmationCode,
    ConfirmResetPasswordOptions? options,
  }) {
    var request = ConfirmResetPasswordRequest(
        username: username,
        newPassword: newPassword,
        confirmationCode: confirmationCode,
        options: options);
    return plugins.length == 1
        ? plugins[0].confirmResetPassword(request: request)
        : throw _pluginNotAddedException('Auth');
  }

  Future<AuthUser> getCurrentUser() {
    var request = AuthUserRequest();
    return plugins.length == 1
        ? plugins[0].getCurrentUser(request: request)
        : throw _pluginNotAddedException('Auth');
  }

  Future<List<AuthUserAttribute>> fetchUserAttributes({
    FetchUserAttributesOptions? options,
  }) {
    var request = FetchUserAttributesRequest(options: options);
    return plugins.length == 1
        ? plugins[0].fetchUserAttributes(request: request)
        : throw _pluginNotAddedException('Auth');
  }

  Future<AuthSession> fetchAuthSession({
    AuthSessionOptions? options,
  }) {
    var request = AuthSessionRequest(options: options);
    return plugins.length == 1
        ? plugins[0].fetchAuthSession(request: request)
        : throw _pluginNotAddedException('Auth');
  }

  Future<SignInResult> signInWithWebUI({
    AuthProvider? provider,
    SignInWithWebUIOptions? options,
  }) {
    var request = SignInWithWebUIRequest(provider: provider, options: options);
    return plugins.length == 1
        ? plugins[0].signInWithWebUI(request: request)
        : throw _pluginNotAddedException('Auth');
  }

  /// Updates a single user attribute and returns a [UpdateUserAttributeResult]
  ///
  /// Accepts plugin-specific, advanced [options] for the request
  Future<UpdateUserAttributeResult> updateUserAttribute({
    required UserAttributeKey userAttributeKey,
    required String value,
    UpdateUserAttributeOptions? options,
  }) {
    var request = UpdateUserAttributeRequest(
      userAttributeKey: userAttributeKey,
      value: value,
      options: options,
    );
    return plugins.length == 1
        ? plugins[0].updateUserAttribute(request: request)
        : throw _pluginNotAddedException('Auth');
  }

  /// Updates multiple user attributes and returns a map of [UpdateUserAttributeResult]
  ///
  /// Accepts plugin-specific, advanced [options] for the request
  Future<Map<UserAttributeKey, UpdateUserAttributeResult>>
      updateUserAttributes({
    required List<AuthUserAttribute> attributes,
    UpdateUserAttributesOptions? options,
  }) {
    var request = UpdateUserAttributesRequest(
      attributes: attributes,
      options: options,
    );
    return plugins.length == 1
        ? plugins[0].updateUserAttributes(request: request)
        : throw _pluginNotAddedException('Auth');
  }

  /// Confirms a user attribute update and returns a [ConfirmUserAttributeResult]
  Future<ConfirmUserAttributeResult> confirmUserAttribute({
    required UserAttributeKey userAttributeKey,
    required String confirmationCode,
  }) {
    var request = ConfirmUserAttributeRequest(
        userAttributeKey: userAttributeKey, confirmationCode: confirmationCode);
    return plugins.length == 1
        ? plugins[0].confirmUserAttribute(request: request)
        : throw _pluginNotAddedException('Auth');
  }

  /// Resends a confirmation code for the given attribute and returns a [ResendUserAttributeConfirmationCodeResult]
  ///
  /// Accepts plugin-specific, advanced [options] for the request
  Future<ResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode({
    required UserAttributeKey userAttributeKey,
    ResendUserAttributeConfirmationCodeOptions? options,
  }) {
    var request = ResendUserAttributeConfirmationCodeRequest(
      userAttributeKey: userAttributeKey,
      options: options,
    );
    return plugins.length == 1
        ? plugins[0].resendUserAttributeConfirmationCode(request: request)
        : throw _pluginNotAddedException('Auth');
  }

  /// Remembers the current device.
  Future<void> rememberDevice() {
    return plugins.length == 1
        ? plugins[0].rememberDevice()
        : throw _pluginNotAddedException('Auth');
  }

  /// Forgets [device], or the current device, if no parameters are given.
  Future<void> forgetDevice([AuthDevice? device]) {
    return plugins.length == 1
        ? plugins[0].forgetDevice(device)
        : throw _pluginNotAddedException('Auth');
  }

  /// Retrieves all tracked devices for the current user.
  Future<List<AuthDevice>> fetchDevices() {
    return plugins.length == 1
        ? plugins[0].fetchDevices()
        : throw _pluginNotAddedException('Auth');
  }

  /// Deletes the authenticated [AuthUser].
  ///
  /// This API is currently only available on the iOS platform.
  /// Do not attempt to call this API from Android.
  Future<void> deleteUser() {
    return plugins.length == 1
        ? plugins[0].deleteUser()
        : throw _pluginNotAddedException('Auth');
  }
}
