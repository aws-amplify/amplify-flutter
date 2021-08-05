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

import 'package:amplify_authenticator/src/text_customization/resolver_typedef.dart';
import 'package:flutter/widgets.dart';

/// The resolver class for shared button Widgets
class NavigationResolver {
  /// Text for navigating to the signup Widget
  late StringResolver navigate_signup;

  /// Text for navigating to the signin Widget
  late StringResolver navigate_signin;

  /// Text asking if user does not have an account
  late StringResolver no_account_question;

  /// Text asking if user has have an account
  late StringResolver have_account_question;

  /// Text asking if user has forgotten password
  late StringResolver forgot_password_question;

  /// Text for navigating to reset password Widget
  late StringResolver navigate_reset_password;

  /// Text asking if user has have an account
  late StringResolver back_to_signin;

  // ignore: public_member_api_docs
  NavigationResolver(
      {StringResolver? navigate_signin,
      StringResolver? navigate_signup,
      StringResolver? navigate_reset_password,
      StringResolver? no_account_question,
      StringResolver? have_account_question,
      StringResolver? forgot_password_question,
      StringResolver? back_to_signin}) {
    // We are assigning in this way due to limitations in assigning closures as defaults
    this.navigate_signin = navigate_signin ?? (_) => "Sign In";
    this.navigate_signup = navigate_signup ?? (_) => "Sign Up";
    this.navigate_reset_password =
        navigate_reset_password ?? (_) => "Reset Password";
    this.no_account_question = no_account_question ?? (_) => "No account?";
    this.have_account_question =
        have_account_question ?? (_) => "Have an account?";
    this.forgot_password_question =
        forgot_password_question ?? (_) => "Forgot password?";
    this.back_to_signin = back_to_signin ?? (_) => "Back to Sign In";
  }
}
