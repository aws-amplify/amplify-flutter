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
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'authenticator_localizations.dart';
import 'resolver.dart';

enum ButtonResolverKeyType {
  signIn,
  signUp,
  confirm,
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
}

class ButtonResolverKey {
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
  static const submit = ButtonResolverKey._(ButtonResolverKeyType.submit);
  static const changePassword =
      ButtonResolverKey._(ButtonResolverKeyType.changePassword);
  static const sendCode = ButtonResolverKey._(ButtonResolverKeyType.sendCode);
  static const lostCodeQuestion =
      ButtonResolverKey._(ButtonResolverKeyType.lostCode);
  static const verify = ButtonResolverKey._(ButtonResolverKeyType.verify);
  static const signout = ButtonResolverKey._(ButtonResolverKeyType.signOut);
  const ButtonResolverKey.signInWith(AuthProvider provider)
      : this._(ButtonResolverKeyType.signInWith, provider: provider);
  static const noAccount = ButtonResolverKey._(ButtonResolverKeyType.noAccount);
  static const haveAccount =
      ButtonResolverKey._(ButtonResolverKeyType.haveAccount);
  static const forgotPassword =
      ButtonResolverKey._(ButtonResolverKeyType.forgotPassword);
  static const confirmResetPassword =
      ButtonResolverKey._(ButtonResolverKeyType.confirmResetPassword);
  const ButtonResolverKey.backTo(AuthenticatorStep previousStep)
      : this._(ButtonResolverKeyType.backTo, previousStep: previousStep);
  static const skip = ButtonResolverKey._(ButtonResolverKeyType.skip);

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
    return AuthenticatorLocalizations.buttonsOf(context).signInWith(provider);
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
    return AuthenticatorLocalizations.buttonsOf(context).backTo(previousStep);
  }

  /// Label of button to skip the current step or action.
  String skip(BuildContext context) {
    return AuthenticatorLocalizations.buttonsOf(context).skip;
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
    }
  }
}
