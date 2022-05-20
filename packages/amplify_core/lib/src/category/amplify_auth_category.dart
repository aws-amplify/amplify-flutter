// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.amplify_auth_category}
/// The Amplify Auth category provides an interface for authenticating a user.
///
/// Behind the scenes, it provides the necessary authorization to the other
/// Amplify categories. It comes with default, built-in support for Amazon
/// Cognito User Pool and Identity Pool.
///
/// The Amplify CLI helps you to create and configure the auth category with an
/// authentication provider.
/// {@endtemplate}
class AuthCategory extends AmplifyCategory<AuthPluginInterface> {
  @override
  @nonVirtual
  Category get category => Category.auth;

  // TODO: Remove with Hub migration
  StreamController get streamController => defaultPlugin.streamController;

  /// {@template amplify_core.amplify_auth_category.sign_up}
  /// Create a new user with the given [username] and [password].
  /// {@endtemplate}
  Future<SignUpResult> signUp({
    required String username,
    required String password,
    SignUpOptions? options,
  }) {
    final request = SignUpRequest(
      username: username,
      password: password,
      options: options,
    );
    return defaultPlugin.signUp(request: request);
  }

  /// {@template amplify_core.amplify_auth_category.confirm_sign_up}
  /// Confirm the current sign up for [username] with the [confirmationCode]
  /// provided by the user.
  /// {@endtemplate}
  Future<SignUpResult> confirmSignUp({
    required String username,
    required String confirmationCode,
    ConfirmSignUpOptions? options,
  }) {
    final request = ConfirmSignUpRequest(
      username: username,
      confirmationCode: confirmationCode,
      options: options,
    );
    return defaultPlugin.confirmSignUp(request: request);
  }

  /// {@template amplify_core.amplify_auth_category.resend_sign_up_code}
  /// Resends the code that is used to confirm the user's account after sign up
  ///
  /// Resends the code to the user with the given [username], where [username]
  /// is a login identifier or an email/phone number, depending on the configuration
  ///
  /// Accepts plugin-specific, advanced [options] for the request
  /// {@endtemplate}
  Future<ResendSignUpCodeResult> resendSignUpCode({
    required String username,
    ResendSignUpCodeOptions? options,
  }) {
    final request = ResendSignUpCodeRequest(
      username: username,
      options: options,
    );
    return defaultPlugin.resendSignUpCode(request: request);
  }

  /// {@template amplify_core.amplify_auth_category.sign_in}
  /// Initiate sign in for user with [username] and optional [password].
  ///
  /// For Cognito flows, including a [password] will initiate an SRP sign-in,
  /// while excluding the [password] will initiate a custom auth sign-in.
  /// {@endtemplate}
  Future<SignInResult> signIn({
    required String username,
    String? password,
    SignInOptions? options,
  }) {
    final request = SignInRequest(
      username: username,
      password: password,
      options: options,
    );
    return defaultPlugin.signIn(request: request);
  }

  /// {@template amplify_core.amplify_auth_category.confirm_sign_in}
  /// Confirm the current sign in with the [confirmationValue] provided by the
  /// user.
  /// {@endtemplate}
  Future<SignInResult> confirmSignIn({
    required String confirmationValue,
    ConfirmSignInOptions? options,
  }) {
    final request = ConfirmSignInRequest(
      confirmationValue: confirmationValue,
      options: options,
    );
    return defaultPlugin.confirmSignIn(request: request);
  }

  /// {@template amplify_core.amplify_auth_category.sign_out}
  /// Sign the user out of the current device.
  ///
  /// Accepts advanced [options] for the request, which can be used for
  /// global sign out as well as other plugin-specific options.
  /// {@endtemplate}
  Future<SignOutResult> signOut({
    SignOutOptions? options,
  }) {
    final request = SignOutRequest(options: options);
    return defaultPlugin.signOut(request: request);
  }

  /// {@template amplify_core.amplify_auth_category.update_password}
  /// Update the password of the current user.
  ///
  /// There must be a user signed in to perform this action.
  ///
  /// Optionally accepts plugin-specific, advanced [options] for the request.
  /// {@endtemplate}
  Future<UpdatePasswordResult> updatePassword({
    required String oldPassword,
    required String newPassword,
    UpdatePasswordOptions? options,
  }) {
    final request = UpdatePasswordRequest(
      oldPassword: oldPassword,
      newPassword: newPassword,
      options: options,
    );
    return defaultPlugin.updatePassword(request: request);
  }

  /// {@template amplify_core.amplify_auth_category.reset_password}
  /// Initiates a password reset for the user with the given username.
  ///
  /// The [username] is a login identifier or an email/phone number, depending on
  /// the configuration.
  ///
  /// Optionally accepts plugin-specific, advanced [options] for the request.
  /// {@endtemplate}
  Future<ResetPasswordResult> resetPassword({
    required String username,
    ResetPasswordOptions? options,
  }) {
    final request = ResetPasswordRequest(
      username: username,
      options: options,
    );
    return defaultPlugin.resetPassword(request: request);
  }

  /// {@template amplify_core.amplify_auth_category.confirm_reset_password}
  /// Completes the password reset process given a username, new password,
  /// and confirmation code.
  ///
  /// The [username] is a login identifier or an email/phone number, depending on
  /// the configuration.
  ///
  /// Optionally accepts plugin-specific, advanced [options] for the request.
  /// {@endtemplate}
  Future<UpdatePasswordResult> confirmResetPassword({
    required String username,
    required String newPassword,
    required String confirmationCode,
    ConfirmResetPasswordOptions? options,
  }) {
    final request = ConfirmResetPasswordRequest(
      username: username,
      newPassword: newPassword,
      confirmationCode: confirmationCode,
      options: options,
    );
    return defaultPlugin.confirmResetPassword(request: request);
  }

