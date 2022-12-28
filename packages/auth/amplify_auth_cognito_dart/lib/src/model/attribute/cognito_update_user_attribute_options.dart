// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_update_user_attribute_options.g.dart';

/// {@template amplify_auth_cognito.cognito_update_user_attribute_options}
/// Cognito extension of [UpdateUserAttributeOptions] to add the platform
/// specific fields.
/// {@endtemplate}
@zAmplifySerializable
class CognitoUpdateUserAttributeOptions extends UpdateUserAttributeOptions
    with AWSEquatable<CognitoUpdateUserAttributeOptions>, AWSDebuggable {
  /// {@macro amplify_auth_cognito.cognito_update_user_attribute_options}
  const CognitoUpdateUserAttributeOptions({this.clientMetadata});

  /// {@macro amplify_auth_cognito.cognito_update_user_attribute_options}
  factory CognitoUpdateUserAttributeOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoUpdateUserAttributeOptionsFromJson(json);

  /// A map of custom key-value pairs that you can provide as input for certain
  /// custom workflows that this action triggers.
  final Map<String, String>? clientMetadata;

  @override
  List<Object?> get props => [clientMetadata];

  @override
  String get runtimeTypeName => 'CognitoUpdateUserAttributeOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoUpdateUserAttributeOptionsToJson(this);
}
