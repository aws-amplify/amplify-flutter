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

// Generated with smithy-dart 0.5.1. DO NOT MODIFY.

library amplify_auth_cognito.cognito_identity_provider.model.challenge_name_type;

import 'package:smithy/smithy.dart' as _i1;

class ChallengeNameType extends _i1.SmithyEnum<ChallengeNameType> {
  const ChallengeNameType._(int index, String name, String value)
      : super(index, name, value);

  const ChallengeNameType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const adminNoSrpAuth =
      ChallengeNameType._(0, 'ADMIN_NO_SRP_AUTH', 'ADMIN_NO_SRP_AUTH');

  static const customChallenge =
      ChallengeNameType._(1, 'CUSTOM_CHALLENGE', 'CUSTOM_CHALLENGE');

  static const devicePasswordVerifier = ChallengeNameType._(
      2, 'DEVICE_PASSWORD_VERIFIER', 'DEVICE_PASSWORD_VERIFIER');

  static const deviceSrpAuth =
      ChallengeNameType._(3, 'DEVICE_SRP_AUTH', 'DEVICE_SRP_AUTH');

  static const mfaSetup = ChallengeNameType._(4, 'MFA_SETUP', 'MFA_SETUP');

  static const newPasswordRequired =
      ChallengeNameType._(5, 'NEW_PASSWORD_REQUIRED', 'NEW_PASSWORD_REQUIRED');

  static const passwordVerifier =
      ChallengeNameType._(6, 'PASSWORD_VERIFIER', 'PASSWORD_VERIFIER');

  static const selectMfaType =
      ChallengeNameType._(7, 'SELECT_MFA_TYPE', 'SELECT_MFA_TYPE');

  static const smsMfa = ChallengeNameType._(8, 'SMS_MFA', 'SMS_MFA');

  static const softwareTokenMfa =
      ChallengeNameType._(9, 'SOFTWARE_TOKEN_MFA', 'SOFTWARE_TOKEN_MFA');

  /// All values of [ChallengeNameType].
  static const values = <ChallengeNameType>[
    ChallengeNameType.adminNoSrpAuth,
    ChallengeNameType.customChallenge,
    ChallengeNameType.devicePasswordVerifier,
    ChallengeNameType.deviceSrpAuth,
    ChallengeNameType.mfaSetup,
    ChallengeNameType.newPasswordRequired,
    ChallengeNameType.passwordVerifier,
    ChallengeNameType.selectMfaType,
    ChallengeNameType.smsMfa,
    ChallengeNameType.softwareTokenMfa
  ];

  static const List<_i1.SmithySerializer<ChallengeNameType>> serializers = [
    _i1.SmithyEnumSerializer('ChallengeNameType',
        values: values,
        sdkUnknown: ChallengeNameType._sdkUnknown,
        supportedProtocols: [
          _i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')
        ])
  ];
}

extension ChallengeNameTypeHelpers on List<ChallengeNameType> {
  /// Returns the value of [ChallengeNameType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ChallengeNameType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ChallengeNameType] whose value matches [value].
  ChallengeNameType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