  /// {@template amplify_core.amplify_auth_category.get_current_user}
  /// Retrieve the current active user.
  /// {@endtemplate}
  Future<AuthUser> getCurrentUser() => defaultPlugin.getCurrentUser();

  /// {@template amplify_core.amplify_auth_category.fetch_user_attributes}
  /// Fetch all user attributes associated with the current user.
  /// {@endtemplate}
  Future<List<AuthUserAttribute>> fetchUserAttributes({
    FetchUserAttributesOptions? options,
  }) {
    final request = FetchUserAttributesRequest(options: options);
    return defaultPlugin.fetchUserAttributes(request: request);
  }

  /// {@template amplify_core.amplify_auth_category.fetch_auth_session}
  /// Fetch the current auth session.
  ///
  /// For Cognito flows, this returns the User Pool tokens. AWS credentials
  /// can be returned as well by providing a `CognitoSessionOptions` value
  /// for [options].
  /// {@endtemplate}
  Future<AuthSession> fetchAuthSession({
    AuthSessionOptions? options,
  }) {
    final request = AuthSessionRequest(options: options);
    return defaultPlugin.fetchAuthSession(request: request);
  }

  /// {@template amplify_core.amplify_auth_category.sign_in_with_web_ui}
  /// Initiate sign in for a web-based flow, e.g. a social provider.
  /// {@endtemplate}
  Future<SignInResult> signInWithWebUI({
    AuthProvider? provider,
    SignInWithWebUIOptions? options,
  }) {
    final request = SignInWithWebUIRequest(
      provider: provider,
      options: options,
    );
    return defaultPlugin.signInWithWebUI(request: request);
  }

  /// {@template amplify_core.amplify_auth_category.update_user_attribute}
  /// Updates a single user attribute and returns a [UpdateUserAttributeResult].
  ///
  /// Accepts plugin-specific, advanced [options] for the request.
  /// {@endtemplate}
  Future<UpdateUserAttributeResult> updateUserAttribute({
    required UserAttributeKey userAttributeKey,
    required String value,
    UpdateUserAttributeOptions? options,
  }) {
    final request = UpdateUserAttributeRequest(
      userAttributeKey: userAttributeKey,
      value: value,
      options: options,
    );
    return defaultPlugin.updateUserAttribute(request: request);
  }

  /// {@template amplify_core.amplify_auth_category.update_user_attributes}
  /// Updates multiple user attributes and returns a map of
  /// [UpdateUserAttributeResult].
  ///
  /// Accepts plugin-specific, advanced [options] for the request.
  /// {@endtemplate}
  Future<Map<UserAttributeKey, UpdateUserAttributeResult>>
      updateUserAttributes({
    required List<AuthUserAttribute> attributes,
    UpdateUserAttributesOptions? options,
  }) {
    final request = UpdateUserAttributesRequest(
      attributes: attributes,
      options: options,
    );
    return defaultPlugin.updateUserAttributes(request: request);
  }

  /// {@template amplify_core.amplify_auth_category.confirm_user_attribute}
  /// Confirms a user attribute update and returns a
  /// [ConfirmUserAttributeResult].
  /// {@endtemplate}
  Future<ConfirmUserAttributeResult> confirmUserAttribute({
    required UserAttributeKey userAttributeKey,
    required String confirmationCode,
  }) {
    final request = ConfirmUserAttributeRequest(
      userAttributeKey: userAttributeKey,
      confirmationCode: confirmationCode,
    );
    return defaultPlugin.confirmUserAttribute(request: request);
  }

  /// {@template amplify_core.amplify_auth_category.resend_user_attribute_confirmation_code}
  /// Resends a confirmation code for the given attribute and returns a
  /// [ResendUserAttributeConfirmationCodeResult].
  ///
  /// Accepts plugin-specific, advanced [options] for the request.
  /// {@endtemplate}
  Future<ResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode({
    required UserAttributeKey userAttributeKey,
    ResendUserAttributeConfirmationCodeOptions? options,
  }) {
    final request = ResendUserAttributeConfirmationCodeRequest(
      userAttributeKey: userAttributeKey,
      options: options,
    );
    return defaultPlugin.resendUserAttributeConfirmationCode(request: request);
  }

  /// {@template amplify_core.amplify_auth_category.remember_device}
  /// Remembers the current device.
  /// {@endtemplate}
  Future<void> rememberDevice() => defaultPlugin.rememberDevice();

  /// {@template amplify_core.amplify_auth_category.forget_device}
  /// Forgets [device], or the current device, if no parameters are given.
  /// {@endtemplate}
  Future<void> forgetDevice([AuthDevice? device]) =>
      defaultPlugin.forgetDevice(device);

  /// {@template amplify_core.amplify_auth_category.fetch_devices}
  /// Retrieves all tracked devices for the current user.
  /// {@endtemplate}
  Future<List<AuthDevice>> fetchDevices() => defaultPlugin.fetchDevices();

  /// {@template amplify_core.amplify_auth_category.delete_user}
  /// Deletes the current authenticated user.
  /// {@endtemplate}
  Future<void> deleteUser() => defaultPlugin.deleteUser();
}
