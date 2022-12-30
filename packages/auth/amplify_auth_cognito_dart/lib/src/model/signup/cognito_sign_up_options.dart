// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cognito_sign_up_options.g.dart';

/// Cognito options for `Amplify.Auth.signUp`.
@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
  constructor: '_',
)
class CognitoSignUpOptions extends SignUpOptions
    with AWSEquatable<CognitoSignUpOptions>, AWSDebuggable {
  /// {@template amplify_auth_cognito.model.signup.cognito_sign_up_options}
  /// Creates a sign up configuration with the given user attributes and validation data.
  /// {@endtemplate}
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
    Map<String, String>? validationData,
    Map<String, String>? clientMetadata,
  }) : this._(
          userAttributes: (Map.of(userAttributes)
                ..removeWhere((key, value) => key.readOnly))
              .map((attribute, value) => MapEntry(attribute.key, value)),
          validationData: validationData,
          clientMetadata: clientMetadata,
        );

  /// {@macro amplify_auth_cognito.model.signup.cognito_sign_up_options}
  factory CognitoSignUpOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoSignUpOptionsFromJson(json);

  CognitoSignUpOptions._({
    required super.userAttributes,
    this.validationData,
    this.clientMetadata,
  });

  @override
  @JsonKey(fromJson: _userAttributesFromJson)
  Map<String, String> get userAttributes => super.userAttributes;

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

  /// Creates a copy of `this` with the given parameters overridden.
  CognitoSignUpOptions copyWith({
    Map<CognitoUserAttributeKey, String>? userAttributes,
    Map<String, String>? validationData,
    Map<String, String>? clientMetadata,
  }) {
    return userAttributes != null
        ? CognitoSignUpOptions(
            userAttributes: userAttributes,
            clientMetadata: clientMetadata ?? this.clientMetadata,
            validationData: validationData ?? this.validationData,
          )
        : CognitoSignUpOptions._(
            userAttributes: this.userAttributes,
            clientMetadata: clientMetadata ?? this.clientMetadata,
            validationData: validationData ?? this.validationData,
          );
  }

  @override
  List<Object?> get props => [userAttributes, validationData, clientMetadata];

  @override
  Map<String, Object?> toJson() => _$CognitoSignUpOptionsToJson(this);

  @override
  String get runtimeTypeName => 'CognitoSignUpOptions';
}

Map<String, String> _userAttributesFromJson(Map<Object?, Object?>? json) {
  if (json == null) return const {};
  if (json is Map<CognitoUserAttributeKey, Object?>) {
    return json.map((k, v) => MapEntry(k.key, v as String));
  }
  return json.cast();
}
