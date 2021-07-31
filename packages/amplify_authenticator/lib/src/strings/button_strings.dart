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
import 'package:amplify_authenticator/src/text_customization/button_resolver.dart';
import 'package:amplify_authenticator/src/strings/auth_strings.dart';

/// The class for displaying button labels
class ButtonStrings {
  /// The optional class that customers can pass to create custom values
  ButtonResolver? resolver;

  static const _signin = "Sign In";
  static const _signup = "Create Account";
  static const _confirm = "Confirm";

  // ignore: public_member_api_docs
  ButtonStrings({ButtonResolver? resolver}) {
    this.resolver = resolver;
  }

  /// Evaluates signin button to a resolver or default value
  String get signin {
    return resolver?.signin != null ? resolver!.signin!() : _signin;
  }

  /// Evaluates signup button to a resolver or default value
  String get signup {
    return resolver?.signup != null ? resolver!.signup!() : _signup;
  }

  /// Evaluates confirm button to a resolver or default value
  String get confirm {
    return resolver?.confirm != null ? resolver!.confirm!() : _confirm;
  }
}
