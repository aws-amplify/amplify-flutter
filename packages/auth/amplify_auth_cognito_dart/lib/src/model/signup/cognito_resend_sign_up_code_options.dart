// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_resend_sign_up_code_options.g.dart';

/// {@template amplify_auth_cognito.cognito_resend_sign_up_code_options}
/// Cognito extension of [ResendSignUpCodeOptions] to add the
/// platform-specific fields.
/// {@endtemplate}
@zAmplifySerializable
class CognitoResendSignUpCodeOptions extends ResendSignUpCodeOptions
    with AWSEquatable<CognitoResendSignUpCodeOptions>, AWSDebuggable {
  /// {@macro amplify_auth_cognito.cognito_resend_sign_up_code_options}
  const CognitoResendSignUpCodeOptions({this.clientMetadata});

  /// {@macro amplify_auth_cognito.cognito_resend_sign_up_code_options}
  factory CognitoResendSignUpCodeOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoResendSignUpCodeOptionsFromJson(json);

  /// Additional custom attributes to be sent to the service such as information
  /// about the client.
  final Map<String, String>? clientMetadata;

  @override
  List<Object?> get props => [clientMetadata];

  @override
  String get runtimeTypeName => 'CognitoResendSignUpCodeOptions';

  @override
  Map<String, Object?> toJson() => _$CognitoResendSignUpCodeOptionsToJson(this);
}
