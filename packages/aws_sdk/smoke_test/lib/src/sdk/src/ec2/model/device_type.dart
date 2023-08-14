// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.device_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DeviceType extends _i1.SmithyEnum<DeviceType> {
  const DeviceType._(
    super.index,
    super.name,
    super.value,
  );

  const DeviceType._sdkUnknown(super.value) : super.sdkUnknown();

  static const ebs = DeviceType._(
    0,
    'ebs',
    'ebs',
  );

  static const instanceStore = DeviceType._(
    1,
    'instance_store',
    'instance-store',
  );

  /// All values of [DeviceType].
  static const values = <DeviceType>[
    DeviceType.ebs,
    DeviceType.instanceStore,
  ];

  static const List<_i1.SmithySerializer<DeviceType>> serializers = [
    _i1.SmithyEnumSerializer(
      'DeviceType',
      values: values,
      sdkUnknown: DeviceType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension DeviceTypeHelpers on List<DeviceType> {
  /// Returns the value of [DeviceType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DeviceType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DeviceType] whose value matches [value].
  DeviceType byValue(String value) => firstWhere((el) => el.value == value);
}
