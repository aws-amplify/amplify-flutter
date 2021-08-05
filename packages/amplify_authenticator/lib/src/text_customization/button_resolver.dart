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
class ButtonResolver {
  /// Label of signin form button
  late StringResolver signin;

  /// Label of signin form button
  late StringResolver signup;

  /// Label of confirm forms' button
  late StringResolver confirm;

  /// Label of submit button
  late StringResolver submit;

  /// Label of change password button on ConfirmSignInNewPassword Form
  late StringResolver changePassword;

  /// Label of button for sending a confirmation code
  late StringResolver sendCode;

  /// Question for button to resend code
  late StringResolver lostCodeQuestion;

  // ignore: public_member_api_docs
  ButtonResolver(
      {StringResolver? signin,
      StringResolver? signup,
      StringResolver? confirm,
      StringResolver? submit,
      StringResolver? changePassword,
      StringResolver? sendCode,
      StringResolver? lostCodeQuestion}) {
    // We are assigning in this way due to limitations in assigning closures as defaults
    this.signin = signin ?? (_) => "Sign In";
    this.signup = signup ?? (_) => "Create Account";
    this.confirm = confirm ?? (_) => "Confirm";
    this.submit = submit ?? (_) => "Submit";
    this.changePassword = changePassword ?? (_) => "Change Password";
    this.sendCode = sendCode ?? (_) => "Send Code";
    this.lostCodeQuestion = lostCodeQuestion ?? (_) => "Lost your code?";
  }
}
