// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.model.cognito_sign_in_result}
/// The result of performing a sign in with Cognito.
/// {@endtemplate}
class CognitoSignInResult extends SignInResult<CognitoUserAttributeKey> {
  /// {@macro amplify_auth_cognito.model.cognito_sign_in_result}
  const CognitoSignInResult({
    required super.isSignedIn,
    required super.nextStep,
  });
}
