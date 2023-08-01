// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/l10n/authenticator_localizations.dart';
import 'package:amplify_authenticator/src/l10n/resolver.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum ButtonResolverKeyType {
  signIn,
  signUp,
  confirm,
  continueLabel,
  submit,
  changePassword,
  sendCode,
  lostCode,
  verify,
  signOut,
  signInWith,
  noAccount,
  haveAccount,
  forgotPassword,
  confirmResetPassword,
  backTo,
  skip,
  openTotpApp,
  totpManualKey,
  totpQrCode,
  totpStepperSetup,
  totpStepperConfirm,
}

class ButtonResolverKey {
  const ButtonResolverKey.signInWith(AuthProvider provider)
      : this._(ButtonResolverKeyType.signInWith, provider: provider);
  const ButtonResolverKey.backTo(AuthenticatorStep previousStep)
      : this._(ButtonResolverKeyType.backTo, previousStep: previousStep);
  const ButtonResolverKey._(
    this.type, {
    this.provider,
    this.previousStep,
  });

  final ButtonResolverKeyType type;
  final AuthProvider? provider;
  final AuthenticatorStep? previousStep;

  static const signIn = ButtonResolverKey._(ButtonResolverKeyType.signIn);
  static const signUp = ButtonResolverKey._(ButtonResolverKeyType.signUp);
  static const confirm = ButtonResolverKey._(ButtonResolverKeyType.confirm);
  static const continueLabel =
      ButtonResolverKey._(ButtonResolverKeyType.continueLabel);
  static const submit = ButtonResolverKey._(ButtonResolverKeyType.submit);
  static const changePassword =
      ButtonResolverKey._(ButtonResolverKeyType.changePassword);
  static const sendCode = ButtonResolverKey._(ButtonResolverKeyType.sendCode);
  static const lostCodeQuestion =
      ButtonResolverKey._(ButtonResolverKeyType.lostCode);
  static const verify = ButtonResolverKey._(ButtonResolverKeyType.verify);
  static const signout = ButtonResolverKey._(ButtonResolverKeyType.signOut);
  static const noAccount = ButtonResolverKey._(ButtonResolverKeyType.noAccount);
  static const haveAccount =
      ButtonResolverKey._(ButtonResolverKeyType.haveAccount);
  static const forgotPassword =
      ButtonResolverKey._(ButtonResolverKeyType.forgotPassword);
  static const confirmResetPassword =
      ButtonResolverKey._(ButtonResolverKeyType.confirmResetPassword);
  static const skip = ButtonResolverKey._(ButtonResolverKeyType.skip);
  static const openTotpApp =
      ButtonResolverKey._(ButtonResolverKeyType.openTotpApp);
  static const totpManualKey =
      ButtonResolverKey._(ButtonResolverKeyType.totpManualKey);
  static const totpQrCode =
      ButtonResolverKey._(ButtonResolverKeyType.totpQrCode);
  static const totpStepperSetup =
      ButtonResolverKey._(ButtonResolverKeyType.totpStepperSetup);
  static const totpStepperConfirm =
      ButtonResolverKey._(ButtonResolverKeyType.totpStepperConfirm);

  @override
  String toString() => describeEnum(type);
}

/// The resolver class for shared button Widgets
class ButtonResolver extends Resolver<ButtonResolverKey> {
  const ButtonResolver();

  /// Label of sign in form button
  String signIn(BuildContext context) {
    return AuthenticatorLocalizations.buttonsOf(context).signIn;
  }

  /// Label of sign up form button
  String signUp(BuildContext context) {
    return AuthenticatorLocalizations.buttonsOf(context).signUp;
  }

  /// Label of confirm forms' button
  String confirm(BuildContext context) {
    return AuthenticatorLocalizations.buttonsOf(context).confirm;
  }

  /// Label of confirm forms' button
  String continueLabel(BuildContext context) {
    return AuthenticatorLocalizations.buttonsOf(context).continueLabel;
  }

  /// Label of submit button
  String submit(BuildContext context) {
    return AuthenticatorLocalizations.buttonsOf(context).submit;
  }

  /// Label of change password button on ConfirmSignInNewPassword Form
  String changePassword(BuildContext context) {
    return AuthenticatorLocalizations.buttonsOf(context).changePassword;
  }

  /// Label of button for sending a confirmation code
  String sendCode(BuildContext context) {
    return AuthenticatorLocalizations.buttonsOf(context).sendCode;
  }

  /// Question for button to resend code
  String lostCode(BuildContext context) {
    return AuthenticatorLocalizations.buttonsOf(context).lostCode;
  }

