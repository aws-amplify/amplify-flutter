/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/state/auth_state.dart';
import 'package:flutter/material.dart';

class InheritedForms extends InheritedWidget {
  const InheritedForms({
    Key? key,
    required this.signInForm,
    required this.signUpForm,
    required this.confirmSignUpForm,
    required this.confirmSignInMFAForm,
    required this.resetPasswordForm,
    required this.confirmResetPasswordForm,
    required this.confirmSignInNewPasswordForm,
    required this.confirmSignInCustomAuthForm,
    required this.verifyUserForm,
    required this.confirmVerifyUserForm,
    required Widget child,
  }) : super(key: key, child: child);

  final SignInForm signInForm;
  final SignUpForm signUpForm;
  final ConfirmSignUpForm confirmSignUpForm;
  final ConfirmSignInMFAForm confirmSignInMFAForm;
  final ConfirmSignInCustomAuthForm confirmSignInCustomAuthForm;
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
        oldWidget.resetPasswordForm != resetPasswordForm ||
        oldWidget.confirmResetPasswordForm != confirmResetPasswordForm ||
        oldWidget.confirmSignInNewPasswordForm !=
            confirmSignInNewPasswordForm ||
        oldWidget.verifyUserForm != verifyUserForm ||
        oldWidget.confirmVerifyUserForm != confirmVerifyUserForm;
  }
}

// ignore_for_file: prefer_asserts_with_message
