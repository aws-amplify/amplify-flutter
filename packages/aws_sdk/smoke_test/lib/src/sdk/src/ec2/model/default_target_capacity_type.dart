// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.default_target_capacity_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DefaultTargetCapacityType
    extends _i1.SmithyEnum<DefaultTargetCapacityType> {
  const DefaultTargetCapacityType._(
    super.index,
    super.name,
    super.value,
  );

  const DefaultTargetCapacityType._sdkUnknown(super.value) : super.sdkUnknown();

  static const onDemand = DefaultTargetCapacityType._(
    0,
    'ON_DEMAND',
    'on-demand',
  );

  static const spot = DefaultTargetCapacityType._(
    1,
    'SPOT',
    'spot',
  );

  /// All values of [DefaultTargetCapacityType].
  static const values = <DefaultTargetCapacityType>[
    DefaultTargetCapacityType.onDemand,
    DefaultTargetCapacityType.spot,
  ];

  static const List<_i1.SmithySerializer<DefaultTargetCapacityType>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'DefaultTargetCapacityType',
      values: values,
      sdkUnknown: DefaultTargetCapacityType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension DefaultTargetCapacityTypeHelpers on List<DefaultTargetCapacityType> {
  /// Returns the value of [DefaultTargetCapacityType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DefaultTargetCapacityType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DefaultTargetCapacityType] whose value matches [value].
  DefaultTargetCapacityType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
