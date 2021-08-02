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

import 'package:amplify_authenticator/src/strings/auth_string_type.dart';
import 'package:amplify_authenticator/src/text_customization/auth_strings_resolver.dart';

/// The class for displaying navigation related labels
class NavigationStrings extends AuthStringType {
  /// The optional class that customers can pass to create custom values
  NavigationResolver? resolver;
  static const _navigate_signin = "Sign In";
  static const _navigate_signup = "Sign Up";
  static const _no_account_question = "No account?";
  static const _have_account_question = "Have an account?";
  static const _back_to_signin = "Back to sign in";

  // ignore: public_member_api_docs
  NavigationStrings({NavigationResolver? resolver}) {
    this.resolver = resolver;
  }

  /// Evaluates navigate_signin  to a resolver or default value
  String get navigate_signin {
    return resolver?.navigate_signin != null
        ? resolver!.navigate_signin!(this.context)
        : _navigate_signin;
  }

  /// Evaluates navigate_signup to a resolver or default value
  String get navigate_signup {
    return resolver?.navigate_signup != null
        ? resolver!.navigate_signup!(this.context)
        : _navigate_signup;
  }

  /// Evaluates no_account_question to a resolver or default value
  String get no_account_question {
    return resolver?.no_account_question != null
        ? resolver!.no_account_question!(this.context)
        : _no_account_question;
  }

  /// Evaluates have_account_question to a resolver or default value
  String get have_account_question {
    return resolver?.have_account_question != null
        ? resolver!.have_account_question!(this.context)
        : _have_account_question;
  }

  /// Evaluates no_account_question to a resolver or default value
  String get back_to_signin {
    return resolver?.back_to_signin != null
        ? resolver!.back_to_signin!(this.context)
        : _back_to_signin;
  }
}
