// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_management_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IpamManagementState extends _i1.SmithyEnum<IpamManagementState> {
  const IpamManagementState._(
    super.index,
    super.name,
    super.value,
  );

  const IpamManagementState._sdkUnknown(super.value) : super.sdkUnknown();

  static const ignored = IpamManagementState._(
    0,
    'ignored',
    'ignored',
  );

  static const managed = IpamManagementState._(
    1,
    'managed',
    'managed',
  );

  static const unmanaged = IpamManagementState._(
    2,
    'unmanaged',
    'unmanaged',
  );

  /// All values of [IpamManagementState].
  static const values = <IpamManagementState>[
    IpamManagementState.ignored,
    IpamManagementState.managed,
    IpamManagementState.unmanaged,
  ];

  static const List<_i1.SmithySerializer<IpamManagementState>> serializers = [
    _i1.SmithyEnumSerializer(
      'IpamManagementState',
      values: values,
      sdkUnknown: IpamManagementState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension IpamManagementStateHelpers on List<IpamManagementState> {
  /// Returns the value of [IpamManagementState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IpamManagementState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IpamManagementState] whose value matches [value].
  IpamManagementState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
