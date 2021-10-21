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
  lostCodeQuestion,
  verifyUser,
  confirmVerifyUser,
  signout,
  signInWith,
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
      ButtonResolverKey._(_ButtonResolverKey.lostCodeQuestion);
  static const verifyUser = ButtonResolverKey._(_ButtonResolverKey.verifyUser);
  static const confirmVerifyUser =
      ButtonResolverKey._(_ButtonResolverKey.confirmVerifyUser);
  static const signout = ButtonResolverKey._(_ButtonResolverKey.signout);
  const ButtonResolverKey.signInWith(AuthProvider provider)
      : this._(_ButtonResolverKey.signInWith, provider: provider);
}

/// The resolver class for shared button Widgets
abstract class ButtonResolver extends Resolver<ButtonResolverKey> {
  const ButtonResolver();

  /// Label of signin form button
  String signin(BuildContext context);

  /// Label of signin form button
  String signup(BuildContext context);

  /// Label of confirm forms' button
  String confirm(BuildContext context);

  /// Label of submit button
  String submit(BuildContext context);

  /// Label of change password button on ConfirmSignInNewPassword Form
  String changePassword(BuildContext context);

  /// Label of button for sending a confirmation code
  String sendCode(BuildContext context);

  /// Question for button to resend code
  String lostCodeQuestion(BuildContext context);

  /// Label of button to verify a user after sign in
  String verifyUser(BuildContext context);

  /// Label of button to confirm verification a user after sign in
  String confirmVerifyUser(BuildContext context);

  /// Label of button to sign out the user
  String signout(BuildContext context);

  /// Label of button to sign in with a social provider
  String signInWith(BuildContext context, AuthProvider provider);

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
      case _ButtonResolverKey.lostCodeQuestion:
        return lostCodeQuestion(context);
      case _ButtonResolverKey.verifyUser:
        return verifyUser(context);
      case _ButtonResolverKey.confirmVerifyUser:
        return confirmVerifyUser(context);
      case _ButtonResolverKey.signout:
        return signout(context);
      case _ButtonResolverKey.signInWith:
        return signInWith(context, key.provider!);
    }
  }
}

class DefaultButtonResolver extends ButtonResolver {
  const DefaultButtonResolver();

  @override
  String signin(BuildContext context) => 'Sign In';

  @override
  String signup(BuildContext context) => 'Create Account';

  @override
  String confirm(BuildContext context) => 'Confirm';

  @override
  String submit(BuildContext context) => 'Submit';

  @override
  String changePassword(BuildContext context) => 'Change Password';

  @override
  String sendCode(BuildContext context) => 'Send Code';

  @override
  String lostCodeQuestion(BuildContext context) => 'Lost your code?';

  @override
  String verifyUser(BuildContext context) => 'Verify';

  @override
  String confirmVerifyUser(BuildContext context) => 'Submit';

  @override
  String signout(BuildContext context) => 'Sign Out';

  @override
  String signInWith(BuildContext context, AuthProvider provider) {
    final providerName = describeEnum(provider);
    return 'Continue with ${providerName[0].toUpperCase() + providerName.substring(1)}';
  }
}
