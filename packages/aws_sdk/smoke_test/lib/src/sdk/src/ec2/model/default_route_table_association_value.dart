// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.default_route_table_association_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DefaultRouteTableAssociationValue
    extends _i1.SmithyEnum<DefaultRouteTableAssociationValue> {
  const DefaultRouteTableAssociationValue._(
    super.index,
    super.name,
    super.value,
  );

  const DefaultRouteTableAssociationValue._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const disable = DefaultRouteTableAssociationValue._(
    0,
    'disable',
    'disable',
  );

  static const enable = DefaultRouteTableAssociationValue._(
    1,
    'enable',
    'enable',
  );

  /// All values of [DefaultRouteTableAssociationValue].
  static const values = <DefaultRouteTableAssociationValue>[
    DefaultRouteTableAssociationValue.disable,
    DefaultRouteTableAssociationValue.enable,
  ];

  static const List<_i1.SmithySerializer<DefaultRouteTableAssociationValue>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'DefaultRouteTableAssociationValue',
      values: values,
      sdkUnknown: DefaultRouteTableAssociationValue._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension DefaultRouteTableAssociationValueHelpers
    on List<DefaultRouteTableAssociationValue> {
  /// Returns the value of [DefaultRouteTableAssociationValue] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DefaultRouteTableAssociationValue byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DefaultRouteTableAssociationValue] whose value matches [value].
  DefaultRouteTableAssociationValue byValue(String value) =>
      firstWhere((el) => el.value == value);
}
