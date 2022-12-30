// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_auth_cognito.model.cognito_sign_in_step}
/// The current step in the Cognito sign in flow.
/// {@endtemplate}
enum CognitoSignInStep {
  /// The sign-in is not complete and must be confirmed with an SMS code.
  confirmSignInWithSmsMfaCode('CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE'),

  /// The sign-in is not complete and must be confirmed with the user's new
  /// password.
  confirmSignInWithNewPassword('CONFIRM_SIGN_IN_WITH_NEW_PASSWORD'),

  /// The sign-in is not complete and must be confirmed with the answer to a
  /// custom challenge.
  confirmSignInWithCustomChallenge('CONFIRM_SIGN_IN_WITH_CUSTOM_CHALLENGE'),

  /// The sign-in is not complete and the user must reset their password before
  /// proceeding.
  resetPassword('RESET_PASSWORD'),

  /// The sign-in is not complete and the user's sign up must be confirmed
  /// before proceeding.
  confirmSignUp('CONFIRM_SIGN_UP'),

  /// The sign-in is complete.
  done('DONE');

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_step}
  const CognitoSignInStep(this.value);

  /// The string value of `this`.
  final String value;
}
