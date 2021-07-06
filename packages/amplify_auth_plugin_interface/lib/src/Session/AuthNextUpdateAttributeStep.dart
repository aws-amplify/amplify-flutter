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
import 'package:flutter/foundation.dart';

/// This wraps all the details around the next step in the user attribute update process.
///
/// It contains [updateAttributeStep] to denote the step and supplements it with
/// optional additional details.
class AuthNextUpdateAttributeStep extends AuthNextStep {
  /// Represents the steps a user could be in for the user attribute update flow.
  ///
  /// Will have a value of `"CONFIRM_ATTRIBUTE_WITH_CODE"` if the user was sent a
  /// code to enable the update of their user attribute.
  ///
  /// Will have a value of `"DONE"` if the flow is completed and no further steps are needed.
  String updateAttributeStep;

  // ignore: public_member_api_docs
  AuthNextUpdateAttributeStep(
      {additionalInfo,
      required codeDeliveryDetails,
      required this.updateAttributeStep})
      : super(
            additionalInfo: additionalInfo,
            codeDeliveryDetails: codeDeliveryDetails);
}
