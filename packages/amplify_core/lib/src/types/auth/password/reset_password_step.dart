// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'reset_password_step.g.dart';

/// {@template amplify_core.reset_password_step}
/// The next step required for resetting a user's password.
/// {@endtemplate}
@zAmplifySerializable
class ResetPasswordStep extends AuthNextStep
    with
        AWSEquatable<ResetPasswordStep>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.reset_password_step}
  const ResetPasswordStep({
    super.additionalInfo,
    super.codeDeliveryDetails,
    required this.updateStep,
  });

  /// {@macro amplify_core.reset_password_step}
  factory ResetPasswordStep.fromJson(Map<String, Object?> json) =>
      _$ResetPasswordStepFromJson(json);

  final String updateStep;

  @override
  List<Object?> get props => [additionalInfo, codeDeliveryDetails, updateStep];

  @override
  Map<String, Object?> toJson() => _$ResetPasswordStepToJson(this);

  @override
  String get runtimeTypeName => 'ResetPasswordStep';
}