  /// Label of button to verify a user after sign in
  String verify(BuildContext context) {
    return AuthenticatorLocalizations.buttonsOf(context).verify;
  }

  /// Label of button to sign out the user
  String signout(BuildContext context) {
    return AuthenticatorLocalizations.buttonsOf(context).signOut;
  }

  /// Label of button to sign in with a social provider
  String signInWith(BuildContext context, AuthProvider provider) {
    return AuthenticatorLocalizations.buttonsOf(context)
        .signInWith(provider.name);
  }

  /// Hint text for the 'Go to Sign Up' button
  String noAccount(BuildContext context) {
    return AuthenticatorLocalizations.buttonsOf(context).noAccount;
  }

  /// Hint text for the 'Go to Sign In' button
  String haveAccount(BuildContext context) {
    return AuthenticatorLocalizations.buttonsOf(context).haveAccount;
  }

  /// Hint text for the 'Go to Reset Password' button
  String forgotPassword(BuildContext context) {
    return AuthenticatorLocalizations.buttonsOf(context).forgotPassword;
  }

  /// Label of button to confirm the reset of a user's password
  String confirmResetPassword(BuildContext context) {
    return AuthenticatorLocalizations.buttonsOf(context).confirmResetPassword;
  }

  /// Label of button to return to the Sign In step.
  String backTo(BuildContext context, AuthenticatorStep previousStep) {
    return AuthenticatorLocalizations.buttonsOf(context)
        .backTo(previousStep.name);
  }

  /// Label of button to skip the current step or action.
  String skip(BuildContext context) {
    return AuthenticatorLocalizations.buttonsOf(context).skip;
  }

  /// Label of button to open the users default authentication app.
  String openTotpApp(BuildContext context) {
    return AuthenticatorLocalizations.buttonsOf(context).openTotpApp;
  }

  /// Label of button to toggle the QR code during TOTP setup.
  String totpQrCode(BuildContext context) {
    return AuthenticatorLocalizations.buttonsOf(context).totpQrCode;
  }

  /// Label of button to toggle the TOTP key during TOTP setup.
  String totpManualKey(BuildContext context) {
    return AuthenticatorLocalizations.buttonsOf(context).totpManualKey;
  }

  /// Label of the app setup step button for the TOTP setup stepper.
  String totpStepperSetup(BuildContext context) {
    return AuthenticatorLocalizations.buttonsOf(context).totpStepperSetup;
  }

  /// Label of the confirm step button for the TOTP setup stepper.
  String totpStepperConfirm(BuildContext context) {
    return AuthenticatorLocalizations.buttonsOf(context).totpStepperConfirm;
  }

  @override
  String resolve(BuildContext context, ButtonResolverKey key) {
    switch (key.type) {
      case ButtonResolverKeyType.signIn:
        return signIn(context);
      case ButtonResolverKeyType.signUp:
        return signUp(context);
      case ButtonResolverKeyType.confirm:
        return confirm(context);
      case ButtonResolverKeyType.continueLabel:
        return continueLabel(context);
      case ButtonResolverKeyType.submit:
        return submit(context);
      case ButtonResolverKeyType.changePassword:
        return changePassword(context);
      case ButtonResolverKeyType.sendCode:
        return sendCode(context);
      case ButtonResolverKeyType.lostCode:
        return lostCode(context);
      case ButtonResolverKeyType.verify:
        return verify(context);
      case ButtonResolverKeyType.signOut:
        return signout(context);
      case ButtonResolverKeyType.signInWith:
        return signInWith(context, key.provider!);
      case ButtonResolverKeyType.noAccount:
        return noAccount(context);
      case ButtonResolverKeyType.haveAccount:
        return haveAccount(context);
      case ButtonResolverKeyType.forgotPassword:
        return forgotPassword(context);
      case ButtonResolverKeyType.confirmResetPassword:
        return confirmResetPassword(context);
      case ButtonResolverKeyType.backTo:
        return backTo(context, key.previousStep!);
      case ButtonResolverKeyType.skip:
        return skip(context);
      case ButtonResolverKeyType.openTotpApp:
        return openTotpApp(context);
      case ButtonResolverKeyType.totpQrCode:
        return totpQrCode(context);
      case ButtonResolverKeyType.totpManualKey:
        return totpManualKey(context);
      case ButtonResolverKeyType.totpStepperSetup:
        return totpStepperSetup(context);
      case ButtonResolverKeyType.totpStepperConfirm:
        return totpStepperConfirm(context);
    }
  }
}
