// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
class AuthCategory<
    PluginAuthUser extends AuthUser,
    PluginUserAttributeKey extends AuthUserAttributeKey,
    PluginAuthUserAttribute extends AuthUserAttribute<PluginUserAttributeKey>,
    PluginAuthDevice extends AuthDevice,
    PluginSignUpOptions extends SignUpOptions,
    PluginSignUpResult extends SignUpResult,
    PluginConfirmSignUpOptions extends ConfirmSignUpOptions,
    PluginConfirmSignUpResult extends SignUpResult,
    PluginResendSignUpCodeOptions extends ResendSignUpCodeOptions,
    PluginResendSignUpCodeResult extends ResendSignUpCodeResult,
    PluginSignInOptions extends SignInOptions,
    PluginSignInResult extends SignInResult<PluginUserAttributeKey>,
    PluginConfirmSignInOptions extends ConfirmSignInOptions,
    PluginConfirmSignInResult extends SignInResult<PluginUserAttributeKey>,
    PluginSignOutOptions extends SignOutOptions,
    PluginSignOutResult extends SignOutResult,
    PluginUpdatePasswordOptions extends UpdatePasswordOptions,
    PluginUpdatePasswordResult extends UpdatePasswordResult,
    PluginResetPasswordOptions extends ResetPasswordOptions,
    PluginResetPasswordResult extends ResetPasswordResult,
    PluginConfirmResetPasswordOptions extends ConfirmResetPasswordOptions,
    PluginConfirmResetPasswordResult extends UpdatePasswordResult,
    PluginAuthUserOptions extends AuthUserOptions,
    PluginFetchUserAttributeOptions extends FetchUserAttributesOptions,
    PluginAuthSessionOptions extends AuthSessionOptions,
    PluginAuthSession extends AuthSession,
    PluginSignInWithWebUIOptions extends SignInWithWebUIOptions,
    PluginSignInWithWebUIResult extends SignInResult<PluginUserAttributeKey>,
    PluginUpdateUserAttributeOptions extends UpdateUserAttributeOptions,
    PluginUpdateUserAttributeResult extends UpdateUserAttributeResult,
    PluginUpdateUserAttributesOptions extends UpdateUserAttributesOptions,
    PluginConfirmUserAttributeOptions extends ConfirmUserAttributeOptions,
    PluginConfirmUserAttributeResult extends ConfirmUserAttributeResult,
    PluginResendUserAttributeConfirmationCodeOptions extends ResendUserAttributeConfirmationCodeOptions,
    PluginResendUserAttributeConfirmationCodeResult extends ResendUserAttributeConfirmationCodeResult,
    Plugin extends AuthPluginInterface<
        PluginAuthUser,
        PluginUserAttributeKey,
        PluginAuthUserAttribute,
        PluginAuthDevice,
        PluginSignUpOptions,
        PluginSignUpResult,
        PluginConfirmSignUpOptions,
        PluginConfirmSignUpResult,
        PluginResendSignUpCodeOptions,
        PluginResendSignUpCodeResult,
        PluginSignInOptions,
        PluginSignInResult,
        PluginConfirmSignInOptions,
        PluginConfirmSignInResult,
        PluginSignOutOptions,
        PluginSignOutResult,
        PluginUpdatePasswordOptions,
        PluginUpdatePasswordResult,
        PluginResetPasswordOptions,
        PluginResetPasswordResult,
        PluginConfirmResetPasswordOptions,
        PluginConfirmResetPasswordResult,
        PluginAuthUserOptions,
        PluginFetchUserAttributeOptions,
        PluginAuthSessionOptions,
        PluginAuthSession,
        PluginSignInWithWebUIOptions,
        PluginSignInWithWebUIResult,
        PluginUpdateUserAttributeOptions,
        PluginUpdateUserAttributeResult,
        PluginUpdateUserAttributesOptions,
        PluginConfirmUserAttributeOptions,
        PluginConfirmUserAttributeResult,
        PluginResendUserAttributeConfirmationCodeOptions,
        PluginResendUserAttributeConfirmationCodeResult>> extends AmplifyCategory<
    Plugin> {
  AuthCategory([Plugin? plugin]) : _pluginOverride = plugin;

  final Plugin? _pluginOverride;
  Plugin get plugin => _pluginOverride ?? defaultPlugin;

  @override
  @nonVirtual
  Category get category => Category.auth;

  /// Gets the registered plugin of type [P] as provided by a [pluginKey], e.g.
  ///
  /// ```dart
  /// Future<CognitoSignInResult> signInWithCognito(
  ///   String username,
  ///   String password,
  /// ) async {
  ///   final cognitoPlugin = Amplify.Auth.getPlugin(
  ///     AmplifyAuthCognito.pluginKey,
  ///   );
  ///   return cognitoPlugin.signIn(username: username, password: password);
  /// }
  /// ```
  AuthCategory<
      GetPluginAuthUser,
      GetPluginUserAttributeKey,
      GetPluginAuthUserAttribute,
      GetPluginAuthDevice,
      GetPluginSignUpOptions,
      GetPluginSignUpResult,
      GetPluginConfirmSignUpOptions,
      GetPluginConfirmSignUpResult,
      GetPluginResendSignUpCodeOptions,
      GetPluginResendSignUpCodeResult,
      GetPluginSignInOptions,
      GetPluginSignInResult,
      GetPluginConfirmSignInOptions,
      GetPluginConfirmSignInResult,
      GetPluginSignOutOptions,
      GetPluginSignOutResult,
      GetPluginUpdatePasswordOptions,
      GetPluginUpdatePasswordResult,
      GetPluginResetPasswordOptions,
      GetPluginResetPasswordResult,
      GetPluginConfirmResetPasswordOptions,
      GetPluginConfirmResetPasswordResult,
      GetPluginAuthUserOptions,
      GetPluginFetchUserAttributeOptions,
      GetPluginAuthSessionOptions,
      GetPluginAuthSession,
      GetPluginSignInWithWebUIOptions,
      GetPluginSignInWithWebUIResult,
      GetPluginUpdateUserAttributeOptions,
      GetPluginUpdateUserAttributeResult,
      GetPluginUpdateUserAttributesOptions,
      GetPluginConfirmUserAttributeOptions,
      GetPluginConfirmUserAttributeResult,
      GetPluginResendUserAttributeConfirmationCodeOptions,
      GetPluginResendUserAttributeConfirmationCodeResult,
      P> getPlugin<
          GetPluginAuthUser extends AuthUser,
          GetPluginUserAttributeKey extends AuthUserAttributeKey,
          GetPluginAuthUserAttribute extends AuthUserAttribute<
              GetPluginUserAttributeKey>,
          GetPluginAuthDevice extends AuthDevice,
          GetPluginSignUpOptions extends SignUpOptions,
          GetPluginSignUpResult extends SignUpResult,
          GetPluginConfirmSignUpOptions extends ConfirmSignUpOptions,
          GetPluginConfirmSignUpResult extends SignUpResult,
          GetPluginResendSignUpCodeOptions extends ResendSignUpCodeOptions,
          GetPluginResendSignUpCodeResult extends ResendSignUpCodeResult,
          GetPluginSignInOptions extends SignInOptions,
          GetPluginSignInResult extends SignInResult<GetPluginUserAttributeKey>,
          GetPluginConfirmSignInOptions extends ConfirmSignInOptions,
          GetPluginConfirmSignInResult extends SignInResult<
              GetPluginUserAttributeKey>,
          GetPluginSignOutOptions extends SignOutOptions,
          GetPluginSignOutResult extends SignOutResult,
          GetPluginUpdatePasswordOptions extends UpdatePasswordOptions,
          GetPluginUpdatePasswordResult extends UpdatePasswordResult,
          GetPluginResetPasswordOptions extends ResetPasswordOptions,
          GetPluginResetPasswordResult extends ResetPasswordResult,
          GetPluginConfirmResetPasswordOptions extends ConfirmResetPasswordOptions,
          GetPluginConfirmResetPasswordResult extends UpdatePasswordResult,
          GetPluginAuthUserOptions extends AuthUserOptions,
          GetPluginFetchUserAttributeOptions extends FetchUserAttributesOptions,
          GetPluginAuthSessionOptions extends AuthSessionOptions,
          GetPluginAuthSession extends AuthSession,
          GetPluginSignInWithWebUIOptions extends SignInWithWebUIOptions,
          GetPluginSignInWithWebUIResult extends SignInResult<
              GetPluginUserAttributeKey>,
          GetPluginUpdateUserAttributeOptions extends UpdateUserAttributeOptions,
          GetPluginUpdateUserAttributeResult extends UpdateUserAttributeResult,
          GetPluginUpdateUserAttributesOptions extends UpdateUserAttributesOptions,
          GetPluginConfirmUserAttributeOptions extends ConfirmUserAttributeOptions,
          GetPluginConfirmUserAttributeResult extends ConfirmUserAttributeResult,
          GetPluginResendUserAttributeConfirmationCodeOptions extends ResendUserAttributeConfirmationCodeOptions,
          GetPluginResendUserAttributeConfirmationCodeResult extends ResendUserAttributeConfirmationCodeResult,
          P extends AuthPluginInterface<
              GetPluginAuthUser,
              GetPluginUserAttributeKey,
              GetPluginAuthUserAttribute,
              GetPluginAuthDevice,
              GetPluginSignUpOptions,
              GetPluginSignUpResult,
              GetPluginConfirmSignUpOptions,
              GetPluginConfirmSignUpResult,
              GetPluginResendSignUpCodeOptions,
              GetPluginResendSignUpCodeResult,
              GetPluginSignInOptions,
              GetPluginSignInResult,
              GetPluginConfirmSignInOptions,
              GetPluginConfirmSignInResult,
              GetPluginSignOutOptions,
              GetPluginSignOutResult,
              GetPluginUpdatePasswordOptions,
              GetPluginUpdatePasswordResult,
              GetPluginResetPasswordOptions,
              GetPluginResetPasswordResult,
              GetPluginConfirmResetPasswordOptions,
              GetPluginConfirmResetPasswordResult,
              GetPluginAuthUserOptions,
              GetPluginFetchUserAttributeOptions,
              GetPluginAuthSessionOptions,
              GetPluginAuthSession,
              GetPluginSignInWithWebUIOptions,
              GetPluginSignInWithWebUIResult,
              GetPluginUpdateUserAttributeOptions,
              GetPluginUpdateUserAttributeResult,
              GetPluginUpdateUserAttributesOptions,
              GetPluginConfirmUserAttributeOptions,
              GetPluginConfirmUserAttributeResult,
              GetPluginResendUserAttributeConfirmationCodeOptions,
              GetPluginResendUserAttributeConfirmationCodeResult>>(
    AuthPluginKey<
            GetPluginAuthUser,
            GetPluginUserAttributeKey,
            GetPluginAuthUserAttribute,
            GetPluginAuthDevice,
            GetPluginSignUpOptions,
            GetPluginSignUpResult,
            GetPluginConfirmSignUpOptions,
            GetPluginConfirmSignUpResult,
            GetPluginResendSignUpCodeOptions,
            GetPluginResendSignUpCodeResult,
            GetPluginSignInOptions,
            GetPluginSignInResult,
            GetPluginConfirmSignInOptions,
            GetPluginConfirmSignInResult,
            GetPluginSignOutOptions,
            GetPluginSignOutResult,
            GetPluginUpdatePasswordOptions,
            GetPluginUpdatePasswordResult,
            GetPluginResetPasswordOptions,
            GetPluginResetPasswordResult,
            GetPluginConfirmResetPasswordOptions,
            GetPluginConfirmResetPasswordResult,
            GetPluginAuthUserOptions,
            GetPluginFetchUserAttributeOptions,
            GetPluginAuthSessionOptions,
            GetPluginAuthSession,
            GetPluginSignInWithWebUIOptions,
            GetPluginSignInWithWebUIResult,
            GetPluginUpdateUserAttributeOptions,
            GetPluginUpdateUserAttributeResult,
            GetPluginUpdateUserAttributesOptions,
            GetPluginConfirmUserAttributeOptions,
            GetPluginConfirmUserAttributeResult,
            GetPluginResendUserAttributeConfirmationCodeOptions,
            GetPluginResendUserAttributeConfirmationCodeResult,
            P>
        pluginKey,
  ) =>
      AuthCategory(
        plugins.singleWhere(
          (p) => p is P,
          orElse: () => throw PluginError(
            'No plugin registered for $pluginKey',
          ),
        ) as P,
      );

  /// {@template amplify_core.amplify_auth_category.sign_up}
  /// Create a new user with the given [username] and [password].
  /// {@endtemplate}
  Future<PluginSignUpResult> signUp({
    required String username,
    required String password,
    PluginSignUpOptions? options,
  }) =>
      plugin.signUp(
        username: username,
        password: password,
        options: options,
      );

  /// {@template amplify_core.amplify_auth_category.confirm_sign_up}
  /// Confirm the current sign up for [username] with the [confirmationCode]
  /// provided by the user.
  /// {@endtemplate}
  Future<PluginConfirmSignUpResult> confirmSignUp({
    required String username,
    required String confirmationCode,
    PluginConfirmSignUpOptions? options,
  }) =>
      plugin.confirmSignUp(
        username: username,
        confirmationCode: confirmationCode,
        options: options,
      );

  /// {@template amplify_core.amplify_auth_category.resend_sign_up_code}
  /// Resends the code that is used to confirm the user's account after sign up
  ///
  /// Resends the code to the user with the given [username], where [username]
  /// is a login identifier or an email/phone number, depending on the configuration
  ///
  /// Accepts plugin-specific, advanced [options] for the request
  /// {@endtemplate}
  Future<PluginResendSignUpCodeResult> resendSignUpCode({
    required String username,
    PluginResendSignUpCodeOptions? options,
  }) =>
      plugin.resendSignUpCode(
        username: username,
        options: options,
      );

  /// {@template amplify_core.amplify_auth_category.sign_in}
  /// Initiate sign in for user with [username] and optional [password].
  ///
  /// For Cognito flows, including a [password] will initiate an SRP sign-in,
  /// while excluding the [password] will initiate a custom auth sign-in.
  /// {@endtemplate}
  Future<PluginSignInResult> signIn({
    required String username,
    String? password,
    PluginSignInOptions? options,
  }) =>
      plugin.signIn(
        username: username,
        password: password,
        options: options,
      );

  /// {@template amplify_core.amplify_auth_category.confirm_sign_in}
  /// Confirm the current sign in with the [confirmationValue] provided by the
  /// user.
  /// {@endtemplate}
  Future<PluginConfirmSignInResult> confirmSignIn({
    required String confirmationValue,
    PluginConfirmSignInOptions? options,
  }) =>
      plugin.confirmSignIn(
        confirmationValue: confirmationValue,
        options: options,
      );

  /// {@template amplify_core.amplify_auth_category.sign_out}
  /// Sign the user out of the current device.
  ///
  /// Accepts advanced [options] for the request, which can be used for
  /// global sign out as well as other plugin-specific options.
  /// {@endtemplate}
  Future<PluginSignOutResult> signOut({
    PluginSignOutOptions? options,
  }) =>
      plugin.signOut(options: options);

  /// {@template amplify_core.amplify_auth_category.update_password}
  /// Update the password of the current user.
  ///
  /// There must be a user signed in to perform this action.
  ///
  /// Optionally accepts plugin-specific, advanced [options] for the request.
  /// {@endtemplate}
  Future<PluginUpdatePasswordResult> updatePassword({
    required String oldPassword,
    required String newPassword,
    PluginUpdatePasswordOptions? options,
  }) =>
      plugin.updatePassword(
        oldPassword: oldPassword,
        newPassword: newPassword,
        options: options,
      );

  /// {@template amplify_core.amplify_auth_category.reset_password}
  /// Initiates a password reset for the user with the given username.
  ///
  /// The [username] is a login identifier or an email/phone number, depending on
  /// the configuration.
  ///
  /// Optionally accepts plugin-specific, advanced [options] for the request.
  /// {@endtemplate}
  Future<PluginResetPasswordResult> resetPassword({
    required String username,
    PluginResetPasswordOptions? options,
  }) =>
      plugin.resetPassword(
        username: username,
        options: options,
      );

  /// {@template amplify_core.amplify_auth_category.confirm_reset_password}
  /// Completes the password reset process given a username, new password,
  /// and confirmation code.
  ///
  /// The [username] is a login identifier or an email/phone number, depending on
  /// the configuration.
  ///
  /// Optionally accepts plugin-specific, advanced [options] for the request.
  /// {@endtemplate}
  Future<PluginConfirmResetPasswordResult> confirmResetPassword({
    required String username,
    required String newPassword,
    required String confirmationCode,
    PluginConfirmResetPasswordOptions? options,
  }) =>
      plugin.confirmResetPassword(
        username: username,
        newPassword: newPassword,
        confirmationCode: confirmationCode,
        options: options,
      );

  /// {@template amplify_core.amplify_auth_category.get_current_user}
  /// Retrieve the current active user.
  /// {@endtemplate}
  Future<PluginAuthUser> getCurrentUser({
    PluginAuthUserOptions? options,
  }) =>
      plugin.getCurrentUser(options: options);

  /// {@template amplify_core.amplify_auth_category.fetch_user_attributes}
  /// Fetch all user attributes associated with the current user.
  /// {@endtemplate}
  Future<List<PluginAuthUserAttribute>> fetchUserAttributes({
    PluginFetchUserAttributeOptions? options,
  }) =>
      plugin.fetchUserAttributes(options: options);

  /// {@template amplify_core.amplify_auth_category.fetch_auth_session}
  /// Fetch the current auth session.
  ///
  /// For Cognito flows, this returns the User Pool tokens. AWS credentials
  /// can be returned as well by providing a `CognitoSessionOptions` value
  /// for [options].
  /// {@endtemplate}
  Future<PluginAuthSession> fetchAuthSession({
    PluginAuthSessionOptions? options,
  }) =>
      plugin.fetchAuthSession(options: options);

  /// {@template amplify_core.amplify_auth_category.sign_in_with_web_ui}
  /// Initiate sign in for a web-based flow, e.g. a social provider.
  /// {@endtemplate}
  Future<PluginSignInWithWebUIResult> signInWithWebUI({
    AuthProvider? provider,
    PluginSignInWithWebUIOptions? options,
  }) =>
      plugin.signInWithWebUI(
        provider: provider,
        options: options,
      );

  /// {@template amplify_core.amplify_auth_category.update_user_attribute}
  /// Updates a single user attribute and returns a [UpdateUserAttributeResult].
  ///
  /// Accepts plugin-specific, advanced [options] for the request.
  /// {@endtemplate}
  Future<PluginUpdateUserAttributeResult> updateUserAttribute({
    required PluginUserAttributeKey userAttributeKey,
    required String value,
    PluginUpdateUserAttributeOptions? options,
  }) =>
      plugin.updateUserAttribute(
        userAttributeKey: userAttributeKey,
        value: value,
        options: options,
      );

  /// {@template amplify_core.amplify_auth_category.update_user_attributes}
  /// Updates multiple user attributes and returns a map of
  /// [UpdateUserAttributeResult].
  ///
  /// Accepts plugin-specific, advanced [options] for the request.
  /// {@endtemplate}
  Future<Map<PluginUserAttributeKey, PluginUpdateUserAttributeResult>>
      updateUserAttributes({
    required List<PluginAuthUserAttribute> attributes,
    PluginUpdateUserAttributesOptions? options,
  }) =>
          plugin.updateUserAttributes(
            attributes: attributes,
            options: options,
          );

  /// {@template amplify_core.amplify_auth_category.confirm_user_attribute}
  /// Confirms a user attribute update and returns a
  /// [ConfirmUserAttributeResult].
  /// {@endtemplate}
  Future<PluginConfirmUserAttributeResult> confirmUserAttribute({
    required PluginUserAttributeKey userAttributeKey,
    required String confirmationCode,
    PluginConfirmUserAttributeOptions? options,
  }) =>
      plugin.confirmUserAttribute(
        userAttributeKey: userAttributeKey,
        confirmationCode: confirmationCode,
        options: options,
      );

  /// {@template amplify_core.amplify_auth_category.resend_user_attribute_confirmation_code}
  /// Resends a confirmation code for the given attribute and returns a
  /// [ResendUserAttributeConfirmationCodeResult].
  ///
  /// Accepts plugin-specific, advanced [options] for the request.
  /// {@endtemplate}
  Future<PluginResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode({
    required PluginUserAttributeKey userAttributeKey,
    PluginResendUserAttributeConfirmationCodeOptions? options,
  }) =>
          plugin.resendUserAttributeConfirmationCode(
            userAttributeKey: userAttributeKey,
            options: options,
          );

  /// {@template amplify_core.amplify_auth_category.remember_device}
  /// Remembers the current device.
  /// {@endtemplate}
  Future<void> rememberDevice() => plugin.rememberDevice();

  /// {@template amplify_core.amplify_auth_category.forget_device}
  /// Forgets [device], or the current device, if no parameters are given.
  /// {@endtemplate}
  Future<void> forgetDevice([PluginAuthDevice? device]) =>
      plugin.forgetDevice(device);

  /// {@template amplify_core.amplify_auth_category.fetch_devices}
  /// Retrieves all tracked devices for the current user.
  /// {@endtemplate}
  Future<List<PluginAuthDevice>> fetchDevices() => plugin.fetchDevices();

  /// {@template amplify_core.amplify_auth_category.delete_user}
  /// Deletes the current authenticated user.
  /// {@endtemplate}
  Future<void> deleteUser() => plugin.deleteUser();
}
