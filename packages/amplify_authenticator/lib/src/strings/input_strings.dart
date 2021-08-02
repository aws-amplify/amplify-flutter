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
import 'package:amplify_authenticator/src/strings/auth_strings.dart';
import 'package:amplify_authenticator/src/text_customization/input_resolver.dart';

/// The class for displaying input field strings
class InputStrings extends AuthStringType {
  /// The optional class that customers can pass to create custom values
  InputResolver? resolver;
  static const _username_title = "Username*";
  static const _username_hint = "Enter your username";
  static const _password_title = "Password*";
  static const _password_hint = "Enter your password";
  static const _email_title = "Email *";
  static const _email_hint = "Enter your email";
  static const _phone_number_title = "Phone Number *";
  static const _phone_number_hint = "Enter your phone number";
  static const _verification_code_title = "Verification Code*";
  static const _verification_code_hint = "Enter your verification code";

  // ignore: public_member_api_docs
  InputStrings({InputResolver? resolver}) {
    this.resolver = resolver;
  }

  /// Evaluates username_title to a resolver or default value
  String get username_title {
    return resolver?.username_title != null
        ? resolver!.username_title!(this.context)
        : _username_title;
  }

  /// Evaluates username_hint to a resolver or default value
  String get username_hint {
    return resolver?.username_hint != null
        ? resolver!.username_hint!(this.context)
        : _username_hint;
  }

  /// Evaluates password_title to a resolver or default value
  String get password_title {
    return resolver?.password_title != null
        ? resolver!.password_title!(this.context)
        : _password_title;
  }

  /// Evaluates password_hint to a resolver or default value
  String get password_hint {
    return resolver?.password_hint != null
        ? resolver!.password_hint!(this.context)
        : _password_hint;
  }

  /// Evaluates email_title to a resolver or default value
  String get email_title {
    return resolver?.email_title != null
        ? resolver!.email_title!(this.context)
        : _email_title;
  }

  /// Evaluates email_hint to a resolver or default value
  String get email_hint {
    return resolver?.email_hint != null
        ? resolver!.email_hint!(this.context)
        : _email_hint;
  }

  /// Evaluates phone_number_title to a resolver or default value
  String get phone_number_title {
    return resolver?.phone_number_title != null
        ? resolver!.phone_number_title!(this.context)
        : _phone_number_title;
  }

  /// Evaluates phone_number_hint to a resolver or default value
  String get phone_number_hint {
    return resolver?.phone_number_hint != null
        ? resolver!.phone_number_hint!(this.context)
        : _phone_number_hint;
  }

  /// Evaluates verification_code_title to a resolver or default value
  String get verification_code_title {
    return resolver?.verification_code_title != null
        ? resolver!.verification_code_title!(this.context)
        : _verification_code_title;
  }

  /// Evaluates verification_code_hint to a resolver or default value
  String get verification_code_hint {
    return resolver?.verification_code_hint != null
        ? resolver!.verification_code_hint!(this.context)
        : _verification_code_hint;
  }
}
