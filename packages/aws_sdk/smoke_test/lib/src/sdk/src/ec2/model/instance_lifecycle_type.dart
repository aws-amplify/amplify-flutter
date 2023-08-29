// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_lifecycle_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InstanceLifecycleType extends _i1.SmithyEnum<InstanceLifecycleType> {
  const InstanceLifecycleType._(
    super.index,
    super.name,
    super.value,
  );

  const InstanceLifecycleType._sdkUnknown(super.value) : super.sdkUnknown();

  static const scheduled = InstanceLifecycleType._(
    0,
    'scheduled',
    'scheduled',
  );

  static const spot = InstanceLifecycleType._(
    1,
    'spot',
    'spot',
  );

  /// All values of [InstanceLifecycleType].
  static const values = <InstanceLifecycleType>[
    InstanceLifecycleType.scheduled,
    InstanceLifecycleType.spot,
  ];

  static const List<_i1.SmithySerializer<InstanceLifecycleType>> serializers = [
    _i1.SmithyEnumSerializer(
      'InstanceLifecycleType',
      values: values,
      sdkUnknown: InstanceLifecycleType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension InstanceLifecycleTypeHelpers on List<InstanceLifecycleType> {
  /// Returns the value of [InstanceLifecycleType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InstanceLifecycleType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InstanceLifecycleType] whose value matches [value].
  InstanceLifecycleType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
