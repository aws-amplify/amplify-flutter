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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/l10n/generated/authenticator_localizations.dart';
import 'package:amplify_authenticator/src/text_customization/resolver.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum _ButtonResolverKey {
  signin,
  signup,
  confirm,
  submit,
  changePassword,
  sendCode,
  lostCode,
  verifyUser,
  confirmVerifyUser,
  signout,
  signInWith,
  noAccount,
  haveAccount,
  forgotPassword,
  resetPassword,
  backToSignin,
  skip,
}

class ButtonResolverKey {
  const ButtonResolverKey._(
    this.key, {
    this.provider,
  });

  final _ButtonResolverKey key;
  final AuthProvider? provider;

  static const signin = ButtonResolverKey._(_ButtonResolverKey.signin);
  static const signup = ButtonResolverKey._(_ButtonResolverKey.signup);
  static const confirm = ButtonResolverKey._(_ButtonResolverKey.confirm);
  static const submit = ButtonResolverKey._(_ButtonResolverKey.submit);
  static const changePassword =
      ButtonResolverKey._(_ButtonResolverKey.changePassword);
  static const sendCode = ButtonResolverKey._(_ButtonResolverKey.sendCode);
  static const lostCodeQuestion =
      ButtonResolverKey._(_ButtonResolverKey.lostCode);
  static const verifyUser = ButtonResolverKey._(_ButtonResolverKey.verifyUser);
  static const confirmVerifyUser =
      ButtonResolverKey._(_ButtonResolverKey.confirmVerifyUser);
  static const signout = ButtonResolverKey._(_ButtonResolverKey.signout);
  const ButtonResolverKey.signInWith(AuthProvider provider)
      : this._(_ButtonResolverKey.signInWith, provider: provider);
  static const noAccount = ButtonResolverKey._(_ButtonResolverKey.noAccount);
  static const haveAccount =
      ButtonResolverKey._(_ButtonResolverKey.haveAccount);
  static const forgotPassword =
      ButtonResolverKey._(_ButtonResolverKey.forgotPassword);
  static const resetPassword =
      ButtonResolverKey._(_ButtonResolverKey.resetPassword);
  static const backToSignin =
      ButtonResolverKey._(_ButtonResolverKey.backToSignin);
  static const skip = ButtonResolverKey._(_ButtonResolverKey.skip);
}

/// The resolver class for shared button Widgets
class ButtonResolver extends Resolver<ButtonResolverKey> {
  const ButtonResolver();

  /// Label of signin form button
  String signin(BuildContext context) {
    return AuthenticatorLocalizations.of(context).signin;
  }

  /// Label of signin form button
  String signup(BuildContext context) {
    return AuthenticatorLocalizations.of(context).signup;
  }

  /// Label of confirm forms' button
  String confirm(BuildContext context) {
    return AuthenticatorLocalizations.of(context).confirm;
  }

  /// Label of submit button
  String submit(BuildContext context) {
    return AuthenticatorLocalizations.of(context).submit;
  }

  /// Label of change password button on ConfirmSignInNewPassword Form
  String changePassword(BuildContext context) {
    return AuthenticatorLocalizations.of(context).changePassword;
  }

  /// Label of button for sending a confirmation code
  String sendCode(BuildContext context) {
    return AuthenticatorLocalizations.of(context).sendCode;
  }

  /// Question for button to resend code
  String lostCode(BuildContext context) {
    return AuthenticatorLocalizations.of(context).lostCode;
  }

  /// Label of button to verify a user after sign in
  String verifyUser(BuildContext context) {
    return AuthenticatorLocalizations.of(context).verifyUser;
  }

  /// Label of button to confirm verification a user after sign in
  String confirmVerifyUser(BuildContext context) {
    return AuthenticatorLocalizations.of(context).confirmVerifyUser;
  }

  /// Label of button to sign out the user
  String signout(BuildContext context) {
    return AuthenticatorLocalizations.of(context).signout;
  }

  /// Label of button to sign in with a social provider
  String signInWith(BuildContext context, AuthProvider provider) {
    final providerName = describeEnum(provider);
    final capitalizedName =
        providerName[0].toUpperCase() + providerName.substring(1);
    return AuthenticatorLocalizations.of(context).signInWith(capitalizedName);
  }

  /// Hint text for the 'Go to Sign Up' button
  String noAccount(BuildContext context) {
    return AuthenticatorLocalizations.of(context).noAccount;
  }

  /// Hint text for the 'Go to Sign In' button
  String haveAccount(BuildContext context) {
    return AuthenticatorLocalizations.of(context).haveAccount;
  }

  /// Hint text for the 'Go to Reset Password' button
  String forgotPassword(BuildContext context) {
    return AuthenticatorLocalizations.of(context).forgotPassword;
  }

  /// Label of button to reset a user's password
  String resetPassword(BuildContext context) {
    return AuthenticatorLocalizations.of(context).resetPassword;
  }

  /// Label of button to return to the Sign In screen.
  String backToSignin(BuildContext context) {
    return AuthenticatorLocalizations.of(context).backTo(signin(context));
  }

  /// Label of button to skip the current screen or action.
  String skip(BuildContext context) {
    return AuthenticatorLocalizations.of(context).skip;
  }

  @override
  String resolve(BuildContext context, ButtonResolverKey key) {
    switch (key.key) {
      case _ButtonResolverKey.signin:
        return signin(context);
      case _ButtonResolverKey.signup:
        return signup(context);
      case _ButtonResolverKey.confirm:
        return confirm(context);
      case _ButtonResolverKey.submit:
        return submit(context);
      case _ButtonResolverKey.changePassword:
        return changePassword(context);
      case _ButtonResolverKey.sendCode:
        return sendCode(context);
      case _ButtonResolverKey.lostCode:
        return lostCode(context);
      case _ButtonResolverKey.verifyUser:
        return verifyUser(context);
      case _ButtonResolverKey.confirmVerifyUser:
        return confirmVerifyUser(context);
      case _ButtonResolverKey.signout:
        return signout(context);
      case _ButtonResolverKey.signInWith:
        return signInWith(context, key.provider!);
      case _ButtonResolverKey.noAccount:
        return noAccount(context);
      case _ButtonResolverKey.haveAccount:
        return haveAccount(context);
      case _ButtonResolverKey.forgotPassword:
        return forgotPassword(context);
      case _ButtonResolverKey.resetPassword:
        return resetPassword(context);
      case _ButtonResolverKey.backToSignin:
        return backToSignin(context);
      case _ButtonResolverKey.skip:
        return skip(context);
    }
  }
}
