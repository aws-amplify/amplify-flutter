// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';

class InheritedForms extends InheritedWidget {
  const InheritedForms({
    Key? key,
    required this.signInForm,
    required this.signUpForm,
    required this.confirmSignUpForm,
    required this.confirmSignInCustomAuthForm,
    required this.confirmSignInMFAForm,
    required this.resetPasswordForm,
    required this.confirmResetPasswordForm,
    required this.confirmSignInNewPasswordForm,
    required this.verifyUserForm,
    required this.confirmVerifyUserForm,
    required Widget child,
  }) : super(key: key, child: child);

  final SignInForm signInForm;
  final SignUpForm signUpForm;
  final ConfirmSignUpForm confirmSignUpForm;
  final ConfirmSignInCustomAuthForm confirmSignInCustomAuthForm;
  final ConfirmSignInMFAForm confirmSignInMFAForm;
  final ConfirmSignInNewPasswordForm confirmSignInNewPasswordForm;
  final ResetPasswordForm resetPasswordForm;
  final ConfirmResetPasswordForm confirmResetPasswordForm;
  final VerifyUserForm verifyUserForm;
  final ConfirmVerifyUserForm confirmVerifyUserForm;

  AuthenticatorForm operator [](AuthenticatorStep step) {
    switch (step) {
      case AuthenticatorStep.onboarding:
      case AuthenticatorStep.loading:
      case AuthenticatorStep.signUp:
        return signUpForm;
      case AuthenticatorStep.signIn:
        return signInForm;
      case AuthenticatorStep.confirmSignUp:
        return confirmSignUpForm;
      case AuthenticatorStep.confirmSignInCustomAuth:
        return confirmSignInCustomAuthForm;
      case AuthenticatorStep.confirmSignInMfa:
        return confirmSignInMFAForm;
      case AuthenticatorStep.confirmSignInNewPassword:
        return confirmSignInNewPasswordForm;
      case AuthenticatorStep.resetPassword:
        return resetPasswordForm;
      case AuthenticatorStep.confirmResetPassword:
        return confirmResetPasswordForm;
      case AuthenticatorStep.verifyUser:
        return verifyUserForm;
      case AuthenticatorStep.confirmVerifyUser:
        return confirmVerifyUserForm;
    }
  }

  static InheritedForms of(BuildContext context) {
    final forms = context.dependOnInheritedWidgetOfExactType<InheritedForms>();
    assert(() {
      if (forms == null) {
        throw FlutterError.fromParts([
          ErrorSummary('No InheritedForms widget found.'),
          ErrorDescription(
            'Make sure your app is wrapped with an Authenticator widget.',
          )
        ]);
      }
      return true;
    }());
    return forms!;
  }

  @override
  bool updateShouldNotify(InheritedForms oldWidget) {
    return oldWidget.signInForm != signInForm ||
        oldWidget.signUpForm != signUpForm ||
        oldWidget.confirmSignUpForm != confirmSignUpForm ||
        oldWidget.confirmSignInMFAForm != confirmSignInMFAForm ||
        oldWidget.confirmSignInCustomAuthForm != confirmSignInCustomAuthForm ||
        oldWidget.resetPasswordForm != resetPasswordForm ||
        oldWidget.confirmResetPasswordForm != confirmResetPasswordForm ||
        oldWidget.confirmSignInNewPasswordForm !=
            confirmSignInNewPasswordForm ||
        oldWidget.verifyUserForm != verifyUserForm ||
        oldWidget.confirmVerifyUserForm != confirmVerifyUserForm;
  }
}

// ignore_for_file: prefer_asserts_with_message
