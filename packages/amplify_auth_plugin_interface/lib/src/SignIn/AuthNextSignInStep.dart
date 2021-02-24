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

import 'package:flutter/foundation.dart';
import '../types/AuthNextStep.dart';

/// Describes the next step in the sign in process,
/// as well as the channels being used to facilitate the process
class AuthNextSignInStep extends AuthNextStep {
  /// The next step in the sign in process
  String signInStep;

  // ignore: public_member_api_docs
  AuthNextSignInStep({additionalInfo, @required codeDeliveryDetails, @required this.signInStep}) : super(additionalInfo: additionalInfo, codeDeliveryDetails: codeDeliveryDetails);
}
