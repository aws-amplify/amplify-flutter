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
        PluginUserAttributeKey extends UserAttributeKey,
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

  void initializeAuthProviderRepo(
      AmplifyAuthProviderRepository authProviderRepo) {
    throw UnimplementedError(
        'initializeAuthProviderRepo() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.sign_up}
  Future<PluginSignUpResult> signUp({
    required SignUpRequest<PluginSignUpOptions> request,
  }) {
    throw UnimplementedError('signUp() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.confirm_sign_up}
  Future<PluginConfirmSignupResult> confirmSignUp({
    required ConfirmSignUpRequest<PluginConfirmSignUpOptions> request,
  }) {
    throw UnimplementedError('confirmSignUp() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.resend_sign_up_code}
  Future<PluginResendSignUpCodeResult> resendSignUpCode({
    required ResendSignUpCodeRequest<PluginResendSignUpCodeOptions> request,
  }) {
    throw UnimplementedError('resendSignUpCode() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.sign_in}
  Future<PluginSignInResult> signIn({
    required SignInRequest<PluginSignInOptions> request,
  }) {
    throw UnimplementedError('signIn() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.confirm_sign_in}
  Future<PluginConfirmSignInResult> confirmSignIn({
    required ConfirmSignInRequest<PluginConfirmSignInOptions> request,
  }) {
    throw UnimplementedError('confirmSignIn() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.sign_out}
  Future<PluginSignOutResult> signOut({
    SignOutRequest<PluginSignOutOptions> request = const SignOutRequest(),
  }) {
    throw UnimplementedError('signOut() has not been implemented');
  }

  /// {@macro amplify_core.amplify_auth_category.update_password}
  Future<PluginUpdatePasswordResult> updatePassword({
    required UpdatePasswordRequest<PluginUpdatePasswordOptions> request,
  }) {
    throw UnimplementedError('updatePassword() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.reset_password}
  Future<PluginResetPasswordResult> resetPassword({
    required ResetPasswordRequest<PluginResetPasswordOptions> request,
  }) {
    throw UnimplementedError('resetPassword() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.confirm_reset_password}
  Future<PluginConfirmResetPasswordResult> confirmResetPassword({
    required ConfirmResetPasswordRequest<PluginConfirmResetPasswordOptions>
        request,
  }) {
    throw UnimplementedError(
      'confirmResetPassword() has not been implemented.',
    );
  }

  /// {@macro amplify_core.amplify_auth_category.get_current_user}
  Future<PluginAuthUser> getCurrentUser({
    AuthUserRequest<PluginAuthUserOptions> request = const AuthUserRequest(),
  }) {
    throw UnimplementedError('getCurrentUser() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.fetch_user_attributes}
  Future<List<PluginAuthUserAttribute>> fetchUserAttributes({
    FetchUserAttributesRequest<PluginFetchUserAttributeOptions> request =
        const FetchUserAttributesRequest(),
  }) {
    throw UnimplementedError('fetchUserAttributes() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.fetch_auth_session}
  Future<PluginAuthSession> fetchAuthSession({
    required AuthSessionRequest<PluginAuthSessionOptions> request,
  }) {
    throw UnimplementedError('fetchAuthSession() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.sign_in_with_web_ui}
  Future<PluginSignInWithWebUIResult> signInWithWebUI({
    SignInWithWebUIRequest<PluginSignInWithWebUIOptions> request =
        const SignInWithWebUIRequest(),
  }) {
    throw UnimplementedError('signInWithWebUI() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.update_user_attribute}
  Future<PluginUpdateUserAttributeResult> updateUserAttribute({
    required UpdateUserAttributeRequest<PluginUserAttributeKey,
            PluginUpdateUserAttributeOptions>
        request,
  }) {
    throw UnimplementedError('updateUserAttribute() has not been implemented.');
  }

  /// {@macro amplify_core.amplify_auth_category.update_user_attributes}
  Future<Map<PluginUserAttributeKey, PluginUpdateUserAttributeResult>>
      updateUserAttributes({
    required UpdateUserAttributesRequest<PluginUserAttributeKey,
            PluginUpdateUserAttributesOptions>
        request,
  }) {
    throw UnimplementedError(
      'updateUserAttributes() has not been implemented.',
    );
  }

  /// {@macro amplify_core.amplify_auth_category.confirm_user_attribute}
  Future<PluginConfirmUserAttributeResult> confirmUserAttribute({
    required ConfirmUserAttributeRequest<PluginUserAttributeKey,
            PluginConfirmUserAttributeOptions>
        request,
  }) {
    throw UnimplementedError(
      'confirmUserAttribute() has not been implemented.',
    );
  }

  /// {@macro amplify_core.amplify_auth_category.resend_user_attribute_confirmation_code}
  Future<PluginResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode({
    required ResendUserAttributeConfirmationCodeRequest<PluginUserAttributeKey,
            PluginResendUserAttributeConfirmationCodeOptions>
        request,
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
