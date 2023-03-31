// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'auth_next_update_attribute_step.g.dart';

/// {@template amplify_core.auth_next_update_attribute_step}
/// This wraps all the details around the next step in the user attribute update process.
///
/// It contains [updateAttributeStep] to denote the step and supplements it with
/// optional additional details.
/// {@endtemplate}
@zAmplifySerializable
class AuthNextUpdateAttributeStep extends AuthNextStep {
  /// {@macro amplify_core.auth_next_update_attribute_step}
  const AuthNextUpdateAttributeStep({
    super.additionalInfo,
    super.codeDeliveryDetails,
    required this.updateAttributeStep,
  });

  /// {@macro amplify_core.auth_next_update_attribute_step}
  factory AuthNextUpdateAttributeStep.fromJson(Map<String, Object?> json) =>
      _$AuthNextUpdateAttributeStepFromJson(json);

  /// Represents the steps a user could be in for the user attribute update
  /// flow.
  final AuthUpdateAttributeStep updateAttributeStep;

  @override
  Map<String, Object?> toJson() => _$AuthNextUpdateAttributeStepToJson(this);
}
