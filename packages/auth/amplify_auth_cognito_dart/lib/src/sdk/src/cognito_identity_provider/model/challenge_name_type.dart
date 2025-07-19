// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library amplify_auth_cognito_dart.cognito_identity_provider.model.challenge_name_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ChallengeNameType extends _i1.SmithyEnum<ChallengeNameType> {
  const ChallengeNameType._(super.index, super.name, super.value);

  const ChallengeNameType._sdkUnknown(super.value) : super.sdkUnknown();

  static const adminNoSrpAuth = ChallengeNameType._(
    0,
    'ADMIN_NO_SRP_AUTH',
    'ADMIN_NO_SRP_AUTH',
  );

  static const customChallenge = ChallengeNameType._(
    1,
    'CUSTOM_CHALLENGE',
    'CUSTOM_CHALLENGE',
  );

  static const devicePasswordVerifier = ChallengeNameType._(
    2,
    'DEVICE_PASSWORD_VERIFIER',
    'DEVICE_PASSWORD_VERIFIER',
  );

  static const deviceSrpAuth = ChallengeNameType._(
    3,
    'DEVICE_SRP_AUTH',
    'DEVICE_SRP_AUTH',
  );

  static const emailOtp = ChallengeNameType._(4, 'EMAIL_OTP', 'EMAIL_OTP');

  static const mfaSetup = ChallengeNameType._(5, 'MFA_SETUP', 'MFA_SETUP');

  static const newPasswordRequired = ChallengeNameType._(
    6,
    'NEW_PASSWORD_REQUIRED',
    'NEW_PASSWORD_REQUIRED',
  );

  static const password = ChallengeNameType._(7, 'PASSWORD', 'PASSWORD');

  static const passwordSrp = ChallengeNameType._(
    8,
    'PASSWORD_SRP',
    'PASSWORD_SRP',
  );

  static const passwordVerifier = ChallengeNameType._(
    9,
    'PASSWORD_VERIFIER',
    'PASSWORD_VERIFIER',
  );

  static const selectChallenge = ChallengeNameType._(
    10,
    'SELECT_CHALLENGE',
    'SELECT_CHALLENGE',
  );

  static const selectMfaType = ChallengeNameType._(
    11,
    'SELECT_MFA_TYPE',
    'SELECT_MFA_TYPE',
  );

  static const smsMfa = ChallengeNameType._(12, 'SMS_MFA', 'SMS_MFA');

  static const smsOtp = ChallengeNameType._(13, 'SMS_OTP', 'SMS_OTP');

  static const softwareTokenMfa = ChallengeNameType._(
    14,
    'SOFTWARE_TOKEN_MFA',
    'SOFTWARE_TOKEN_MFA',
  );

  static const webAuthn = ChallengeNameType._(15, 'WEB_AUTHN', 'WEB_AUTHN');

  /// All values of [ChallengeNameType].
  static const values = <ChallengeNameType>[
    ChallengeNameType.adminNoSrpAuth,
    ChallengeNameType.customChallenge,
    ChallengeNameType.devicePasswordVerifier,
    ChallengeNameType.deviceSrpAuth,
    ChallengeNameType.emailOtp,
    ChallengeNameType.mfaSetup,
    ChallengeNameType.newPasswordRequired,
    ChallengeNameType.password,
    ChallengeNameType.passwordSrp,
    ChallengeNameType.passwordVerifier,
    ChallengeNameType.selectChallenge,
    ChallengeNameType.selectMfaType,
    ChallengeNameType.smsMfa,
    ChallengeNameType.smsOtp,
    ChallengeNameType.softwareTokenMfa,
    ChallengeNameType.webAuthn,
  ];

  static const List<_i1.SmithySerializer<ChallengeNameType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ChallengeNameType',
      values: values,
      sdkUnknown: ChallengeNameType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
      ],
    ),
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
