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

/// The resolver class for screen titles
class TitleResolver {
  /// The title for the sign in Widget.
  StringResolver signin = (_) => "Sign in to your account";

  /// The title for the sign up Widget.
  StringResolver signup = (_) => "Create your account";

  /// The title for the confirm sign up Widget.
  StringResolver confirmSignup = (_) => "Enter your confirmation code";

  /// The title for the confirm sign in (MFA) Widget.
  StringResolver confirmSigninMfa = (_) => "Enter your sign in code";

  /// The title for the confirm sign in (new passwrod) Widget.
  StringResolver confirmSigninNewPassword =
      (_) => "Change your password to sign in";

  /// The title for the reset password Widget.
  StringResolver resetPassword = (_) => "Reset your password";

  /// The title for the send code Widget.
  StringResolver sendCode = (_) => "Send Code";

  // ignore: public_member_api_docs
  TitleResolver(
      {StringResolver? signin,
      StringResolver? signup,
      StringResolver? confirmSignup,
      StringResolver? confirmSigninMfa,
      StringResolver? confirmSigninNewPassword,
      StringResolver? resetPassword,
      StringResolver? sendCode}) {
    // We are assigning in this way due to limitations in assigning closures as defaults
    this.signin = signin ?? this.signin;
    this.signup = signup ?? this.signup;
    this.confirmSignup = confirmSignup ?? this.confirmSignup;
    this.confirmSigninMfa = confirmSigninMfa ?? this.confirmSigninMfa;
    this.confirmSigninNewPassword =
        confirmSigninNewPassword ?? this.confirmSigninNewPassword;
    this.resetPassword = resetPassword ?? this.resetPassword;
    this.sendCode = sendCode ?? this.sendCode;
  }
}
