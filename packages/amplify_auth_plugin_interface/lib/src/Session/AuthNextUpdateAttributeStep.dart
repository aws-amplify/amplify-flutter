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

import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';

import 'AuthUpdateAttributeStep.dart';

/// This object represents all the details around the next step in the user attribute update process.
///
/// It contains [updateAttributeStep] to denote the step and supplements it with
/// optional additional details.
///
/// If there is no next step, [updateAttributeStep] will have a value of [AuthUpdateAttributeStep.done].
class AuthNextUpdateAttributeStep extends AuthNextStep {
  /// Represents the various common steps a user could be in for the the
  /// user attribute update flow.
  AuthUpdateAttributeStep updateAttributeStep;

  // ignore: public_member_api_docs
  AuthNextUpdateAttributeStep(
      {additionalInfo,
      required codeDeliveryDetails,
      required this.updateAttributeStep})
      : super(
            additionalInfo: additionalInfo,
            codeDeliveryDetails: codeDeliveryDetails);
}
