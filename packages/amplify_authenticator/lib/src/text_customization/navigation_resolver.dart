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
class NavigationResolver {
  /// Text for navigating to the signup Widget
  StringResolver? navigate_signup;

  /// Text for navigating to the signin Widget
  StringResolver? navigate_signin;

  /// Text asking if user does not have an account
  StringResolver? no_account_question;

  /// Text asking if user has have an account
  StringResolver? have_account_question;

  /// Text asking if user has have an account
  StringResolver? back_to_signin;

  // ignore: public_member_api_docs
  NavigationResolver(
      {this.navigate_signin,
      this.navigate_signup,
      this.no_account_question,
      this.have_account_question,
      this.back_to_signin});
}
