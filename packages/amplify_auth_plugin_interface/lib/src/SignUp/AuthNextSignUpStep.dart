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

class AuthNextSignUpStep extends AuthNextStep {
  String signUpStep;

  AuthNextSignUpStep(
      {additionalInfo,
      @required codeDeliveryDetails,
      @required this.signUpStep})
      : super(
            additionalInfo: additionalInfo,
            codeDeliveryDetails: codeDeliveryDetails);

  @override
  String toString() {
    return 'AuthNextSignUpStep(additionalInfo: $additionalInfo, codeDeliveryDetails: $codeDeliveryDetails, signUpStep: $signUpStep)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is AuthNextSignUpStep &&
        o.additionalInfo == additionalInfo &&
        o.codeDeliveryDetails == codeDeliveryDetails &&
        o.signUpStep == signUpStep;
  }

  @override
  int get hashCode {
    return additionalInfo.hashCode ^
        codeDeliveryDetails.hashCode ^
        signUpStep.hashCode;
  }
}
