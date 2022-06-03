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

import 'package:amplify_core/amplify_core.dart';

/// Cognito options for `Amplify.Auth.signUp`.
class CognitoSignUpOptions extends SignUpOptions {
  /// Creates a sign up configuration with the given user attributes and validation data.
  ///
  /// [userAttributes] is a map of key-value pairs, where the key is one of the standard
  /// attributes, found under [CognitoUserAttributeKey], or a custom attribute, prefixed
  /// with `custom:`
  ///
  /// For example:
  /// ```dart
  /// var userAttributes = <CognitoUserAttributeKey, String>{
  ///   CognitoUserAttributeKey.email: 'test@example.com',
  ///   CognitoUserAttributeKey.phoneNumber: '+18885551234',
  ///   CognitoUserAttributeKey.custom('my_attribute'): 'my_value',
  /// };
  /// var options = CognitoSignUpOptions(userAttributes: userAttributes);
  /// ```
  ///
  /// Certain [userAttributes] keys may be required depending on how your project is configured.
  /// When using email or phone verification and not using the same field for the user's login,
  /// that field is required to be included in [userAttributes].
  ///
  /// - [CognitoUserAttributeKey.email] is **required** if:
  ///   - One of the following are true:
  ///     - Email verification is enabled (default)
  ///     - Email was marked as a required attribute (default)
  ///   - **and** users sign up with a chosen username or phone number
  /// - [CognitoUserAttributeKey.phoneNumber] is **required** if:
  ///   - One of the following are true:
  ///     - MFA is ON, or manually enabled for the user
  ///     - Phone number verification is enabled
  ///     - Phone number was marked as a required attribute
  ///   - **and** users sign up with a chosen username or email
  CognitoSignUpOptions({
    Map<CognitoUserAttributeKey, String> userAttributes = const {},
    this.validationData,
    this.clientMetadata,
  }) : super(
          userAttributes: (Map.of(userAttributes)
                ..removeWhere((key, value) => key.readOnly))
              .map((attribute, value) => MapEntry(attribute.key, value)),
        );

  /// An optional map of arbitrary key-value pairs which will be passed to your
  /// PreAuthentication Lambda trigger as-is, used for implementing additional
  /// validations around authentication.
  ///
  /// Currently supported on `Android` only.
  final Map<String, String>? validationData;

  /// Additional custom attributes to be sent to the service such as information
  /// about the client.
  ///
  final Map<String, String>? clientMetadata;

  @override
  Map<String, Object?> serializeAsMap() => {
        if (validationData != null) 'validationData': validationData,
        'userAttributes': userAttributes,
        if (clientMetadata != null) 'clientMetadata': clientMetadata
      };
}
