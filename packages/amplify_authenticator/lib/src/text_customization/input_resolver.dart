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

class InputResolver {
  /// Title of username field
  StringResolver? username_title = (_) => "Username*";

  /// Hint of username field
  StringResolver? username_hint = (_) => "Enter your usernme";

  /// Title of password field
  StringResolver? password_title = (_) => "Password*";

  /// Hint of password field
  StringResolver? password_hint = (_) => "Enter your password";

  /// Title of email field
  StringResolver? email_title = (_) => "Email*";

  /// Hint of email field
  StringResolver? email_hint = (_) => "Enter your email";

  /// Title of phone number field
  StringResolver? phone_number_title = (_) => "Phone Number*";

  /// Hint of phone number field
  StringResolver? phone_number_hint = (_) => "Enter your phone number";

  /// Title of verification code field
  StringResolver? verification_code_title = (_) => "Verification code*";

  /// Hint of verification code field
  StringResolver? verification_code_hint =
      (_) => "Enter your verification code";

  // ignore: public_member_api_docs
  InputResolver(
      {this.username_title,
      this.username_hint,
      this.password_title,
      this.password_hint,
      this.email_title,
      this.email_hint,
      this.phone_number_title,
      this.phone_number_hint,
      this.verification_code_title,
      this.verification_code_hint});
}
