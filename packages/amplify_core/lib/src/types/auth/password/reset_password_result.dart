// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.reset_password_result}
/// The result of a password reset request.
/// {@endtemplate}
abstract class ResetPasswordResult with AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.reset_password_result}
  const ResetPasswordResult({
    required this.isPasswordReset,
    required this.nextStep,
  });

  final bool isPasswordReset;
  final ResetPasswordStep nextStep;
}
