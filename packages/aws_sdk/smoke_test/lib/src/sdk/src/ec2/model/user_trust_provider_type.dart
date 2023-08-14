// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.user_trust_provider_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class UserTrustProviderType extends _i1.SmithyEnum<UserTrustProviderType> {
  const UserTrustProviderType._(
    super.index,
    super.name,
    super.value,
  );

  const UserTrustProviderType._sdkUnknown(super.value) : super.sdkUnknown();

  static const iamIdentityCenter = UserTrustProviderType._(
    0,
    'iam_identity_center',
    'iam-identity-center',
  );

  static const oidc = UserTrustProviderType._(
    1,
    'oidc',
    'oidc',
  );

  /// All values of [UserTrustProviderType].
  static const values = <UserTrustProviderType>[
    UserTrustProviderType.iamIdentityCenter,
    UserTrustProviderType.oidc,
  ];

  static const List<_i1.SmithySerializer<UserTrustProviderType>> serializers = [
    _i1.SmithyEnumSerializer(
      'UserTrustProviderType',
      values: values,
      sdkUnknown: UserTrustProviderType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension UserTrustProviderTypeHelpers on List<UserTrustProviderType> {
  /// Returns the value of [UserTrustProviderType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  UserTrustProviderType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [UserTrustProviderType] whose value matches [value].
  UserTrustProviderType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
