// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.principal_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PrincipalType extends _i1.SmithyEnum<PrincipalType> {
  const PrincipalType._(
    super.index,
    super.name,
    super.value,
  );

  const PrincipalType._sdkUnknown(super.value) : super.sdkUnknown();

  static const account = PrincipalType._(
    0,
    'Account',
    'Account',
  );

  static const all = PrincipalType._(
    1,
    'All',
    'All',
  );

  static const organizationUnit = PrincipalType._(
    2,
    'OrganizationUnit',
    'OrganizationUnit',
  );

  static const role = PrincipalType._(
    3,
    'Role',
    'Role',
  );

  static const service = PrincipalType._(
    4,
    'Service',
    'Service',
  );

  static const user = PrincipalType._(
    5,
    'User',
    'User',
  );

  /// All values of [PrincipalType].
  static const values = <PrincipalType>[
    PrincipalType.account,
    PrincipalType.all,
    PrincipalType.organizationUnit,
    PrincipalType.role,
    PrincipalType.service,
    PrincipalType.user,
  ];

  static const List<_i1.SmithySerializer<PrincipalType>> serializers = [
    _i1.SmithyEnumSerializer(
      'PrincipalType',
      values: values,
      sdkUnknown: PrincipalType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension PrincipalTypeHelpers on List<PrincipalType> {
  /// Returns the value of [PrincipalType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PrincipalType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PrincipalType] whose value matches [value].
  PrincipalType byValue(String value) => firstWhere((el) => el.value == value);
}
