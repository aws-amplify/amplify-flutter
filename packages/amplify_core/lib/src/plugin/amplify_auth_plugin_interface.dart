// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// A plugin for the Amplify Auth category.
///
/// {@macro amplify_core.amplify_auth_category}
abstract class AuthPluginInterface extends AmplifyPluginInterface {
  @override
  @nonVirtual
  Category get category => Category.auth;

  /// {@macro amplify_core.amplify_auth_category.sign_up}
  Future<SignUpResult> signUp({
    required String username,
    required String password,
    SignUpOptions? options,
  }) {
    throw UnimplementedError('signUp() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.confirm_sign_up}
  Future<SignUpResult> confirmSignUp({
    required String username,
    required String confirmationCode,
    ConfirmSignUpOptions? options,
  }) {
    throw UnimplementedError('confirmSignUp() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.resend_sign_up_code}
  Future<ResendSignUpCodeResult> resendSignUpCode({
    required String username,
    ResendSignUpCodeOptions? options,
  }) {
    throw UnimplementedError('resendSignUpCode() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.sign_in}
  Future<SignInResult> signIn({
    required String username,
    String? password,
    SignInOptions? options,
  }) {
    throw UnimplementedError('signIn() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.confirm_sign_in}
  Future<SignInResult> confirmSignIn({
    required String confirmationValue,
    ConfirmSignInOptions? options,
  }) {
    throw UnimplementedError('confirmSignIn() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.sign_out}
  Future<SignOutResult> signOut({
    SignOutOptions? options,
  }) {
    throw UnimplementedError('signOut() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.update_password}
  Future<UpdatePasswordResult> updatePassword({
    required String oldPassword,
    required String newPassword,
    UpdatePasswordOptions? options,
  }) {
    throw UnimplementedError('updatePassword() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.reset_password}
  Future<ResetPasswordResult> resetPassword({
    required String username,
    ResetPasswordOptions? options,
  }) {
    throw UnimplementedError('resetPassword() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.confirm_reset_password}
  Future<ResetPasswordResult> confirmResetPassword({
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
  Future<AuthUser> getCurrentUser({
    GetCurrentUserOptions? options,
  }) {
    throw UnimplementedError('getCurrentUser() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.fetch_user_attributes}
  Future<List<AuthUserAttribute>> fetchUserAttributes({
    FetchUserAttributesOptions? options,
  }) {
    throw UnimplementedError('fetchUserAttributes() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.fetch_auth_session}
  Future<AuthSession> fetchAuthSession({
    FetchAuthSessionOptions? options,
  }) {
    throw UnimplementedError('fetchAuthSession() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.sign_in_with_web_ui}
  Future<SignInResult> signInWithWebUI({
    AuthProvider? provider,
    SignInWithWebUIOptions? options,
  }) {
    throw UnimplementedError('signInWithWebUI() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.update_user_attribute}
  Future<UpdateUserAttributeResult> updateUserAttribute({
    required AuthUserAttributeKey userAttributeKey,
    required String value,
    UpdateUserAttributeOptions? options,
  }) {
    throw UnimplementedError('updateUserAttribute() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.update_user_attributes}
  Future<Map<AuthUserAttributeKey, UpdateUserAttributeResult>>
      updateUserAttributes({
    required List<AuthUserAttribute> attributes,
    UpdateUserAttributesOptions? options,
  }) {
    throw UnimplementedError(
      'updateUserAttributes() has not been implemented.',
    );
  }

  /// {@macro amplify_core.amplify_auth_category.confirm_user_attribute}
  Future<ConfirmUserAttributeResult> confirmUserAttribute({
    required AuthUserAttributeKey userAttributeKey,
    required String confirmationCode,
    ConfirmUserAttributeOptions? options,
  }) {
    throw UnimplementedError(
      'confirmUserAttribute() has not been implemented.',
    );
  }

  /// {@macro amplify_core.amplify_auth_category.resend_user_attribute_confirmation_code}
  Future<ResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode({
    required AuthUserAttributeKey userAttributeKey,
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
  Future<void> forgetDevice([AuthDevice? device]) {
    throw UnimplementedError('forgetDevice() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.fetch_devices}
  Future<List<AuthDevice>> fetchDevices() {
    throw UnimplementedError('fetchDevices() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.delete_user}
  Future<void> deleteUser() {
    throw UnimplementedError('deleteUser() has not been implemented.');
  }
}
