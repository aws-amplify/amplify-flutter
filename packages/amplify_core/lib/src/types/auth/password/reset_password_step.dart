/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_core/src/types/auth/auth_code_delivery_details.dart';
import 'package:amplify_core/src/types/auth/auth_next_step.dart';
import 'package:amplify_core/src/util/serializable.dart';
import 'package:aws_common/aws_common.dart';

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
