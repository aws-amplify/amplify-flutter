/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
        PluginSignUpOptions extends SignUpOptions,
        PluginSignUpResult extends SignUpResult,
        PluginConfirmSignUpOptions extends ConfirmSignUpOptions,
        PluginConfirmSignupResult extends SignUpResult,
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
        PluginResendUserAttributeConfirmationCodeResult extends ResendUserAttributeConfirmationCodeResult>
    extends AmplifyPluginInterface {
  @override
  @nonVirtual
  Category get category => Category.auth;

  /// {@macro amplify_core.amplify_auth_category.sign_up}
  Future<PluginSignUpResult> signUp({
    required String username,
    required String password,
    PluginSignUpOptions? options,
  }) {
    throw UnimplementedError('signUp() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.confirm_sign_up}
  Future<PluginConfirmSignupResult> confirmSignUp({
    required String username,
    required String confirmationCode,
    PluginConfirmSignUpOptions? options,
  }) {
    throw UnimplementedError('confirmSignUp() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.resend_sign_up_code}
  Future<PluginResendSignUpCodeResult> resendSignUpCode({
    required String username,
    PluginResendSignUpCodeOptions? options,
  }) {
    throw UnimplementedError('resendSignUpCode() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.sign_in}
  Future<PluginSignInResult> signIn({
    required String username,
    String? password,
    PluginSignInOptions? options,
  }) {
    throw UnimplementedError('signIn() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.confirm_sign_in}
  Future<PluginConfirmSignInResult> confirmSignIn({
    required String confirmationValue,
    PluginConfirmSignInOptions? options,
  }) {
    throw UnimplementedError('confirmSignIn() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.sign_out}
  Future<PluginSignOutResult> signOut({
    PluginSignOutOptions? options,
  }) {
    throw UnimplementedError('signOut() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.update_password}
  Future<PluginUpdatePasswordResult> updatePassword({
    required String oldPassword,
    required String newPassword,
    PluginUpdatePasswordOptions? options,
  }) {
    throw UnimplementedError('updatePassword() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.reset_password}
  Future<PluginResetPasswordResult> resetPassword({
    required String username,
    PluginResetPasswordOptions? options,
  }) {
    throw UnimplementedError('resetPassword() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.confirm_reset_password}
  Future<PluginConfirmResetPasswordResult> confirmResetPassword({
    required String username,
    required String newPassword,
    required String confirmationCode,
    PluginConfirmResetPasswordOptions? options,
  }) {
    throw UnimplementedError(
      'confirmResetPassword() has not been implemented.',
    );
  }

  /// {@macro amplify_core.amplify_auth_category.get_current_user}
  Future<PluginAuthUser> getCurrentUser({
    PluginAuthUserOptions? options,
  }) {
    throw UnimplementedError('getCurrentUser() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.fetch_user_attributes}
  Future<List<PluginAuthUserAttribute>> fetchUserAttributes({
    PluginFetchUserAttributeOptions? options,
  }) {
    throw UnimplementedError('fetchUserAttributes() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.fetch_auth_session}
  Future<PluginAuthSession> fetchAuthSession({
    PluginAuthSessionOptions? options,
  }) {
    throw UnimplementedError('fetchAuthSession() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.sign_in_with_web_ui}
  Future<PluginSignInWithWebUIResult> signInWithWebUI({
    AuthProvider? provider,
    PluginSignInWithWebUIOptions? options,
  }) {
    throw UnimplementedError('signInWithWebUI() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.update_user_attribute}
  Future<PluginUpdateUserAttributeResult> updateUserAttribute({
    required PluginUserAttributeKey userAttributeKey,
    required String value,
    PluginUpdateUserAttributeOptions? options,
  }) {
    throw UnimplementedError('updateUserAttribute() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.update_user_attributes}
  Future<Map<PluginUserAttributeKey, PluginUpdateUserAttributeResult>>
      updateUserAttributes({
    required List<PluginAuthUserAttribute> attributes,
    PluginUpdateUserAttributesOptions? options,
  }) {
    throw UnimplementedError(
      'updateUserAttributes() has not been implemented.',
    );
  }

  /// {@macro amplify_core.amplify_auth_category.confirm_user_attribute}
  Future<PluginConfirmUserAttributeResult> confirmUserAttribute({
    required PluginUserAttributeKey userAttributeKey,
    required String confirmationCode,
    PluginConfirmUserAttributeOptions? options,
  }) {
    throw UnimplementedError(
      'confirmUserAttribute() has not been implemented.',
    );
  }

  /// {@macro amplify_core.amplify_auth_category.resend_user_attribute_confirmation_code}
  Future<PluginResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode({
    required PluginUserAttributeKey userAttributeKey,
    PluginResendUserAttributeConfirmationCodeOptions? options,
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
