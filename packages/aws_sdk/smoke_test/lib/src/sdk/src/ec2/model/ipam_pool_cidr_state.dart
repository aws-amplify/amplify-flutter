// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_pool_cidr_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IpamPoolCidrState extends _i1.SmithyEnum<IpamPoolCidrState> {
  const IpamPoolCidrState._(
    super.index,
    super.name,
    super.value,
  );

  const IpamPoolCidrState._sdkUnknown(super.value) : super.sdkUnknown();

  static const deprovisioned = IpamPoolCidrState._(
    0,
    'deprovisioned',
    'deprovisioned',
  );

  static const failedDeprovision = IpamPoolCidrState._(
    1,
    'failed_deprovision',
    'failed-deprovision',
  );

  static const failedImport = IpamPoolCidrState._(
    2,
    'failed_import',
    'failed-import',
  );

  static const failedProvision = IpamPoolCidrState._(
    3,
    'failed_provision',
    'failed-provision',
  );

  static const pendingDeprovision = IpamPoolCidrState._(
    4,
    'pending_deprovision',
    'pending-deprovision',
  );

  static const pendingImport = IpamPoolCidrState._(
    5,
    'pending_import',
    'pending-import',
  );

  static const pendingProvision = IpamPoolCidrState._(
    6,
    'pending_provision',
    'pending-provision',
  );

  static const provisioned = IpamPoolCidrState._(
    7,
    'provisioned',
    'provisioned',
  );

  /// All values of [IpamPoolCidrState].
  static const values = <IpamPoolCidrState>[
    IpamPoolCidrState.deprovisioned,
    IpamPoolCidrState.failedDeprovision,
    IpamPoolCidrState.failedImport,
    IpamPoolCidrState.failedProvision,
    IpamPoolCidrState.pendingDeprovision,
    IpamPoolCidrState.pendingImport,
    IpamPoolCidrState.pendingProvision,
    IpamPoolCidrState.provisioned,
  ];

  static const List<_i1.SmithySerializer<IpamPoolCidrState>> serializers = [
    _i1.SmithyEnumSerializer(
      'IpamPoolCidrState',
      values: values,
      sdkUnknown: IpamPoolCidrState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension IpamPoolCidrStateHelpers on List<IpamPoolCidrState> {
  /// Returns the value of [IpamPoolCidrState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IpamPoolCidrState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IpamPoolCidrState] whose value matches [value].
  IpamPoolCidrState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
