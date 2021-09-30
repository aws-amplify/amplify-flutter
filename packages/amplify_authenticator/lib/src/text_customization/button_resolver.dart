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

import 'package:amplify_authenticator/src/text_customization/resolver.dart';
import 'package:flutter/material.dart';

enum ButtonResolverKey {
  signin,
  signup,
  confirm,
  submit,
  changePassword,
  sendCode,
  lostCodeQuestion,
  verifyUser,
  confirmVerifyUser,
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

  @override
  String resolve(BuildContext context, ButtonResolverKey key) {
    switch (key) {
      case ButtonResolverKey.signin:
        return signin(context);
      case ButtonResolverKey.signup:
        return signup(context);
      case ButtonResolverKey.confirm:
        return confirm(context);
      case ButtonResolverKey.submit:
        return submit(context);
      case ButtonResolverKey.changePassword:
        return changePassword(context);
      case ButtonResolverKey.sendCode:
        return sendCode(context);
      case ButtonResolverKey.lostCodeQuestion:
        return lostCodeQuestion(context);
      case ButtonResolverKey.verifyUser:
        return verifyUser(context);
      case ButtonResolverKey.confirmVerifyUser:
        return confirmVerifyUser(context);
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
  String verifyUser(BuildContext context) => 'verifyUser';

  @override
  String confirmVerifyUser(BuildContext context) => 'Submit';
}
