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

import 'package:amplify_authenticator/src/blocs/auth/auth_data.dart';
import 'package:amplify_authenticator/src/text_customization/resolver.dart';
import 'package:flutter/material.dart';

/// The resolver class for screen titles
abstract class TitleResolver extends Resolver<AuthScreen> {
  const TitleResolver();

  /// The title for the sign in Widget.
  String signin(BuildContext context);

  /// The title for the sign up Widget.
  String signup(BuildContext context);

  /// The title for the confirm sign up Widget.
  String confirmSignup(BuildContext context);

  /// The title for the confirm sign in (MFA) Widget.
  String confirmSigninMfa(BuildContext context);

  /// The title for the confirm sign in (new passwrod) Widget.
  String confirmSigninNewPassword(BuildContext context);

  /// The title for the reset password Widget.
  String resetPassword(BuildContext context);

  /// The title for the send code Widget.
  String sendCode(BuildContext context);

  @override
  String resolve(BuildContext context, AuthScreen key) {
    switch (key) {
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
      case AuthScreen.sendCode:
        return sendCode(context);
    }
  }
}

class DefaultTitleResolver extends TitleResolver {
  const DefaultTitleResolver();

  @override
  String signin(BuildContext context) => 'Sign in to your account';

  @override
  String signup(BuildContext context) => 'Create your account';

  @override
  String confirmSignup(BuildContext context) => 'Enter your confirmation code';

  @override
  String confirmSigninMfa(BuildContext context) => 'Enter your sign in code';

  @override
  String confirmSigninNewPassword(BuildContext context) =>
      'Change your password to sign in';

  @override
  String resetPassword(BuildContext context) => 'Reset your password';

  @override
  String sendCode(BuildContext context) => 'Send Code';
}
