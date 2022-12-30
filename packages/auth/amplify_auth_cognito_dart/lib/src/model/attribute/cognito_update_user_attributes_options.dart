// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_update_user_attributes_options.g.dart';

/// {@template amplify_auth_cognito.cognito_update_user_attributes_options}
/// Cognito extension of [UpdateUserAttributesOptions] to add the platform
/// specific fields.
/// {@endtemplate}
@zAmplifySerializable
class CognitoUpdateUserAttributesOptions extends UpdateUserAttributesOptions
    with AWSEquatable<CognitoUpdateUserAttributesOptions>, AWSDebuggable {
  /// {@macro amplify_auth_cognito.cognito_update_user_attributes_options}
  const CognitoUpdateUserAttributesOptions({this.clientMetadata});

  /// {@macro amplify_auth_cognito.cognito_update_user_attributes_options}
  factory CognitoUpdateUserAttributesOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoUpdateUserAttributesOptionsFromJson(json);

  /// A map of custom key-value pairs that you can provide as input for certain
  /// custom workflows that this action triggers.
  final Map<String, String>? clientMetadata;

  @override
  List<Object?> get props => [clientMetadata];

  @override
  String get runtimeTypeName => 'CognitoUpdateUserAttributesOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoUpdateUserAttributesOptionsToJson(this);
}
