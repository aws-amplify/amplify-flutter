// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/http/amplify_category_method.dart';
import 'package:meta/meta.dart';

/// {@category Auth}
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

  @override
  @nonVirtual
  Set<Category> get categoryDependencies => const {};

  /// Gets the registered plugin of type [Plugin] as provided by a [pluginKey], e.g.
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="get-plugin"?>
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
  Plugin getPlugin<Plugin extends AuthPluginInterface>(
    AuthPluginKey<Plugin> pluginKey,
  ) =>
      plugins.singleWhere(
        (p) => p is Plugin,
        orElse: () => throw PluginError(
          'No plugin registered for $pluginKey',
        ),
      ) as Plugin;

  /// {@template amplify_core.amplify_auth_category.sign_up}
  /// Create a new user with the given [username] and [password].
  ///
  /// Optionally accepts plugin [options] which allow customizing provider-specific
  /// behavior, e.g. the Cognito User Pool.
  ///
  /// For more information, see the
  /// [Amplify docs](https://docs.amplify.aws/lib/auth/signin/q/platform/flutter/#register-a-user).
  ///
  /// ## Examples
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="imports"?>
  /// ```dart
  /// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  /// import 'package:amplify_flutter/amplify_flutter.dart';
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="signup"?>
  /// ```dart
  /// /// Signs a user up with a username, password, and email. The required
  /// /// attributes may be different depending on your app's configuration.
  /// Future<void> signUpUser({
  ///   required String username,
  ///   required String password,
  ///   required String email,
  ///   String? phoneNumber,
  /// }) async {
  ///   try {
  ///     final userAttributes = {
  ///       AuthUserAttributeKey.email: email,
  ///       if (phoneNumber != null) AuthUserAttributeKey.phoneNumber: phoneNumber,
  ///       // additional attributes as needed
  ///     };
  ///     final result = await Amplify.Auth.signUp(
  ///       username: username,
  ///       password: password,
  ///       options: SignUpOptions(
  ///         userAttributes: userAttributes,
  ///       ),
  ///     );
  ///     return _handleSignUpResult(result);
  ///   } on AuthException catch (e) {
  ///     safePrint('Error signing up user: ${e.message}');
  ///   }
  /// }
  /// ```
  ///
  /// The next step in the sign up flow is to confirm the user. A confirmation code
  /// will be sent to the email or phone number provided during sign up. Prompt the
  /// user to check their device for the code sent by Cognito.
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="handle-signup"?>
  /// ```dart
  /// Future<void> _handleSignUpResult(SignUpResult result) async {
  ///   switch (result.nextStep.signUpStep) {
  ///     case AuthSignUpStep.confirmSignUp:
  ///       final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
  ///       _handleCodeDelivery(codeDeliveryDetails);
  ///     case AuthSignUpStep.done:
  ///       safePrint('Sign up is complete');
  ///   }
  /// }
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="handle-code"?>
  /// ```dart
  /// void _handleCodeDelivery(AuthCodeDeliveryDetails codeDeliveryDetails) {
  ///   safePrint(
  ///     'A confirmation code has been sent to ${codeDeliveryDetails.destination}. '
  ///     'Please check your ${codeDeliveryDetails.deliveryMedium.name} for the code.',
  ///   );
  /// }
  /// ```
  ///
  /// If you need to resend the sign up code at any point in the sign up process,
  /// call [resendSignUpCode].
  /// {@endtemplate}
  Future<SignUpResult> signUp({
    required String username,
    required String password,
    SignUpOptions? options,
  }) =>
      identifyCall(
        AuthCategoryMethod.signUp,
        () => defaultPlugin.signUp(
          username: username,
          password: password,
          options: options,
        ),
      );

  /// {@template amplify_core.amplify_auth_category.confirm_sign_up}
  /// Confirm the current sign up for [username] with the [confirmationCode]
  /// provided by the user.
  ///
  /// Optionally accepts plugin [options] which allow customizing provider-specific
  /// behavior, e.g. the Cognito User Pool.
  ///
  /// For more information, see the
  /// [Amplify docs](https://docs.amplify.aws/lib/auth/signin/q/platform/flutter/#register-a-user).
  ///
  /// ## Examples
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="imports"?>
  /// ```dart
  /// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  /// import 'package:amplify_flutter/amplify_flutter.dart';
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="confirm-signup"?>
  /// ```dart
  /// Future<void> confirmUser({
  ///   required String username,
  ///   required String confirmationCode,
  /// }) async {
  ///   try {
  ///     final result = await Amplify.Auth.confirmSignUp(
  ///       username: username,
  ///       confirmationCode: confirmationCode,
  ///     );
  ///     return _handleSignUpResult(result);
  ///   } on AuthException catch (e) {
  ///     safePrint('Error confirming user: ${e.message}');
  ///   }
  /// }
  /// ```
  ///
  /// After confirming the sign up, check the [SignUpResult] object to check if
  /// further confirmations are needed or if the sign up is complete.
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="handle-signup"?>
  /// ```dart
  /// Future<void> _handleSignUpResult(SignUpResult result) async {
  ///   switch (result.nextStep.signUpStep) {
  ///     case AuthSignUpStep.confirmSignUp:
  ///       final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
  ///       _handleCodeDelivery(codeDeliveryDetails);
  ///     case AuthSignUpStep.done:
  ///       safePrint('Sign up is complete');
  ///   }
  /// }
  /// ```
  ///
  /// Prompt the user to check the destination of the delivered code by examining
  /// the returned [AuthCodeDeliveryDetails] object.
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="handle-code"?>
  /// ```dart
  /// void _handleCodeDelivery(AuthCodeDeliveryDetails codeDeliveryDetails) {
  ///   safePrint(
  ///     'A confirmation code has been sent to ${codeDeliveryDetails.destination}. '
  ///     'Please check your ${codeDeliveryDetails.deliveryMedium.name} for the code.',
  ///   );
  /// }
  /// ```
  /// {@endtemplate}
  Future<SignUpResult> confirmSignUp({
    required String username,
    required String confirmationCode,
    ConfirmSignUpOptions? options,
  }) =>
      identifyCall(
        AuthCategoryMethod.confirmSignUp,
        () => defaultPlugin.confirmSignUp(
          username: username,
          confirmationCode: confirmationCode,
          options: options,
        ),
      );

  /// {@template amplify_core.amplify_auth_category.resend_sign_up_code}
  /// Resends the code that is used to confirm the user's account after sign up.
  ///
  /// [username] must be the same as the value passed to [signUp] and is either an
  /// identifier chosen by the user or their email/phone number, depending on the
  /// configuration.
  ///
  /// Optionally accepts plugin [options] which allow customizing provider-specific
  /// behavior, e.g. the Cognito User Pool.
  ///
  /// ## Examples
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="imports"?>
  /// ```dart
  /// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  /// import 'package:amplify_flutter/amplify_flutter.dart';
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="resend-signup-code"?>
  /// ```dart
  /// Future<void> resendSignUpCode(String username) async {
  ///   try {
  ///     final result = await Amplify.Auth.resendSignUpCode(
  ///       username: username,
  ///     );
  ///     final codeDeliveryDetails = result.codeDeliveryDetails;
  ///     _handleCodeDelivery(codeDeliveryDetails);
  ///   } on AuthException catch (e) {
  ///     safePrint('Error resending code: ${e.message}');
  ///   }
  /// }
  /// ```
  ///
  /// Prompt the user to check the destination of the delivered code by examining
  /// the returned [AuthCodeDeliveryDetails] object.
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="handle-code"?>
  /// ```dart
  /// void _handleCodeDelivery(AuthCodeDeliveryDetails codeDeliveryDetails) {
  ///   safePrint(
  ///     'A confirmation code has been sent to ${codeDeliveryDetails.destination}. '
  ///     'Please check your ${codeDeliveryDetails.deliveryMedium.name} for the code.',
  ///   );
  /// }
  /// ```
  /// {@endtemplate}
  Future<ResendSignUpCodeResult> resendSignUpCode({
    required String username,
    ResendSignUpCodeOptions? options,
  }) =>
      identifyCall(
        AuthCategoryMethod.resendSignUpCode,
        () => defaultPlugin.resendSignUpCode(
          username: username,
          options: options,
        ),
      );

  /// {@template amplify_core.amplify_auth_category.sign_in}
  /// Initiate sign in for user with [username] and optional [password].
  ///
  /// Optionally accepts plugin [options] which allow customizing provider-specific
  /// behavior, e.g. the Cognito User Pool.
  ///
  /// For more information, see the
  /// [Amplify docs](https://docs.amplify.aws/lib/auth/signin/q/platform/flutter/).
  ///
  /// ## Examples
  ///
  /// For Cognito flows, including a [password] will initiate an SRP sign-in,
  /// while excluding the [password] will initiate a custom auth sign-in.
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="imports"?>
  /// ```dart
  /// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  /// import 'package:amplify_flutter/amplify_flutter.dart';
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="signin"?>
  /// ```dart
  /// Future<void> signInUser(String username, String password) async {
  ///   try {
  ///     final result = await Amplify.Auth.signIn(
  ///       username: username,
  ///       password: password,
  ///     );
  ///     return _handleSignInResult(result);
  ///   } on AuthException catch (e) {
  ///     safePrint('Error signing in: ${e.message}');
  ///   }
  /// }
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="handle-signin"?>
  /// ```dart
  /// Future<void> _handleSignInResult(SignInResult result) async {
  ///   switch (result.nextStep.signInStep) {
  ///     // ···
  ///   }
  /// }
  /// ```
  ///
  /// If SMS MFA is enabled, prompt the user to check their phone for a code.
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="handle-confirm-signin-sms"?>
  /// ```dart
  /// Future<void> _handleSignInResult(SignInResult result) async {
  ///   switch (result.nextStep.signInStep) {
  ///     // ···
  ///     case AuthSignInStep.confirmSignInWithSmsMfaCode:
  ///       final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
  ///       _handleCodeDelivery(codeDeliveryDetails);
  ///     // ···
  ///   }
  /// }
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="handle-code"?>
  /// ```dart
  /// void _handleCodeDelivery(AuthCodeDeliveryDetails codeDeliveryDetails) {
  ///   safePrint(
  ///     'A confirmation code has been sent to ${codeDeliveryDetails.destination}. '
  ///     'Please check your ${codeDeliveryDetails.deliveryMedium.name} for the code.',
  ///   );
  /// }
  /// ```
  ///
  /// If the user was created by an administrator, a new password will be required.
  /// Prompt the user to choose a new password and pass the value to [confirmSignIn].
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="handle-confirm-signin-new-password"?>
  /// ```dart
  /// Future<void> _handleSignInResult(SignInResult result) async {
  ///   switch (result.nextStep.signInStep) {
  ///     // ···
  ///     case AuthSignInStep.confirmSignInWithNewPassword:
  ///       safePrint('Enter a new password to continue signing in');
  ///     // ···
  ///   }
  /// }
  /// ```
  ///
  /// If you've implemented a custom auth flow, the [SignInResult] will include the parameters
  /// of your challenge in the `additionalInfo` field. These parameters can be used to relay
  /// any information from your backend code which can be used to customize the flow however
  /// you'd like.
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="handle-confirm-signin-custom-challenge"?>
  /// ```dart
  /// Future<void> _handleSignInResult(SignInResult result) async {
  ///   switch (result.nextStep.signInStep) {
  ///     // ···
  ///     case AuthSignInStep.confirmSignInWithCustomChallenge:
  ///       final parameters = result.nextStep.additionalInfo;
  ///       final prompt = parameters['prompt']!;
  ///       safePrint(prompt);
  ///     // ···
  ///   }
  /// }
  /// ```
  ///
  /// If the user is required to reset their password before continuing, use the [resetPassword]
  /// API to initiate a password and follow the instructions to confirm the reset if
  /// necessary.
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="handle-confirm-signin-reset-password"?>
  /// ```dart
  /// Future<void> _handleSignInResult(SignInResult result) async {
  ///   switch (result.nextStep.signInStep) {
  ///     // ···
  ///     case AuthSignInStep.resetPassword:
  ///       final resetResult = await Amplify.Auth.resetPassword(
  ///         username: username,
  ///       );
  ///       await _handleResetPasswordResult(resetResult);
  ///     // ···
  ///   }
  /// }
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="handle-reset-password"?>
  /// ```dart
  /// Future<void> _handleResetPasswordResult(ResetPasswordResult result) async {
  ///   switch (result.nextStep.updateStep) {
  ///     case AuthResetPasswordStep.confirmResetPasswordWithCode:
  ///       final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
  ///       _handleCodeDelivery(codeDeliveryDetails);
  ///     case AuthResetPasswordStep.done:
  ///       safePrint('Successfully reset password');
  ///   }
  /// }
  /// ```
  ///
  /// If a user tries to sign in before completing their sign up, the [AuthSignInStep.confirmSignUp]
  /// step will be returned. This is the same step returned from [signUp] and requires a
  /// call to [confirmSignUp] before re-initiating the sign in flow.
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="handle-confirm-signin-confirm-signup"?>
  /// ```dart
  /// Future<void> _handleSignInResult(SignInResult result) async {
  ///   switch (result.nextStep.signInStep) {
  ///     // ···
  ///     case AuthSignInStep.confirmSignUp:
  ///       // Resend the sign up code to the registered device.
  ///       final resendResult = await Amplify.Auth.resendSignUpCode(
  ///         username: username,
  ///       );
  ///       _handleCodeDelivery(resendResult.codeDeliveryDetails);
  ///     // ···
  ///   }
  /// }
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="handle-code"?>
  /// ```dart
  /// void _handleCodeDelivery(AuthCodeDeliveryDetails codeDeliveryDetails) {
  ///   safePrint(
  ///     'A confirmation code has been sent to ${codeDeliveryDetails.destination}. '
  ///     'Please check your ${codeDeliveryDetails.deliveryMedium.name} for the code.',
  ///   );
  /// }
  /// ```
  ///
  /// When there are no more challenges and the sign in is complete, the next step will
  /// be [AuthSignInStep.done].
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="handle-confirm-signin-done"?>
  /// ```dart
  /// Future<void> _handleSignInResult(SignInResult result) async {
  ///   switch (result.nextStep.signInStep) {
  ///     // ···
  ///     case AuthSignInStep.done:
  ///       safePrint('Sign in is complete');
  ///     // ···
  ///   }
  /// }
  /// ```
  /// {@endtemplate}
  Future<SignInResult> signIn({
    required String username,
    String? password,
    SignInOptions? options,
  }) =>
      identifyCall(
        AuthCategoryMethod.signIn,
        () => defaultPlugin.signIn(
          username: username,
          password: password,
          options: options,
        ),
      );

  /// {@template amplify_core.amplify_auth_category.confirm_sign_in}
  /// Confirm the current sign in with the [confirmationValue] provided by the
  /// user.
  ///
  /// Optionally accepts plugin [options] which allow customizing provider-specific
  /// behavior, e.g. the Cognito User Pool.
  ///
  /// ## Examples
  ///
  /// For example, to confirm a sign in requring MFA:
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="imports"?>
  /// ```dart
  /// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  /// import 'package:amplify_flutter/amplify_flutter.dart';
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="confirm-signin"?>
  /// ```dart
  /// Future<void> confirmMfaUser(String mfaCode) async {
  ///   try {
  ///     final result = await Amplify.Auth.confirmSignIn(
  ///       confirmationValue: mfaCode,
  ///     );
  ///     return _handleSignInResult(result);
  ///   } on AuthException catch (e) {
  ///     safePrint('Error confirming MFA code: ${e.message}');
  ///   }
  /// }
  /// ```
  ///
  /// Confirming a sign in can still require additional confirmations which
  /// should be handled accordingly.
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="handle-signin"?>
  /// ```dart
  /// Future<void> _handleSignInResult(SignInResult result) async {
  ///   switch (result.nextStep.signInStep) {
  ///     // ···
  ///   }
  /// }
  /// ```
  ///
  /// See [signIn] for examples of all confirmation flows.
  /// {@endtemplate}
  Future<SignInResult> confirmSignIn({
    required String confirmationValue,
    ConfirmSignInOptions? options,
  }) =>
      identifyCall(
        AuthCategoryMethod.confirmSignIn,
        () => defaultPlugin.confirmSignIn(
          confirmationValue: confirmationValue,
          options: options,
        ),
      );

  /// {@template amplify_core.amplify_auth_category.sign_out}
  /// Sign the user out of the current device.
  ///
  /// Optionally accepts plugin [options] which allow customizing provider-specific
  /// behavior, e.g. the Cognito User Pool.
  ///
  /// For more information, see the
  /// [Amplify docs](https://docs.amplify.aws/lib/auth/signOut/q/platform/flutter/).
  ///
  /// ## Examples
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="imports"?>
  /// ```dart
  /// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  /// import 'package:amplify_flutter/amplify_flutter.dart';
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="signout"?>
  /// ```dart
  /// Future<void> signOutCurrentUser() async {
  ///   final result = await Amplify.Auth.signOut();
  ///   if (result is CognitoCompleteSignOut) {
  ///     safePrint('Sign out completed successfully');
  ///   } else if (result is CognitoFailedSignOut) {
  ///     safePrint('Error signing user out: ${result.exception.message}');
  ///   }
  /// }
  /// ```
  ///
  /// You can pass [options] for the request, which can be used for
  /// global sign out as well as other plugin-specific options.
  ///
  /// In the case of the Cognito plugin, passing `globalSignOut: true`
  /// to the API can result in instances of partial sign out, where
  /// the user's session is cleared locally, but an error occurred
  /// performing global sign out. In this case, the exception is returned
  /// along with the token which can be used to manually retry the
  /// global sign out if desired.
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="signout-globally"?>
  /// ```dart
  /// Future<void> signOutGlobally() async {
  ///   final result = await Amplify.Auth.signOut(
  ///     options: const SignOutOptions(globalSignOut: true),
  ///   );
  ///   if (result is CognitoCompleteSignOut) {
  ///     safePrint('Sign out completed successfully');
  ///   } else if (result is CognitoPartialSignOut) {
  ///     final globalSignOutException = result.globalSignOutException!;
  ///     final accessToken = globalSignOutException.accessToken;
  ///     // Retry the global sign out using the access token, if desired
  ///     // ...
  ///     safePrint('Error signing user out: ${globalSignOutException.message}');
  ///   } else if (result is CognitoFailedSignOut) {
  ///     safePrint('Error signing user out: ${result.exception.message}');
  ///   }
  /// }
  /// ```
  /// {@endtemplate}
  Future<SignOutResult> signOut({
    SignOutOptions? options,
  }) =>
      identifyCall(
        AuthCategoryMethod.signOut,
        () => defaultPlugin.signOut(options: options),
      );

  /// {@template amplify_core.amplify_auth_category.update_password}
  /// Update the password of the current user.
  ///
  /// **NOTE**: There must be a user signed in to perform this action.
  ///
  /// Optionally accepts plugin [options] which allow customizing provider-specific
  /// behavior, e.g. the Cognito User Pool.
  ///
  /// For more information, see the
  /// [Amplify docs](https://docs.amplify.aws/lib/auth/password_management/q/platform/flutter/#change-password).
  ///
  /// ## Examples
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="imports"?>
  /// ```dart
  /// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  /// import 'package:amplify_flutter/amplify_flutter.dart';
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="update-password"?>
  /// ```dart
  /// Future<void> updatePassword({
  ///   required String oldPassword,
  ///   required String newPassword,
  /// }) async {
  ///   try {
  ///     await Amplify.Auth.updatePassword(
  ///       oldPassword: oldPassword,
  ///       newPassword: newPassword,
  ///     );
  ///   } on AmplifyException catch (e) {
  ///     safePrint('Error updating password: ${e.message}');
  ///   }
  /// }
  /// ```
  /// {@endtemplate}
  Future<UpdatePasswordResult> updatePassword({
    required String oldPassword,
    required String newPassword,
    UpdatePasswordOptions? options,
  }) =>
      identifyCall(
        AuthCategoryMethod.updatePassword,
        () => defaultPlugin.updatePassword(
          oldPassword: oldPassword,
          newPassword: newPassword,
          options: options,
        ),
      );

  /// {@template amplify_core.amplify_auth_category.reset_password}
  /// Initiates a password reset for the user with the given username.
  ///
  /// [username] must be the same as the value used when signing in and is either an
  /// identifier chosen by the user or their email/phone number, depending on the
  /// configuration.
  ///
  /// Optionally accepts plugin [options] which allow customizing provider-specific
  /// behavior, e.g. the Cognito User Pool.
  ///
  /// For more information, see the
  /// [Amplify docs](https://docs.amplify.aws/lib/auth/password_management/q/platform/flutter/#reset-password).
  ///
  /// ## Examples
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="imports"?>
  /// ```dart
  /// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  /// import 'package:amplify_flutter/amplify_flutter.dart';
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="reset-password"?>
  /// ```dart
  /// Future<void> resetPassword(String username) async {
  ///   try {
  ///     final result = await Amplify.Auth.resetPassword(
  ///       username: username,
  ///     );
  ///     return _handleResetPasswordResult(result);
  ///   } on AuthException catch (e) {
  ///     safePrint('Error resetting password: ${e.message}');
  ///   }
  /// }
  /// ```
  ///
  /// If further confirmation is required before the reset is complete, the next
  /// step will be returned as part of the [ResetPasswordResult].
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="handle-reset-password"?>
  /// ```dart
  /// Future<void> _handleResetPasswordResult(ResetPasswordResult result) async {
  ///   switch (result.nextStep.updateStep) {
  ///     case AuthResetPasswordStep.confirmResetPasswordWithCode:
  ///       final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
  ///       _handleCodeDelivery(codeDeliveryDetails);
  ///     case AuthResetPasswordStep.done:
  ///       safePrint('Successfully reset password');
  ///   }
  /// }
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="handle-code"?>
  /// ```dart
  /// void _handleCodeDelivery(AuthCodeDeliveryDetails codeDeliveryDetails) {
  ///   safePrint(
  ///     'A confirmation code has been sent to ${codeDeliveryDetails.destination}. '
  ///     'Please check your ${codeDeliveryDetails.deliveryMedium.name} for the code.',
  ///   );
  /// }
  /// ```
  ///
  /// In order to complete the password reset, check the returned [ResetPasswordResult]
  /// for details on where the confirmation code was sent, then call [confirmResetPassword]
  /// with the confirmation code and the new password.
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="confirm-reset-password"?>
  /// ```dart
  /// Future<void> confirmResetPassword({
  ///   required String username,
  ///   required String newPassword,
  ///   required String confirmationCode,
  /// }) async {
  ///   try {
  ///     final result = await Amplify.Auth.confirmResetPassword(
  ///       username: username,
  ///       newPassword: newPassword,
  ///       confirmationCode: confirmationCode,
  ///     );
  ///     safePrint('Password reset complete: ${result.isPasswordReset}');
  ///   } on AuthException catch (e) {
  ///     safePrint('Error resetting password: ${e.message}');
  ///   }
  /// }
  /// ```
  /// {@endtemplate}
  Future<ResetPasswordResult> resetPassword({
    required String username,
    ResetPasswordOptions? options,
  }) =>
      identifyCall(
        AuthCategoryMethod.resetPassword,
        () => defaultPlugin.resetPassword(
          username: username,
          options: options,
        ),
      );

  /// {@template amplify_core.amplify_auth_category.confirm_reset_password}
  /// Completes the password reset process given a username, new password,
  /// and the confirmation code which was sent calling [resetPassword].
  ///
  /// [username] must be the same as the value used when signing in and is either an
  /// identifier chosen by the user or their email/phone number, depending on the
  /// configuration.
  ///
  /// Optionally accepts plugin [options] which allow customizing provider-specific
  /// behavior, e.g. the Cognito User Pool.
  ///
  /// For more information, see the
  /// [Amplify docs](https://docs.amplify.aws/lib/auth/password_management/q/platform/flutter/#reset-password).
  ///
  /// ## Examples
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="imports"?>
  /// ```dart
  /// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  /// import 'package:amplify_flutter/amplify_flutter.dart';
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="confirm-reset-password"?>
  /// ```dart
  /// Future<void> confirmResetPassword({
  ///   required String username,
  ///   required String newPassword,
  ///   required String confirmationCode,
  /// }) async {
  ///   try {
  ///     final result = await Amplify.Auth.confirmResetPassword(
  ///       username: username,
  ///       newPassword: newPassword,
  ///       confirmationCode: confirmationCode,
  ///     );
  ///     safePrint('Password reset complete: ${result.isPasswordReset}');
  ///   } on AuthException catch (e) {
  ///     safePrint('Error resetting password: ${e.message}');
  ///   }
  /// }
  /// ```
  /// {@endtemplate}
  Future<ResetPasswordResult> confirmResetPassword({
    required String username,
    required String newPassword,
    required String confirmationCode,
    ConfirmResetPasswordOptions? options,
  }) =>
      identifyCall(
        AuthCategoryMethod.confirmResetPassword,
        () => defaultPlugin.confirmResetPassword(
          username: username,
          newPassword: newPassword,
          confirmationCode: confirmationCode,
          options: options,
        ),
      );

  /// {@template amplify_core.amplify_auth_category.get_current_user}
  /// Retrieves the current active user.
  ///
  /// Optionally accepts plugin [options] which allow customizing provider-specific
  /// behavior.
  ///
  /// For more information, see the
  /// [Amplify docs](https://docs.amplify.aws/lib/auth/getting-started/q/platform/flutter/#check-the-current-auth-session).
  ///
  /// ## Examples
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="imports"?>
  /// ```dart
  /// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  /// import 'package:amplify_flutter/amplify_flutter.dart';
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="get-current-user"?>
  /// ```dart
  /// Future<String?> getCurrentUserId() async {
  ///   try {
  ///     final user = await Amplify.Auth.getCurrentUser();
  ///     return user.userId;
  ///   } on AuthException catch (e) {
  ///     safePrint('Could not retrieve current user: ${e.message}');
  ///     return null;
  ///   }
  /// }
  /// ```
  /// {@endtemplate}
  Future<AuthUser> getCurrentUser({
    GetCurrentUserOptions? options,
  }) =>
      identifyCall(
        AuthCategoryMethod.getCurrentUser,
        () => defaultPlugin.getCurrentUser(options: options),
      );

  /// {@template amplify_core.amplify_auth_category.fetch_user_attributes}
  /// Fetch all user attributes associated with the current user.
  ///
  /// Optionally accepts plugin [options] which allow customizing provider-specific
  /// behavior, e.g. the Cognito User Pool.
  ///
  /// For more information, see the
  /// [Amplify docs](https://docs.amplify.aws/lib/auth/user-attributes/q/platform/flutter/#fetch-the-current-users-attributes).
  ///
  /// ## Examples
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="imports"?>
  /// ```dart
  /// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  /// import 'package:amplify_flutter/amplify_flutter.dart';
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="fetch-user-attributes"?>
  /// ```dart
  /// Future<void> fetchCurrentUserAttributes() async {
  ///   try {
  ///     final result = await Amplify.Auth.fetchUserAttributes();
  ///     for (final element in result) {
  ///       safePrint('key: ${element.userAttributeKey}; value: ${element.value}');
  ///     }
  ///   } on AuthException catch (e) {
  ///     safePrint('Error fetching user attributes: ${e.message}');
  ///   }
  /// }
  /// ```
  /// {@endtemplate}
  Future<List<AuthUserAttribute>> fetchUserAttributes({
    FetchUserAttributesOptions? options,
  }) =>
      identifyCall(
        AuthCategoryMethod.fetchUserAttributes,
        () => defaultPlugin.fetchUserAttributes(options: options),
      );

  /// {@template amplify_core.amplify_auth_category.fetch_auth_session}
  /// Fetch the current auth session.
  ///
  /// Optionally accepts plugin [options] which allow customizing provider-specific
  /// behavior.
  ///
  /// For more information, see the
  /// [Amplify docs](https://docs.amplify.aws/lib/auth/access_credentials/q/platform/flutter/).
  ///
  /// ## Examples
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="imports"?>
  /// ```dart
  /// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  /// import 'package:amplify_flutter/amplify_flutter.dart';
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="fetch-auth-session"?>
  /// ```dart
  /// Future<void> fetchAuthSession() async {
  ///   try {
  ///     final result = await Amplify.Auth.fetchAuthSession();
  ///     safePrint('User is signed in: ${result.isSignedIn}');
  ///   } on AuthException catch (e) {
  ///     safePrint('Error retrieving auth session: ${e.message}');
  ///   }
  /// }
  /// ```
  ///
  /// Sometimes it can be helpful to retrieve the instance of the underlying plugin
  /// which has more specific typing. In the case of Cognito, calling [fetchAuthSession]
  /// on the Cognito plugin returns AWS-specific values such as the identity ID,
  /// AWS credentials, and Cognito User Pool tokens.
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="fetch-cognito-auth-session"?>
  /// ```dart
  /// Future<void> fetchCognitoAuthSession() async {
  ///   try {
  ///     final cognitoPlugin = Amplify.Auth.getPlugin(AmplifyAuthCognito.pluginKey);
  ///     final result = await cognitoPlugin.fetchAuthSession();
  ///     final identityId = result.identityIdResult.value;
  ///     safePrint("Current user's identity ID: $identityId");
  ///   } on AuthException catch (e) {
  ///     safePrint('Error retrieving auth session: ${e.message}');
  ///   }
  /// }
  /// ```
  /// {@endtemplate}
  Future<AuthSession> fetchAuthSession({
    FetchAuthSessionOptions? options,
  }) =>
      identifyCall(
        AuthCategoryMethod.fetchAuthSession,
        () => defaultPlugin.fetchAuthSession(options: options),
      );

  /// {@template amplify_core.amplify_auth_category.sign_in_with_web_ui}
  /// Initiate sign in for a web-based flow, e.g. a social provider like Facebook,
  /// Google, or Apple.
  ///
  /// If no [provider] is supplied, the default login page will be shown. By
  /// specifying a [provider], the webpage will open directly to the provider's
  /// login page.
  ///
  /// Optionally accepts plugin [options] which allow customizing provider-specific
  /// behavior, e.g. the Cognito User Pool.
  ///
  /// For more information, see the
  /// [Amplify docs](https://docs.amplify.aws/lib/auth/social/q/platform/flutter/).
  ///
  /// ## Examples
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="imports"?>
  /// ```dart
  /// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  /// import 'package:amplify_flutter/amplify_flutter.dart';
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="signin-webui"?>
  /// ```dart
  /// Future<void> socialSignIn() async {
  ///   try {
  ///     final result = await Amplify.Auth.signInWithWebUI(
  ///       provider: AuthProvider.google,
  ///     );
  ///     return _handleSignInResult(result);
  ///   } on AuthException catch (e) {
  ///     safePrint('Error signing in: ${e.message}');
  ///   }
  /// }
  /// ```
  /// {@endtemplate}
  Future<SignInResult> signInWithWebUI({
    AuthProvider? provider,
    SignInWithWebUIOptions? options,
  }) =>
      identifyCall(
        AuthCategoryMethod.signInWithWebUI,
        () => defaultPlugin.signInWithWebUI(
          provider: provider,
          options: options,
        ),
      );

  /// {@template amplify_core.amplify_auth_category.update_user_attribute}
  /// Updates a single user attribute.
  ///
  /// > To update multiple attributes, use [updateUserAttributes] instead.
  ///
  /// Optionally accepts plugin [options] which allow customizing provider-specific
  /// behavior, e.g. the Cognito User Pool.
  ///
  /// For more information, see the
  /// [Amplify docs](https://docs.amplify.aws/lib/auth/user-attributes/q/platform/flutter/#update-user-attribute).
  ///
  /// ## Examples
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="imports"?>
  /// ```dart
  /// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  /// import 'package:amplify_flutter/amplify_flutter.dart';
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="update-user-attribute"?>
  /// ```dart
  /// Future<void> updateUserEmail({
  ///   required String newEmail,
  /// }) async {
  ///   try {
  ///     final result = await Amplify.Auth.updateUserAttribute(
  ///       userAttributeKey: AuthUserAttributeKey.email,
  ///       value: newEmail,
  ///     );
  ///     return _handleUpdateUserAttributeResult(result);
  ///   } on AuthException catch (e) {
  ///     safePrint('Error updating user attribute: ${e.message}');
  ///   }
  /// }
  /// ```
  ///
  /// If the update requires further confirmation, follow the next step returned
  /// in the [UpdateUserAttributeResult].
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="handle-update-user-attribute"?>
  /// ```dart
  /// void _handleUpdateUserAttributeResult(
  ///   UpdateUserAttributeResult result,
  /// ) {
  ///   switch (result.nextStep.updateAttributeStep) {
  ///     case AuthUpdateAttributeStep.confirmAttributeWithCode:
  ///       final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
  ///       _handleCodeDelivery(codeDeliveryDetails);
  ///     case AuthUpdateAttributeStep.done:
  ///       safePrint('Successfully updated attribute');
  ///   }
  /// }
  /// ```
  ///
  /// Then call [confirmUserAttribute] with the delivered confirmation code.
  /// {@endtemplate}
  Future<UpdateUserAttributeResult> updateUserAttribute({
    required AuthUserAttributeKey userAttributeKey,
    required String value,
    UpdateUserAttributeOptions? options,
  }) =>
      identifyCall(
        AuthCategoryMethod.updateUserAttribute,
        () => defaultPlugin.updateUserAttribute(
          userAttributeKey: userAttributeKey,
          value: value,
          options: options,
        ),
      );

  /// {@template amplify_core.amplify_auth_category.update_user_attributes}
  /// Updates multiple user attributes at once.
  ///
  /// Optionally accepts plugin [options] which allow customizing provider-specific
  /// behavior, e.g. the Cognito User Pool.
  ///
  /// For more information, see the
  /// [Amplify docs](https://docs.amplify.aws/lib/auth/user-attributes/q/platform/flutter/#update-user-attribute).
  ///
  /// ## Examples
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="imports"?>
  /// ```dart
  /// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  /// import 'package:amplify_flutter/amplify_flutter.dart';
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="update-user-attributes"?>
  /// ```dart
  /// Future<void> updateUserAttributes() async {
  ///   const attributes = [
  ///     AuthUserAttribute(
  ///       userAttributeKey: AuthUserAttributeKey.email,
  ///       value: 'email@email.com',
  ///     ),
  ///     AuthUserAttribute(
  ///       userAttributeKey: AuthUserAttributeKey.familyName,
  ///       value: 'MyFamilyName',
  ///     ),
  ///   ];
  ///   try {
  ///     final result = await Amplify.Auth.updateUserAttributes(
  ///       attributes: attributes,
  ///     );
  ///     result.forEach((key, value) {
  ///       switch (value.nextStep.updateAttributeStep) {
  ///         case AuthUpdateAttributeStep.confirmAttributeWithCode:
  ///           final destination = value.nextStep.codeDeliveryDetails?.destination;
  ///           safePrint('Confirmation code sent to $destination for $key');
  ///         case AuthUpdateAttributeStep.done:
  ///           safePrint('Update completed for $key');
  ///       }
  ///     });
  ///   } on AuthException catch (e) {
  ///     safePrint('Error updating user attributes: ${e.message}');
  ///   }
  /// }
  /// ```
  /// {@endtemplate}
  Future<Map<AuthUserAttributeKey, UpdateUserAttributeResult>>
      updateUserAttributes({
    required List<AuthUserAttribute> attributes,
    UpdateUserAttributesOptions? options,
  }) =>
          identifyCall(
            AuthCategoryMethod.updateUserAttributes,
            () => defaultPlugin.updateUserAttributes(
              attributes: attributes,
              options: options,
            ),
          );

  /// {@template amplify_core.amplify_auth_category.confirm_user_attribute}
  /// Confirms a user attribute update initiated with either [updateUserAttribute]
  /// or [updateUserAttributes].
  ///
  /// Optionally accepts plugin [options] which allow customizing provider-specific
  /// behavior, e.g. the Cognito User Pool.
  ///
  /// For more information, see the
  /// [Amplify docs](https://docs.amplify.aws/lib/auth/user-attributes/q/platform/flutter/#verify-user-attribute).
  ///
  /// ## Examples
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="imports"?>
  /// ```dart
  /// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  /// import 'package:amplify_flutter/amplify_flutter.dart';
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="confirm-user-attribute"?>
  /// ```dart
  /// Future<void> verifyAttributeUpdate() async {
  ///   try {
  ///     await Amplify.Auth.confirmUserAttribute(
  ///       userAttributeKey: AuthUserAttributeKey.email,
  ///       confirmationCode: '390739',
  ///     );
  ///   } on AuthException catch (e) {
  ///     safePrint('Error confirming attribute update: ${e.message}');
  ///   }
  /// }
  /// ```
  /// {@endtemplate}
  Future<ConfirmUserAttributeResult> confirmUserAttribute({
    required AuthUserAttributeKey userAttributeKey,
    required String confirmationCode,
    ConfirmUserAttributeOptions? options,
  }) =>
      identifyCall(
        AuthCategoryMethod.confirmUserAttribute,
        () => defaultPlugin.confirmUserAttribute(
          userAttributeKey: userAttributeKey,
          confirmationCode: confirmationCode,
          options: options,
        ),
      );

  /// {@template amplify_core.amplify_auth_category.resend_user_attribute_confirmation_code}
  /// Resends a confirmation code for the given [userAttributeKey], if required, while
  /// updating the attribute.
  ///
  /// If a confirmation code sent as the result of a [updateUserAttribute] or [updateUserAttributes]
  /// call expires, you can use this API to request a new one.
  ///
  /// Optionally accepts plugin [options] which allow customizing provider-specific
  /// behavior, e.g. the Cognito User Pool.
  ///
  /// For more information, see the
  /// [Amplify docs](https://docs.amplify.aws/lib/auth/user-attributes/q/platform/flutter/#resend-verification-code).
  ///
  /// ## Examples
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="imports"?>
  /// ```dart
  /// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  /// import 'package:amplify_flutter/amplify_flutter.dart';
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="resend-user-attribute-code"?>
  /// ```dart
  /// Future<void> resendVerificationCode() async {
  ///   try {
  ///     final result = await Amplify.Auth.resendUserAttributeConfirmationCode(
  ///       userAttributeKey: AuthUserAttributeKey.email,
  ///     );
  ///     _handleCodeDelivery(result.codeDeliveryDetails);
  ///   } on AuthException catch (e) {
  ///     safePrint('Error resending code: ${e.message}');
  ///   }
  /// }
  /// ```
  ///
  /// The details of where the code will be delivered are returned in the result's
  /// [ResendUserAttributeConfirmationCodeResult.codeDeliveryDetails] property
  /// and should be used to prompt the user on where to look for the code.
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="handle-code"?>
  /// ```dart
  /// void _handleCodeDelivery(AuthCodeDeliveryDetails codeDeliveryDetails) {
  ///   safePrint(
  ///     'A confirmation code has been sent to ${codeDeliveryDetails.destination}. '
  ///     'Please check your ${codeDeliveryDetails.deliveryMedium.name} for the code.',
  ///   );
  /// }
  /// ```
  /// {@endtemplate}
  Future<ResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode({
    required AuthUserAttributeKey userAttributeKey,
    ResendUserAttributeConfirmationCodeOptions? options,
  }) =>
          identifyCall(
            AuthCategoryMethod.resendUserAttributeConfirmationCode,
            () => defaultPlugin.resendUserAttributeConfirmationCode(
              userAttributeKey: userAttributeKey,
              options: options,
            ),
          );

  /// {@template amplify_core.amplify_auth_category.remember_device}
  /// Remembers the current device.
  ///
  /// For more information about device tracking, see the
  /// [Amplify docs](https://docs.amplify.aws/lib/auth/device_features/q/platform/flutter/).
  ///
  /// ## Examples
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="imports"?>
  /// ```dart
  /// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  /// import 'package:amplify_flutter/amplify_flutter.dart';
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="remember-device"?>
  /// ```dart
  /// Future<void> rememberCurrentDevice() async {
  ///   try {
  ///     await Amplify.Auth.rememberDevice();
  ///     safePrint('Remember device succeeded');
  ///   } on AuthException catch (e) {
  ///     safePrint('Remember device failed with error: $e');
  ///   }
  /// }
  /// ```
  /// {@endtemplate}
  Future<void> rememberDevice() => identifyCall(
        AuthCategoryMethod.rememberDevice,
        () => defaultPlugin.rememberDevice(),
      );

  /// {@template amplify_core.amplify_auth_category.forget_device}
  /// Forgets the current device.
  ///
  /// For more information about device tracking, see the
  /// [Amplify docs](https://docs.amplify.aws/lib/auth/device_features/q/platform/flutter/).
  ///
  /// ## Examples
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="imports"?>
  /// ```dart
  /// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  /// import 'package:amplify_flutter/amplify_flutter.dart';
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="forget-device"?>
  /// ```dart
  /// Future<void> forgetCurrentDevice() async {
  ///   try {
  ///     await Amplify.Auth.forgetDevice();
  ///     safePrint('Forget device succeeded');
  ///   } on AuthException catch (e) {
  ///     safePrint('Forget device failed with error: $e');
  ///   }
  /// }
  /// ```
  ///
  /// Optionally, to forget a specific device, i.e. one retrieved from [fetchDevices],
  /// pass the [AuthDevice] when making the API call.
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="forget-specific-device"?>
  /// ```dart
  /// Future<void> forgetSpecificDevice(AuthDevice myDevice) async {
  ///   try {
  ///     await Amplify.Auth.forgetDevice(myDevice);
  ///     safePrint('Forget device succeeded');
  ///   } on AuthException catch (e) {
  ///     safePrint('Forget device failed with error: $e');
  ///   }
  /// }
  /// ```
  /// {@endtemplate}
  Future<void> forgetDevice([AuthDevice? device]) => identifyCall(
        AuthCategoryMethod.forgetDevice,
        () => defaultPlugin.forgetDevice(device),
      );

  /// {@template amplify_core.amplify_auth_category.fetch_devices}
  /// Retrieves all tracked devices for the current user.
  ///
  /// For more information about device tracking, see the
  /// [Amplify docs](https://docs.amplify.aws/lib/auth/device_features/q/platform/flutter/).
  ///
  /// ## Examples
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="imports"?>
  /// ```dart
  /// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  /// import 'package:amplify_flutter/amplify_flutter.dart';
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="fetch-devices"?>
  /// ```dart
  /// Future<void> fetchAllDevices() async {
  ///   try {
  ///     final devices = await Amplify.Auth.fetchDevices();
  ///     for (final device in devices) {
  ///       safePrint('Device: $device');
  ///     }
  ///   } on AuthException catch (e) {
  ///     safePrint('Fetch devices failed with error: $e');
  ///   }
  /// }
  /// ```
  /// {@endtemplate}
  Future<List<AuthDevice>> fetchDevices() => identifyCall(
        AuthCategoryMethod.fetchDevices,
        () => defaultPlugin.fetchDevices(),
      );

  /// {@template amplify_core.amplify_auth_category.delete_user}
  /// Deletes the current authenticated user.
  ///
  /// For more information, see the
  /// [Amplify docs](https://docs.amplify.aws/lib/auth/delete_user/q/platform/flutter/).
  ///
  /// ## Examples
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="imports"?>
  /// ```dart
  /// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
  /// import 'package:amplify_flutter/amplify_flutter.dart';
  /// ```
  ///
  /// <?code-excerpt "doc/lib/auth.dart" region="delete-user"?>
  /// ```dart
  /// Future<void> deleteUser() async {
  ///   try {
  ///     await Amplify.Auth.deleteUser();
  ///     safePrint('Delete user succeeded');
  ///   } on AuthException catch (e) {
  ///     safePrint('Delete user failed with error: $e');
  ///   }
  /// }
  /// ```
  /// {@endtemplate}
  Future<void> deleteUser() => identifyCall(
        AuthCategoryMethod.deleteUser,
        () => defaultPlugin.deleteUser(),
      );
}
