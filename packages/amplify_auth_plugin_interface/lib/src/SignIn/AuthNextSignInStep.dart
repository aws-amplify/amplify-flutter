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

import '../../amplify_auth_plugin_interface.dart';
import '../types/AuthNextStep.dart';
import 'AuthSignInStep.dart';

class AuthNextSignInStep extends AuthNextStep {
  /// Represents the various common steps a user could be in for the sign in flow.
  AuthSignInStep signInStep;
  AuthNextSignInStep(
      {additionalInfo, codeDeliveryDetails, required this.signInStep})
      : super(
            additionalInfo: additionalInfo,
            codeDeliveryDetails: codeDeliveryDetails);
}
