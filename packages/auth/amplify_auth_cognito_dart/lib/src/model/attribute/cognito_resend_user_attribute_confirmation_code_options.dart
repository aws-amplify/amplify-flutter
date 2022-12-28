// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_resend_user_attribute_confirmation_code_options.g.dart';

/// {@template amplify_auth_cognito.cognito_resend_user_attribute_confirmation_code_options}
/// Cognito extension of [ResendUserAttributeConfirmationCodeOptions] to add the
/// platform specific fields.
/// {@endtemplate}
@zAmplifySerializable
class CognitoResendUserAttributeConfirmationCodeOptions
    extends ResendUserAttributeConfirmationCodeOptions
    with
        AWSEquatable<CognitoResendUserAttributeConfirmationCodeOptions>,
        AWSDebuggable {
  /// {@macro amplify_auth_cognito.cognito_resend_user_attribute_confirmation_code_options}
  const CognitoResendUserAttributeConfirmationCodeOptions({
    this.clientMetadata,
  });

  /// {@macro amplify_auth_cognito.cognito_resend_user_attribute_confirmation_code_options}
  factory CognitoResendUserAttributeConfirmationCodeOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoResendUserAttributeConfirmationCodeOptionsFromJson(json);

  /// A map of custom key-value pairs that you can provide as input for certain
  /// custom workflows that this action triggers.
  final Map<String, String>? clientMetadata;

  @override
  List<Object?> get props => [clientMetadata];

  @override
  String get runtimeTypeName =>
      'CognitoResendUserAttributeConfirmationCodeOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoResendUserAttributeConfirmationCodeOptionsToJson(this);
}
