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

/// The resolver class for shared button Widgets
class ButtonResolver {
  /// Label of signin form button
  StringResolver signin = (_) => "Sign In";

  /// Label of signin form button
  StringResolver signup = (_) => "Create Account";

  /// Label of confirm forms' button
  StringResolver confirm = (_) => "Confirm";

  /// Label of submit button
  StringResolver submit = (_) => "Submit";

  /// Label of change password button on ConfirmSignInNewPassword Form
  StringResolver changePassword = (_) => "Change Password";

  /// Label of button for sending a confirmation code
  StringResolver sendCode = (_) => "Send Code";

  /// Label of button to verify a user after sign in
  StringResolver verifyUser = (_) => "Verify";

  /// Label of button to confirm verification a user after sign in
  StringResolver confirmVerifyUser = (_) => "Submit";

  /// Question for button to resend code
  StringResolver lostCodeQuestion = (_) => "Lost your code?";

  // ignore: public_member_api_docs
  ButtonResolver(
      {StringResolver? signin,
      StringResolver? signup,
      StringResolver? confirm,
      StringResolver? submit,
      StringResolver? changePassword,
      StringResolver? sendCode,
      StringResolver? verifyUser,
      StringResolver? lostCodeQuestion}) {
    this.signin = signin ?? this.signin;
    this.signup = signup ?? this.signup;
    this.confirm = confirm ?? this.confirm;
    this.submit = submit ?? this.submit;
    this.changePassword = changePassword ?? this.changePassword;
    this.sendCode = sendCode ?? this.sendCode;
    this.verifyUser = verifyUser ?? this.verifyUser;
    this.lostCodeQuestion = lostCodeQuestion ?? this.lostCodeQuestion;
  }
}
