// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_confirm_sign_up_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_confirm_sign_up_options}
/// Options passed to `Amplify.Auth.confirmSignUp`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoConfirmSignUpOptions extends ConfirmSignUpOptions
    with AWSEquatable<CognitoConfirmSignUpOptions>, AWSDebuggable {
  /// {@macro amplify_auth_cognito.model.cognito_confirm_sign_up_options}
  const CognitoConfirmSignUpOptions({this.clientMetadata});

  /// {@macro amplify_auth_cognito.model.cognito_confirm_sign_up_options}
  factory CognitoConfirmSignUpOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoConfirmSignUpOptionsFromJson(json);

  /// A map of custom key-value pairs that you can provide as input for certain
  /// custom workflows that this action triggers.
  final Map<String, String>? clientMetadata;

  @override
  List<Object?> get props => [clientMetadata];

  @override
  String get runtimeTypeName => 'CognitoConfirmSignUpOptions';

  @override
  Map<String, Object?> toJson() => _$CognitoConfirmSignUpOptionsToJson(this);
}
