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
import 'package:amplify_authenticator/src/text_customization/title_resolver.dart';

/// The class for displaying Authenticator Widget titles
class TitleStrings {
  /// The optional class that customers can pass to create custom values
  TitleResolver? resolver;

  static const _signin = "Sign in to your account";
  static const _signup = "Create your account";
  static const _confirm_signin = "Confirm your login";
  static const _confirm_signup = "Confirm your account";

  // ignore: public_member_api_docs
  TitleStrings({TitleResolver? resolver}) {
    this.resolver = resolver;
  }

  /// Evaluates signin to a resolver or default value
  String get signin {
    return resolver?.signin != null ? resolver!.signin!() : _signin;
  }

  /// Evaluates signup to a resolver or default value
  String get signup {
    return resolver?.signup != null ? resolver!.signup!() : _signup;
  }

  /// Evaluates confirm_signin to a resolver or default value
  String get confirm_signin {
    return resolver?.confirm_signin != null
        ? resolver!.confirm_signin!()
        : _confirm_signin;
  }

  /// Evaluates confirm_signup to a resolver or default value
  String get confirm_signup {
    return resolver?.confirm_signup != null
        ? resolver!.confirm_signup!()
        : _confirm_signup;
  }
}
