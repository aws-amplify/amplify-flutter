/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

/// Represents the various common steps a user could be in for the sign in flow.
enum AuthSignInStep {
  /// Multifactor authentication is enabled on this account and requires you to call
  /// [confirmSignIn] with the code sent via SMS text message to proceed with the sign in flow.
  confirmSignInWithSmsMfaCode,

  /// Multifactor authentication is enabled on this account and requires you to call
  /// [confirmSignIn] with the code sent via SMS text message to proceed with the sign in flow.
  confirmSignInWithCustomChallenge,

  /// Multifactor authentication is enabled on this account and requires you to call
  /// [confirmSignIn] with the code sent via SMS text message to proceed with the sign in flow.
  confirmSignInWithNewPassword,

  /// The user account is required to reset its password to be able to login. Call
  /// [resetPassword] and proceed with the reset password flow until complete and
  /// then attempt sign in again.
  resetPassword,

  /// The user account was signed up but never confirmed. Call [resendSignUpCode]
  /// to get a new sign up confirmation code and then submit that using
  /// [confirmSignUp] to confirm the user's account and then attempt sign in again.
  confirmSignUp,

  /// No further steps are needed in the sign in flow.
  done
}
