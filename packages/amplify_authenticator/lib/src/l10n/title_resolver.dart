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
import 'package:flutter/material.dart';

import 'authenticator_localizations.dart';
import 'resolver.dart';

/// The resolver class for step titles
class TitleResolver extends Resolver<AuthenticatorStep> {
  const TitleResolver();

  /// The title for the confirm sign up Widget.
  String confirmSignUp(BuildContext context) {
    return AuthenticatorLocalizations.titlesOf(context).confirmSignUp;
  }

  /// The title for the confirm sign in (custom auth) Widget.
  String confirmSignInCustomAuth(BuildContext context) {
    return AuthenticatorLocalizations.titlesOf(context).confirmSignInCustomAuth;
  }

  /// The title for the confirm sign in (MFA) Widget.
  String confirmSignInMfa(BuildContext context) {
    return AuthenticatorLocalizations.titlesOf(context).confirmSignInMfa;
  }

  /// The title for the confirm sign in (new passwrod) Widget.
  String confirmSignInNewPassword(BuildContext context) {
    return AuthenticatorLocalizations.titlesOf(context)
        .confirmSignInNewPassword;
  }

  /// The title for the reset password Widget.
  String resetPassword(BuildContext context) {
    return AuthenticatorLocalizations.titlesOf(context).resetPassword;
  }

  /// The title for the confirm reset password Widget.
  String confirmResetPassword(BuildContext context) {
    return AuthenticatorLocalizations.titlesOf(context).confirmResetPassword;
  }

  /// The title for the verify user Widget.
  String verifyUser(BuildContext context) {
    return AuthenticatorLocalizations.titlesOf(context).verifyUser;
  }

  @override
  String resolve(BuildContext context, AuthenticatorStep key) {
    switch (key) {
      case AuthenticatorStep.confirmSignUp:
        return confirmSignUp(context);
      case AuthenticatorStep.confirmSignInCustomAuth:
        return confirmSignInCustomAuth(context);
      case AuthenticatorStep.confirmSignInMfa:
        return confirmSignInMfa(context);
      case AuthenticatorStep.confirmSignInNewPassword:
        return confirmSignInNewPassword(context);
      case AuthenticatorStep.resetPassword:
        return resetPassword(context);
      case AuthenticatorStep.confirmResetPassword:
        return confirmResetPassword(context);
      case AuthenticatorStep.verifyUser:
      case AuthenticatorStep.confirmVerifyUser:
        return verifyUser(context);
      case AuthenticatorStep.loading:
      case AuthenticatorStep.onboarding:
      case AuthenticatorStep.signIn:
      case AuthenticatorStep.signUp:
        throw StateError('Invalid step: $this');
    }
  }
}
