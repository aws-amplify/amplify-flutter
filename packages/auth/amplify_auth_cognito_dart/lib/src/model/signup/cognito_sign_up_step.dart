// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_auth_cognito.model.signup.cognito_sign_up_step}
/// The current step in the Cognito sign up flow.
/// {@endtemplate}
enum CognitoSignUpStep {
  /// The user is successfully registered but requires an additional
  /// confirmation before the sign up is considered complete.
  confirmSignUp('CONFIRM_SIGN_UP_STEP'),

  /// The user is successfully registered and sign up is complete.
  done('DONE');

  /// {@macro amplify_auth_cognito.model.signup.cognito_sign_up_step}
  const CognitoSignUpStep(this.value);

  /// The string value of `this`.
  final String value;
}
