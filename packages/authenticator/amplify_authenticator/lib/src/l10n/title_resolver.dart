// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/l10n/authenticator_localizations.dart';
import 'package:amplify_authenticator/src/l10n/resolver.dart';
import 'package:flutter/material.dart';

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

  /// The title for the continue sign in (mfa selection) Widget.
  String continueSignInWithMfaSelection(BuildContext context) {
    return AuthenticatorLocalizations.titlesOf(context)
        .continueSignInWithMfaSelection;
  }

  /// The title for the continue sign in (totp setup) Widget.
  String continueSignInWithTotpSetup(BuildContext context) {
    return AuthenticatorLocalizations.titlesOf(context)
        .continueSignInWithTotpSetup;
  }

  /// The title for the confirm sign in (totp MFA code) Widget.
  String confirmSignInWithTotpMfaCode(BuildContext context) {
    return AuthenticatorLocalizations.titlesOf(context)
        .confirmSignInWithTotpMfaCode;
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
      case AuthenticatorStep.continueSignInWithMfaSelection:
        return continueSignInWithMfaSelection(context);
      case AuthenticatorStep.continueSignInWithTotpSetup:
        return continueSignInWithTotpSetup(context);
      case AuthenticatorStep.confirmSignInWithTotpMfaCode:
        return confirmSignInWithTotpMfaCode(context);
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
