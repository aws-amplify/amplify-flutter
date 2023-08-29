// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.dynamic_routing_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DynamicRoutingValue extends _i1.SmithyEnum<DynamicRoutingValue> {
  const DynamicRoutingValue._(
    super.index,
    super.name,
    super.value,
  );

  const DynamicRoutingValue._sdkUnknown(super.value) : super.sdkUnknown();

  static const disable = DynamicRoutingValue._(
    0,
    'disable',
    'disable',
  );

  static const enable = DynamicRoutingValue._(
    1,
    'enable',
    'enable',
  );

  /// All values of [DynamicRoutingValue].
  static const values = <DynamicRoutingValue>[
    DynamicRoutingValue.disable,
    DynamicRoutingValue.enable,
  ];

  static const List<_i1.SmithySerializer<DynamicRoutingValue>> serializers = [
    _i1.SmithyEnumSerializer(
      'DynamicRoutingValue',
      values: values,
      sdkUnknown: DynamicRoutingValue._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension DynamicRoutingValueHelpers on List<DynamicRoutingValue> {
  /// Returns the value of [DynamicRoutingValue] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DynamicRoutingValue byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DynamicRoutingValue] whose value matches [value].
  DynamicRoutingValue byValue(String value) =>
      firstWhere((el) => el.value == value);
}
