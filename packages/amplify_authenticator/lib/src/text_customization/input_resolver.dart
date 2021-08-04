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

/// The resolver class for shared input Widgets
class InputResolver {
  /// Title of username field
  StringResolver? username_title;

  /// Hint of username field
  StringResolver? username_hint;

  /// Title of password field
  StringResolver? password_title;

  /// Hint of password field
  StringResolver? password_hint;

  /// Title of email field
  StringResolver? email_title;

  /// Hint of email field
  StringResolver? email_hint;

  /// Title of phone number field
  StringResolver? phone_number_title;

  /// Hint of phone number field
  StringResolver? phone_number_hint;

  /// Title of verification code field
  StringResolver? verification_code_title;

  /// Hint of verification code field
  StringResolver? verification_code_hint;

  // ignore: public_member_api_docs
  InputResolver(
      {StringResolver? username_title,
      StringResolver? username_hint,
      StringResolver? password_title,
      StringResolver? password_hint,
      StringResolver? email_title,
      StringResolver? email_hint,
      StringResolver? phone_number_title,
      StringResolver? phone_number_hint,
      StringResolver? verification_code_title,
      StringResolver? verification_code_hint}) {
    // We are assigning in this way due to limitations in assigning closures as defaults
    this.username_title = username_title ?? (_) => "Username*";
    this.username_hint = username_hint ?? (_) => "Enter your usernme";
    this.password_title = password_title ?? (_) => "Password*";
    this.password_hint = password_hint ?? (_) => "Enter your password";
    this.email_title = email_title ?? (_) => "Email*";
    this.email_hint = email_hint ?? (_) => "Enter your email";
    this.phone_number_title = phone_number_title ?? (_) => "Phone Number*";
    this.phone_number_hint =
        phone_number_hint ?? (_) => "Enter your phone number";
    this.verification_code_title =
        verification_code_title ?? (_) => "Verification code*";
    this.verification_code_hint =
        verification_code_hint ?? (_) => "Enter your verification code";
  }
}
