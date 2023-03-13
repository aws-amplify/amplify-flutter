// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// A plugin for the Amplify Auth category.
///
/// {@macro amplify_core.amplify_auth_category}
abstract class AuthPluginInterface<
        PluginAuthUser extends AuthUser,
        PluginUserAttributeKey extends AuthUserAttributeKey,
        PluginAuthUserAttribute extends AuthUserAttribute<PluginUserAttributeKey>,
        PluginAuthDevice extends AuthDevice,
        PluginSignUpResult extends SignUpResult,
        PluginConfirmSignupResult extends SignUpResult,
        PluginResendSignUpCodeResult extends ResendSignUpCodeResult,
        PluginSignInResult extends SignInResult<PluginUserAttributeKey>,
        PluginConfirmSignInResult extends SignInResult<PluginUserAttributeKey>,
        PluginSignOutResult extends SignOutResult,
        PluginUpdatePasswordResult extends UpdatePasswordResult,
        PluginResetPasswordResult extends ResetPasswordResult,
        PluginConfirmResetPasswordResult extends ResetPasswordResult,
        PluginAuthSession extends AuthSession,
        PluginSignInWithWebUIResult extends SignInResult<PluginUserAttributeKey>,
        PluginUpdateUserAttributeResult extends UpdateUserAttributeResult,
        PluginConfirmUserAttributeResult extends ConfirmUserAttributeResult,
        PluginResendUserAttributeConfirmationCodeResult extends ResendUserAttributeConfirmationCodeResult>
    extends AmplifyPluginInterface {
  @override
  @nonVirtual
  Category get category => Category.auth;

  /// {@macro amplify_core.amplify_auth_category.sign_up}
  Future<PluginSignUpResult> signUp({
    required String username,
    required String password,
    SignUpOptions? options,
  }) {
    throw UnimplementedError('signUp() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.confirm_sign_up}
  Future<PluginConfirmSignupResult> confirmSignUp({
    required String username,
    required String confirmationCode,
    ConfirmSignUpOptions? options,
  }) {
    throw UnimplementedError('confirmSignUp() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.resend_sign_up_code}
  Future<PluginResendSignUpCodeResult> resendSignUpCode({
    required String username,
    ResendSignUpCodeOptions? options,
  }) {
    throw UnimplementedError('resendSignUpCode() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.sign_in}
  Future<PluginSignInResult> signIn({
    required String username,
    String? password,
    SignInOptions? options,
  }) {
    throw UnimplementedError('signIn() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.confirm_sign_in}
  Future<PluginConfirmSignInResult> confirmSignIn({
    required String confirmationValue,
    ConfirmSignInOptions? options,
  }) {
    throw UnimplementedError('confirmSignIn() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.sign_out}
  Future<PluginSignOutResult> signOut({
    SignOutOptions? options,
  }) {
    throw UnimplementedError('signOut() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.update_password}
  Future<PluginUpdatePasswordResult> updatePassword({
    required String oldPassword,
    required String newPassword,
    UpdatePasswordOptions? options,
  }) {
    throw UnimplementedError('updatePassword() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.reset_password}
  Future<PluginResetPasswordResult> resetPassword({
    required String username,
    ResetPasswordOptions? options,
  }) {
    throw UnimplementedError('resetPassword() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.confirm_reset_password}
  Future<PluginConfirmResetPasswordResult> confirmResetPassword({
    required String username,
    required String newPassword,
    required String confirmationCode,
    ConfirmResetPasswordOptions? options,
  }) {
    throw UnimplementedError(
      'confirmResetPassword() has not been implemented.',
    );
  }

  /// {@macro amplify_core.amplify_auth_category.get_current_user}
  Future<PluginAuthUser> getCurrentUser({
    GetCurrentUserOptions? options,
  }) {
    throw UnimplementedError('getCurrentUser() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.fetch_user_attributes}
  Future<List<PluginAuthUserAttribute>> fetchUserAttributes({
    FetchUserAttributesOptions? options,
  }) {
    throw UnimplementedError('fetchUserAttributes() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.fetch_auth_session}
  Future<PluginAuthSession> fetchAuthSession({
    FetchAuthSessionOptions? options,
  }) {
    throw UnimplementedError('fetchAuthSession() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.sign_in_with_web_ui}
  Future<PluginSignInWithWebUIResult> signInWithWebUI({
    AuthProvider? provider,
    SignInWithWebUIOptions? options,
  }) {
    throw UnimplementedError('signInWithWebUI() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.update_user_attribute}
  Future<PluginUpdateUserAttributeResult> updateUserAttribute({
    required PluginUserAttributeKey userAttributeKey,
    required String value,
    UpdateUserAttributeOptions? options,
  }) {
    throw UnimplementedError('updateUserAttribute() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.update_user_attributes}
  Future<Map<PluginUserAttributeKey, PluginUpdateUserAttributeResult>>
      updateUserAttributes({
    required List<PluginAuthUserAttribute> attributes,
    UpdateUserAttributesOptions? options,
  }) {
    throw UnimplementedError(
      'updateUserAttributes() has not been implemented.',
    );
  }

  /// {@macro amplify_core.amplify_auth_category.confirm_user_attribute}
  Future<PluginConfirmUserAttributeResult> confirmUserAttribute({
    required PluginUserAttributeKey userAttributeKey,
    required String confirmationCode,
    ConfirmUserAttributeOptions? options,
  }) {
    throw UnimplementedError(
      'confirmUserAttribute() has not been implemented.',
    );
  }

  /// {@macro amplify_core.amplify_auth_category.resend_user_attribute_confirmation_code}
  Future<PluginResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode({
    required PluginUserAttributeKey userAttributeKey,
    ResendUserAttributeConfirmationCodeOptions? options,
  }) {
    throw UnimplementedError(
      'resendUserAttributeConfirmationCode() has not been implemented.',
    );
  }

  /// {@macro amplify_core.amplify_auth_category.remember_device}
  Future<void> rememberDevice() {
    throw UnimplementedError('rememberDevice() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.forget_device}
  Future<void> forgetDevice([PluginAuthDevice? device]) {
    throw UnimplementedError('forgetDevice() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.fetch_devices}
  Future<List<PluginAuthDevice>> fetchDevices() {
    throw UnimplementedError('fetchDevices() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.delete_user}
  Future<void> deleteUser() {
    throw UnimplementedError('deleteUser() has not been implemented.');
  }
}
