// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.usage_class_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class UsageClassType extends _i1.SmithyEnum<UsageClassType> {
  const UsageClassType._(
    super.index,
    super.name,
    super.value,
  );

  const UsageClassType._sdkUnknown(super.value) : super.sdkUnknown();

  static const onDemand = UsageClassType._(
    0,
    'on_demand',
    'on-demand',
  );

  static const spot = UsageClassType._(
    1,
    'spot',
    'spot',
  );

  /// All values of [UsageClassType].
  static const values = <UsageClassType>[
    UsageClassType.onDemand,
    UsageClassType.spot,
  ];

  static const List<_i1.SmithySerializer<UsageClassType>> serializers = [
    _i1.SmithyEnumSerializer(
      'UsageClassType',
      values: values,
      sdkUnknown: UsageClassType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension UsageClassTypeHelpers on List<UsageClassType> {
  /// Returns the value of [UsageClassType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  UsageClassType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [UsageClassType] whose value matches [value].
  UsageClassType byValue(String value) => firstWhere((el) => el.value == value);
}
