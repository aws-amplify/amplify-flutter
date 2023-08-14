// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.default_route_table_propagation_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DefaultRouteTablePropagationValue
    extends _i1.SmithyEnum<DefaultRouteTablePropagationValue> {
  const DefaultRouteTablePropagationValue._(
    super.index,
    super.name,
    super.value,
  );

  const DefaultRouteTablePropagationValue._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const disable = DefaultRouteTablePropagationValue._(
    0,
    'disable',
    'disable',
  );

  static const enable = DefaultRouteTablePropagationValue._(
    1,
    'enable',
    'enable',
  );

  /// All values of [DefaultRouteTablePropagationValue].
  static const values = <DefaultRouteTablePropagationValue>[
    DefaultRouteTablePropagationValue.disable,
    DefaultRouteTablePropagationValue.enable,
  ];

  static const List<_i1.SmithySerializer<DefaultRouteTablePropagationValue>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'DefaultRouteTablePropagationValue',
      values: values,
      sdkUnknown: DefaultRouteTablePropagationValue._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension DefaultRouteTablePropagationValueHelpers
    on List<DefaultRouteTablePropagationValue> {
  /// Returns the value of [DefaultRouteTablePropagationValue] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DefaultRouteTablePropagationValue byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DefaultRouteTablePropagationValue] whose value matches [value].
  DefaultRouteTablePropagationValue byValue(String value) =>
      firstWhere((el) => el.value == value);
}
