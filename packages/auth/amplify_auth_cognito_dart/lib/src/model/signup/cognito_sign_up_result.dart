// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.model.cognito_sign_up_result}
/// The result of performing a sign up with Cognito.
/// {@endtemplate}
class CognitoSignUpResult extends SignUpResult {
  /// {@macro amplify_auth_cognito.model.cognito_sign_up_result}
  const CognitoSignUpResult({
    required super.nextStep,
    required super.isSignUpComplete,
    super.userId,
  }) : _userId = userId;

  final String? _userId;

  /// The user ID of the signed-up user.
  ///
  /// Will not be present for `Amplify.Auth.confirmSignUp` calls.
  @override
  String? get userId => _userId;

  @override
  String get runtimeTypeName => 'CognitoSignUpResult';
}
