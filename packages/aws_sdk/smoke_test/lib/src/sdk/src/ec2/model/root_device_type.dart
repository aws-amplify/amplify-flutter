// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.root_device_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RootDeviceType extends _i1.SmithyEnum<RootDeviceType> {
  const RootDeviceType._(
    super.index,
    super.name,
    super.value,
  );

  const RootDeviceType._sdkUnknown(super.value) : super.sdkUnknown();

  static const ebs = RootDeviceType._(
    0,
    'ebs',
    'ebs',
  );

  static const instanceStore = RootDeviceType._(
    1,
    'instance_store',
    'instance-store',
  );

  /// All values of [RootDeviceType].
  static const values = <RootDeviceType>[
    RootDeviceType.ebs,
    RootDeviceType.instanceStore,
  ];

  static const List<_i1.SmithySerializer<RootDeviceType>> serializers = [
    _i1.SmithyEnumSerializer(
      'RootDeviceType',
      values: values,
      sdkUnknown: RootDeviceType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension RootDeviceTypeHelpers on List<RootDeviceType> {
  /// Returns the value of [RootDeviceType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RootDeviceType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RootDeviceType] whose value matches [value].
  RootDeviceType byValue(String value) => firstWhere((el) => el.value == value);
}
