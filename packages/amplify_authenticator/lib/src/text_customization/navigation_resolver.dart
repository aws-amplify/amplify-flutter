/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the 'License').
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the 'license' file accompanying this file. This file is distributed
 * on an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_authenticator/src/text_customization/resolver_typedef.dart';

/// The resolver class for shared button Widgets
class NavigationResolver {
  /// Text for navigating to the signup Widget
  StringResolver navigateSignup = (_) => 'Sign Up';

  /// Text for navigating to the signin Widget
  StringResolver navigateSignin = (_) => 'Sign In';

  /// Text asking if user does not have an account
  StringResolver noAccountQuestion = (_) => 'No account?';

  /// Text asking if user has have an account
  StringResolver haveAccountQuestion = (_) => 'Have an account?';

  /// Text asking if user has forgotten password
  StringResolver forgotPasswordQuestion = (_) => 'Forgot password?';

  /// Text for navigating to reset password Widget
  StringResolver navigateResetPassword = (_) => 'Reset Password';

  /// Text asking if user has have an account
  StringResolver backToSignin = (_) => 'Back to Sign In';

  /// Text asking if user has have an account
  StringResolver skipVerifyUser = (_) => 'Skip';

  // ignore: public_member_api_docs
  NavigationResolver(
      {StringResolver? navigateSignin,
      StringResolver? navigateSignup,
      StringResolver? navigateResetPassword,
      StringResolver? noAccountQuestion,
      StringResolver? haveAccountQuestion,
      StringResolver? forgotPasswordQuestion,
      StringResolver? backToSignin}) {
    this.navigateSignin = navigateSignin ?? this.navigateSignin;
    this.navigateSignup = navigateSignup ?? this.navigateSignup;
    this.navigateResetPassword =
        navigateResetPassword ?? this.navigateResetPassword;
    this.noAccountQuestion = noAccountQuestion ?? this.noAccountQuestion;
    this.haveAccountQuestion = haveAccountQuestion ?? this.haveAccountQuestion;
    this.forgotPasswordQuestion =
        forgotPasswordQuestion ?? this.forgotPasswordQuestion;
    this.backToSignin = backToSignin ?? this.backToSignin;
  }
}
