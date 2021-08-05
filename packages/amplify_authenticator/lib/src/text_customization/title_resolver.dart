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

import 'package:amplify_authenticator/src/text_customization/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/text_customization/resolver_typedef.dart';
import 'package:flutter/widgets.dart';

/// The resolver class for screen titles
class TitleResolver {
  /// The title for the sign in Widget.
  StringResolver? signin;

  /// The title for the sign up Widget.
  StringResolver? signup;

  /// The title for the confirm sign up Widget.
  StringResolver? confirm_signup;

  /// The title for the confirm sign in (MFA) Widget.
  late StringResolver confirm_signin_mfa;

  /// The title for the confirm sign in (new passwrod) Widget.
  late StringResolver confirm_signin_new_password;

  /// The title for the reset password Widget.
  late StringResolver reset_password;

  // ignore: public_member_api_docs
  TitleResolver(
      {StringResolver? signin,
      StringResolver? signup,
      StringResolver? confirm_signup,
      StringResolver? confirm_signin_mfa,
      StringResolver? confirm_signin_new_password,
      StringResolver? reset_password}) {
    // We are assigning in this way due to limitations in assigning closures as defaults
    this.signin = signin ?? (_) => "Sign in to your account";
    this.signup = signup ?? (_) => "Create your account";
    this.confirm_signin_mfa =
        confirm_signin_mfa ?? (_) => "Enter your confirmation code";
    this.confirm_signin_new_password =
        confirm_signin_new_password ?? (_) => "Change your password to sign in";
    this.confirm_signup = confirm_signup ?? (_) => "Confirm your account";
    this.reset_password = reset_password ?? (_) => "Reset your password";
  }
}
