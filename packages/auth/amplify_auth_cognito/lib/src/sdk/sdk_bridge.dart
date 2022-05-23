// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/// Bridging extensions between Cognito SDK and Amplify Flutter types.
library amplify_auth_cognito.sdk.sdk_bridge;

import 'package:amplify_auth_cognito/src/model/signin/cognito_sign_in_step.dart';
import 'package:amplify_auth_cognito/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_core/amplify_core.dart';

/// Bridging helpers for [ChallengeNameType].
extension ChallengeNameTypeBridge on ChallengeNameType {
  /// The sign in step corresponding to this challenge.
  CognitoSignInStep get signInStep {
    switch (this) {
      case ChallengeNameType.customChallenge:
        return CognitoSignInStep.confirmSignInWithCustomChallenge;
      case ChallengeNameType.newPasswordRequired:
        return CognitoSignInStep.confirmSignInWithNewPassword;
      case ChallengeNameType.smsMfa:
        return CognitoSignInStep.confirmSignInWithSmsMfaCode;
      case ChallengeNameType.adminNoSrpAuth:
      case ChallengeNameType.selectMfaType:
      case ChallengeNameType.passwordVerifier:
      case ChallengeNameType.devicePasswordVerifier:
      case ChallengeNameType.deviceSrpAuth:
      case ChallengeNameType.mfaSetup:
      case ChallengeNameType.softwareTokenMfa:
        break;
    }
    throw InvalidStateException('Unrecognized challenge type: $this');
  }
}

/// Bridging helpers for [CodeDeliveryDetailsType].
extension CodeDeliveryDetailsBridge on CodeDeliveryDetailsType {
  /// The [AuthCodeDeliveryDetails] representation of `this`.
  AuthCodeDeliveryDetails get asAuthCodeDeliveryDetails {
    return AuthCodeDeliveryDetails(
      destination: destination,
      deliveryMedium: deliveryMedium?.value,
      attributeName: attributeName,
    );
  }
}
