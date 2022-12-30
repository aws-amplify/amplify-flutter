// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// The current step of the authentication flow.
enum AuthenticatorStep {
  /// The authenticator is in a loading state.
  ///
  /// Either Amplify.configure() or the current authentication status
  /// is pending.
  loading,

  /// The user is on the Onboarding step.
  ///
  /// This step can be used to create an onboarding view that will be
  /// displayed to users prior to showing sign in / sign up.
  ///
  /// See Onboarding guidelines from Material and Human Interface Guidelines
  /// - Material: https://material.io/design/communication/onboarding.html
  /// - Human Interface Guidelines: https://developer.apple.com/design/human-interface-guidelines/ios/app-architecture/onboarding/
  ///
  /// This step is only relevant if a custom builder is provided to the
  /// Authenticator. The prebuilt authenticator takes users directly to
  /// sign in by default.
  onboarding,

  /// The user is on the Sign Up step.
  signUp,

  /// The user is on the Sign In step.
  signIn,

  /// The user is on the Confirm Sign Up step.
  ///
  /// The user has signed up, but their account is currently in
  /// an unconfirmed state.
  confirmSignUp,

  /// The user is on the Confirm Sign In (Custom Auth) step.
  ///
  /// The user has performed the initial step of the sign in process,
  /// and should be presented with a form to enter a response to a custom auth challenge.
  confirmSignInCustomAuth,

  /// The user is on the Confirm Sign In with MFA (Multi-factor
  /// Authentication) step.
  ///
  /// The user has performed the initial step of the sign in process,
  /// and should be presented with a form to enter their confirmation code.
  confirmSignInMfa,

  /// The user is on the Confirm Sign In with New Password step.
  ///
  /// The user has performed the initial step of the sign in process,
  /// and is required to change their password in order to complete
  /// the sign in process.
  confirmSignInNewPassword,

  /// The user is on the Reset Password step.
  resetPassword,

  /// The user is on the Confirm Reset Password step.
  confirmResetPassword,

  /// The user is on the Verify User step.
  ///
  /// The user has successfully signed in and their account is confirmed,
  /// however they do not have any means of account recovery (email, phone)
  /// that is confirmed.
  verifyUser,

  /// The user is on the Confirm Verify User step.
  ///
  /// The user has initiated verification of an account recovery means
  /// (email, phone), and needs to provide a verification code.
  confirmVerifyUser,
}

const validInitialAuthenticatorSteps = [
  AuthenticatorStep.onboarding,
  AuthenticatorStep.signIn,
  AuthenticatorStep.signUp,
  AuthenticatorStep.resetPassword,
];
