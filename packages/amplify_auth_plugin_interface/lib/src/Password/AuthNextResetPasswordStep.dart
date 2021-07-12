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

import '../types/AuthNextStep.dart';
import 'AuthResetPasswordStep.dart';

/// This object represents all details around the next step in the reset password process.
///
/// It holds an instance of the [AuthResetPasswordStep] enum to denote the step itself and
/// supplements it with additional details which can optionally accompany it.
///
/// If there is no next step, [resetPasswordStep] will have a value of [AuthResetPasswordStep.done].
class AuthNextResetPasswordStep extends AuthNextStep {
  /// Represents the various common steps a user could be in for the reset password flow.
  AuthResetPasswordStep resetPasswordStep;
  AuthNextResetPasswordStep(
      {additionalInfo, codeDeliveryDetails, required this.resetPasswordStep})
      : super(
            additionalInfo: additionalInfo,
            codeDeliveryDetails: codeDeliveryDetails);
}
