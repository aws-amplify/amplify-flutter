// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@category Auth}
/// {@template amplify_core.auth.auth_sign_up_step}
/// The current step in the sign up flow.
/// {@endtemplate}
enum AuthSignUpStep {
  /// The user is successfully registered but requires an additional
  /// confirmation before the sign up is considered complete.
  confirmSignUp,

  /// The user is successfully registered and sign up is complete.
  done,
}
