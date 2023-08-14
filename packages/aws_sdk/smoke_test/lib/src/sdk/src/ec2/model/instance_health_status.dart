// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_health_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InstanceHealthStatus extends _i1.SmithyEnum<InstanceHealthStatus> {
  const InstanceHealthStatus._(
    super.index,
    super.name,
    super.value,
  );

  const InstanceHealthStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const healthyStatus = InstanceHealthStatus._(
    0,
    'HEALTHY_STATUS',
    'healthy',
  );

  static const unhealthyStatus = InstanceHealthStatus._(
    1,
    'UNHEALTHY_STATUS',
    'unhealthy',
  );

  /// All values of [InstanceHealthStatus].
  static const values = <InstanceHealthStatus>[
    InstanceHealthStatus.healthyStatus,
    InstanceHealthStatus.unhealthyStatus,
  ];

  static const List<_i1.SmithySerializer<InstanceHealthStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'InstanceHealthStatus',
      values: values,
      sdkUnknown: InstanceHealthStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension InstanceHealthStatusHelpers on List<InstanceHealthStatus> {
  /// Returns the value of [InstanceHealthStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InstanceHealthStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InstanceHealthStatus] whose value matches [value].
  InstanceHealthStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
