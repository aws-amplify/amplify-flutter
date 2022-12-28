// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_confirm_reset_password_options.g.dart';

/// {@template amplify_auth_cognito.cognito_confirm_reset_password_options}
/// Cognito extension of [ConfirmResetPasswordOptions] to add the
/// platform-specific fields.
///
/// Can be used to add [clientMetadata] to the operation.
/// {@endtemplate}
@zAmplifySerializable
class CognitoConfirmResetPasswordOptions extends ConfirmResetPasswordOptions
    with AWSEquatable<CognitoConfirmResetPasswordOptions>, AWSDebuggable {
  /// {@macro amplify_auth_cognito.cognito_confirm_reset_password_options}
  const CognitoConfirmResetPasswordOptions({this.clientMetadata});

  /// {@macro amplify_auth_cognito.cognito_confirm_reset_password_options}
  factory CognitoConfirmResetPasswordOptions.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoConfirmResetPasswordOptionsFromJson(json);

  /// Additional custom attributes to be sent to the service such as information
  /// about the client.
  final Map<String, String>? clientMetadata;

  @override
  List<Object?> get props => [clientMetadata];

  @override
  String get runtimeTypeName => 'CognitoConfirmResetPasswordOptions';

  @override
  Map<String, Object?> toJson() =>
      _$CognitoConfirmResetPasswordOptionsToJson(this);
}
