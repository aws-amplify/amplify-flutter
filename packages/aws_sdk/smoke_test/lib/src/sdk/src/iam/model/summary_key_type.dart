// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.summary_key_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SummaryKeyType extends _i1.SmithyEnum<SummaryKeyType> {
  const SummaryKeyType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const SummaryKeyType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const accessKeysPerUserQuota = SummaryKeyType._(
    0,
    'AccessKeysPerUserQuota',
    'AccessKeysPerUserQuota',
  );

  static const accountAccessKeysPresent = SummaryKeyType._(
    1,
    'AccountAccessKeysPresent',
    'AccountAccessKeysPresent',
  );

  static const accountMfaEnabled = SummaryKeyType._(
    2,
    'AccountMFAEnabled',
    'AccountMFAEnabled',
  );

  static const accountSigningCertificatesPresent = SummaryKeyType._(
    3,
    'AccountSigningCertificatesPresent',
    'AccountSigningCertificatesPresent',
  );

  static const attachedPoliciesPerGroupQuota = SummaryKeyType._(
    4,
    'AttachedPoliciesPerGroupQuota',
    'AttachedPoliciesPerGroupQuota',
  );

  static const attachedPoliciesPerRoleQuota = SummaryKeyType._(
    5,
    'AttachedPoliciesPerRoleQuota',
    'AttachedPoliciesPerRoleQuota',
  );

  static const attachedPoliciesPerUserQuota = SummaryKeyType._(
    6,
    'AttachedPoliciesPerUserQuota',
    'AttachedPoliciesPerUserQuota',
  );

  static const globalEndpointTokenVersion = SummaryKeyType._(
    7,
    'GlobalEndpointTokenVersion',
    'GlobalEndpointTokenVersion',
  );

  static const groupPolicySizeQuota = SummaryKeyType._(
    8,
    'GroupPolicySizeQuota',
    'GroupPolicySizeQuota',
  );

  static const groups = SummaryKeyType._(
    9,
    'Groups',
    'Groups',
  );

  static const groupsPerUserQuota = SummaryKeyType._(
    10,
    'GroupsPerUserQuota',
    'GroupsPerUserQuota',
  );

  static const groupsQuota = SummaryKeyType._(
    11,
    'GroupsQuota',
    'GroupsQuota',
  );

  static const mfaDevices = SummaryKeyType._(
    12,
    'MFADevices',
    'MFADevices',
  );

  static const mfaDevicesInUse = SummaryKeyType._(
    13,
    'MFADevicesInUse',
    'MFADevicesInUse',
  );

  static const policies = SummaryKeyType._(
    14,
    'Policies',
    'Policies',
  );

  static const policiesQuota = SummaryKeyType._(
    15,
    'PoliciesQuota',
    'PoliciesQuota',
  );

  static const policySizeQuota = SummaryKeyType._(
    16,
    'PolicySizeQuota',
    'PolicySizeQuota',
  );

  static const policyVersionsInUse = SummaryKeyType._(
    17,
    'PolicyVersionsInUse',
    'PolicyVersionsInUse',
  );

  static const policyVersionsInUseQuota = SummaryKeyType._(
    18,
    'PolicyVersionsInUseQuota',
    'PolicyVersionsInUseQuota',
  );

  static const serverCertificates = SummaryKeyType._(
    19,
    'ServerCertificates',
    'ServerCertificates',
  );

  static const serverCertificatesQuota = SummaryKeyType._(
    20,
    'ServerCertificatesQuota',
    'ServerCertificatesQuota',
  );

  static const signingCertificatesPerUserQuota = SummaryKeyType._(
    21,
    'SigningCertificatesPerUserQuota',
    'SigningCertificatesPerUserQuota',
  );

  static const userPolicySizeQuota = SummaryKeyType._(
    22,
    'UserPolicySizeQuota',
    'UserPolicySizeQuota',
  );

  static const users = SummaryKeyType._(
    23,
    'Users',
    'Users',
  );

  static const usersQuota = SummaryKeyType._(
    24,
    'UsersQuota',
    'UsersQuota',
  );

  static const versionsPerPolicyQuota = SummaryKeyType._(
    25,
    'VersionsPerPolicyQuota',
    'VersionsPerPolicyQuota',
  );

  /// All values of [SummaryKeyType].
  static const values = <SummaryKeyType>[
    SummaryKeyType.accessKeysPerUserQuota,
    SummaryKeyType.accountAccessKeysPresent,
    SummaryKeyType.accountMfaEnabled,
    SummaryKeyType.accountSigningCertificatesPresent,
    SummaryKeyType.attachedPoliciesPerGroupQuota,
    SummaryKeyType.attachedPoliciesPerRoleQuota,
    SummaryKeyType.attachedPoliciesPerUserQuota,
    SummaryKeyType.globalEndpointTokenVersion,
    SummaryKeyType.groupPolicySizeQuota,
    SummaryKeyType.groups,
    SummaryKeyType.groupsPerUserQuota,
    SummaryKeyType.groupsQuota,
    SummaryKeyType.mfaDevices,
    SummaryKeyType.mfaDevicesInUse,
    SummaryKeyType.policies,
    SummaryKeyType.policiesQuota,
    SummaryKeyType.policySizeQuota,
    SummaryKeyType.policyVersionsInUse,
    SummaryKeyType.policyVersionsInUseQuota,
    SummaryKeyType.serverCertificates,
    SummaryKeyType.serverCertificatesQuota,
    SummaryKeyType.signingCertificatesPerUserQuota,
    SummaryKeyType.userPolicySizeQuota,
    SummaryKeyType.users,
    SummaryKeyType.usersQuota,
    SummaryKeyType.versionsPerPolicyQuota,
  ];

  static const List<_i1.SmithySerializer<SummaryKeyType>> serializers = [
    _i1.SmithyEnumSerializer(
      'summaryKeyType',
      values: values,
      sdkUnknown: SummaryKeyType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension SummaryKeyTypeHelpers on List<SummaryKeyType> {
  /// Returns the value of [SummaryKeyType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SummaryKeyType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SummaryKeyType] whose value matches [value].
  SummaryKeyType byValue(String value) => firstWhere((el) => el.value == value);
}
