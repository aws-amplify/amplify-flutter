// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_core.auth.auth_sign_in_step}
/// The current step in the sign in flow.
/// {@endtemplate}
enum AuthSignInStep {
  /// The sign-in is not complete and must be confirmed with an SMS code.
  confirmSignInWithSmsMfaCode,

  /// The sign-in is not complete and must be confirmed with the user's new
  /// password.
  confirmSignInWithNewPassword,

  /// The sign-in is not complete and must be confirmed with the answer to a
  /// custom challenge.
  confirmSignInWithCustomChallenge,

  /// The sign-in is not complete and the user must reset their password before
  /// proceeding.
  resetPassword,

  /// The sign-in is not complete and the user's sign up must be confirmed
  /// before proceeding.
  confirmSignUp,

  /// The sign-in is complete.
  done,
}
