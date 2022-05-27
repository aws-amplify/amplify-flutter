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

import 'package:meta/meta.dart';

/// Constants used in Cognito authentication flows.
@internal
abstract class CognitoConstants {
  CognitoConstants._();

  /// The `USERNAME` parameter.
  static const challengeParamUsername = 'USERNAME';

  /// The `SRP_A` parameter.
  static const challengeParamSrpA = 'SRP_A';

  /// The `SRP_B` parameter.
  static const challengeParamSrpB = 'SRP_B';

  /// The `CHALLENGE_NAME` parameter.
  static const challengeParamChallengeName = 'CHALLENGE_NAME';

  /// The `SECRET_HASH` parameter.
  static const challengeParamSecretHash = 'SECRET_HASH';

  /// The `DEVICE_KEY` parameter.
  static const challengeParamDeviceKey = 'DEVICE_KEY';

  /// The `SECRET_BLOCK` parameter.
  static const challengeParamSecretBlock = 'SECRET_BLOCK';

  /// The `SALT` parameter.
  static const challengeParamSalt = 'SALT';

  /// The `USER_ID_FOR_SRP` parameter.
  static const challengeParamUserIdForSrp = 'USER_ID_FOR_SRP';

  /// The `REFRESH_TOKEN` parameter.
  static const challengeParamRefreshToken = 'REFRESH_TOKEN';

  /// The `PASSWORD_CLAIM_SECRET_BLOCK` parameter.
  static const challengeParamPasswordSecretBlock =
      'PASSWORD_CLAIM_SECRET_BLOCK';

  /// The `PASSWORD_CLAIM_SIGNATURE` parameter.
  static const challengeParamPasswordSignature = 'PASSWORD_CLAIM_SIGNATURE';

  /// The `TIMESTAMP` parameter.
  static const challengeParamTimestamp = 'TIMESTAMP';

  /// The `CODE_DELIVERY_DESTINATION` parameter.
  static const challengeParamDeliveryDest = 'CODE_DELIVERY_DESTINATION';

  /// The `CODE_DELIVERY_DELIVERY_MEDIUM` parameter.
  static const challengeParamDeliveryMedium = 'CODE_DELIVERY_DELIVERY_MEDIUM';

  /// The `SMS_MFA_CODE` parameter.
  static const challengeParamSmsMfaCode = 'SMS_MFA_CODE';

  /// The `SOFTWARE_TOKEN_MFA_CODE` parameter.
  static const challengeParamSoftwareTokenMfaCode = 'SOFTWARE_TOKEN_MFA_CODE';

  /// The `userAttributes` parameter.
  static const challengeParamUserAttributes = 'userAttributes';

  /// The `requiredAttributes` parameter.
  static const challengeParamRequiredAttributes = 'requiredAttributes';

  /// The `userAttributes.` parameter prefix.
  static const challengeParamUserAttributesPrefix = 'userAttributes.';

  /// The `PASSWORD` parameter.
  static const challengeParamPassword = 'PASSWORD';

  /// The `NEW_PASSWORD` parameter.
  static const challengeParamNewPassword = 'NEW_PASSWORD';

  /// The `ANSWER` parameter.
  static const challengeParamAnswer = 'ANSWER';

  /// The `REFRESH_TOKEN` parameter
  static const refreshToken = 'REFRESH_TOKEN';
}
