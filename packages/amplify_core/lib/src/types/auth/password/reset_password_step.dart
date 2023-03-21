// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reset_password_step.g.dart';

/// {@template amplify_core.reset_password_step}
/// The next step required for resetting a user's password.
/// {@endtemplate}
@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
  // TODO(dnys1): Fix generic serialization
  createFactory: false,
)
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

  final AuthResetPasswordStep updateStep;

  @override
  @JsonKey(
    includeToJson: false,
  ) // Workaround for https://github.com/google/json_serializable.dart/issues/1102
  List<Object?> get props => [additionalInfo, codeDeliveryDetails, updateStep];

  @override
  Map<String, Object?> toJson() => _$ResetPasswordStepToJson(this);

  @override
  String get runtimeTypeName => 'ResetPasswordStep';
}
