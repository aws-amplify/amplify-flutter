// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'cognito_reset_password_result.g.dart';

/// {@template amplify_auth_cognito.model.cognito_reset_password_result}
/// The result of performing a password reset.
/// {@endtemplate}
@zAmplifySerializable
class CognitoResetPasswordResult extends ResetPasswordResult
    with AWSEquatable<CognitoResetPasswordResult>, AWSDebuggable {
  /// {@template amplify_auth_cognito.model.cognito_reset_password_result}
  const CognitoResetPasswordResult({
    required super.isPasswordReset,
    required super.nextStep,
  });

  /// {@template amplify_auth_cognito.model.cognito_reset_password_result}
  factory CognitoResetPasswordResult.fromJson(Map<String, Object?> json) =>
      _$CognitoResetPasswordResultFromJson(json);

  @override
  List<Object?> get props => [isPasswordReset, nextStep];

  @override
  String get runtimeTypeName => 'CognitoResetPasswordResult';

  @override
  Map<String, Object?> toJson() => _$CognitoResetPasswordResultToJson(this);
}
