// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/types/auth/password/reset_password_step.dart';

/// {@template amplify_core.auth.auth_reset_password_step}
/// The current step in the reset password flow.
/// {@endtemplate}
enum AuthResetPasswordStep {
  /// Next step is to confirm the password with a code.
  ///
  /// Invoke `Amplify.Auth.confirmResetPassword` with new password and the
  /// confirmation code delivered to the user specified via the
  /// [ResetPasswordStep.codeDeliveryDetails] field.
  confirmResetPasswordWithCode,

  /// Reset password complete, there are no remaining steps.
  done,
}
