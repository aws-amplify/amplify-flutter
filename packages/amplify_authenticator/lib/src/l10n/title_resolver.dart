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

/// The resolver class for screen titles
class TitleResolver extends Resolver<AuthScreen> {
  const TitleResolver();

  /// The title for the sign in Widget.
  String signin(BuildContext context) {
    return AuthenticatorLocalizations.titlesOf(context).signin;
  }

  /// The title for the sign up Widget.
  String signup(BuildContext context) {
    return AuthenticatorLocalizations.titlesOf(context).signup;
  }

  /// The title for the confirm sign up Widget.
  String confirmSignup(BuildContext context) {
    return AuthenticatorLocalizations.titlesOf(context).confirmSignup;
  }

  /// The title for the confirm sign in (MFA) Widget.
  String confirmSigninMfa(BuildContext context) {
    return AuthenticatorLocalizations.titlesOf(context).confirmSigninMfa;
  }

  /// The title for the confirm sign in (new passwrod) Widget.
  String confirmSigninNewPassword(BuildContext context) {
    return AuthenticatorLocalizations.titlesOf(context)
        .confirmSigninNewPassword;
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
  String resolve(BuildContext context, AuthScreen key) {
    switch (key) {
      case AuthScreen.initial:
      case AuthScreen.signin:
        return signin(context);
      case AuthScreen.signup:
        return signup(context);
      case AuthScreen.confirmSignup:
        return confirmSignup(context);
      case AuthScreen.confirmSigninMfa:
        return confirmSigninMfa(context);
      case AuthScreen.confirmSigninNewPassword:
        return confirmSigninNewPassword(context);
      case AuthScreen.resetPassword:
        return resetPassword(context);
      case AuthScreen.confirmResetPassword:
        return confirmResetPassword(context);
      case AuthScreen.verifyUser:
      case AuthScreen.confirmVerifyUser:
        return verifyUser(context);
    }
  }
}
