/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

class CognitoSignUpOptions extends SignUpOptions {
  /// An optional map of arbitrary key-value pairs which will be passed to your
  /// PreAuthentication Lambda trigger as-is, used for implementing additional
  /// validations around authentication.
  ///
  /// Currently supported on `Android` only.
  final Map<String, String>? validationData;

  /// Creates a sign up configuration with the given user attributes and validation data.
  ///
  /// [userAttributes] is a map of key-value pairs, where the key is one of the standard
  /// attributes, found under [CognitoUserAttributes], or a custom attribute, prefixed
  /// with `custom:`
  ///
  /// For example:
  /// ```dart
  /// var userAttributes = <String, String>{
  ///   CognitoUserAttributes.email: 'test@example.com',
  ///   CognitoUserAttributes.phoneNumber: '+18885551234',
  ///   'custom:my_attribute': 'my_value',
  /// };
  /// var options = CognitoSignUpOptions(userAttributes: userAttributes);
  /// ```
  ///
  /// Certain [userAttributes] keys may be required depending on how your project is configured.
  /// When using email or phone verification and not using the same field for the user's login,
  /// that field is required to be included in [userAttributes].
  ///
  /// - [CognitoUserAttributes.email] is **required** if:
  ///   - One of the following are true:
  ///     - Email verification is enabled (default)
  ///     - Email was marked as a required attribute (default)
  ///   - **and** users sign up with a chosen username or phone number
  /// - [CognitoUserAttributes.phoneNumber] is **required** if:
  ///   - One of the following are true:
  ///     - MFA is ON, or manually enabled for the user
  ///     - Phone number verification is enabled
  ///     - Phone number was marked as a required attribute
  ///   - **and** users sign up with a chosen username or email
  const CognitoSignUpOptions({
    Map<String, String> userAttributes = const {},
    this.validationData,
  }) : super(userAttributes: userAttributes);

  @override
  Map<String, dynamic> serializeAsMap() {
    final Map<String, dynamic> pendingRequest = {
      'validationData': validationData,
      'userAttributes': userAttributes
    };
    pendingRequest.removeWhere((_, v) => v == null);
    return pendingRequest;
  }
}
