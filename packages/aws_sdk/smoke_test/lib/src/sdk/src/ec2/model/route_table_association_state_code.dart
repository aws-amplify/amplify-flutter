// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.route_table_association_state_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RouteTableAssociationStateCode
    extends _i1.SmithyEnum<RouteTableAssociationStateCode> {
  const RouteTableAssociationStateCode._(
    super.index,
    super.name,
    super.value,
  );

  const RouteTableAssociationStateCode._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const associated = RouteTableAssociationStateCode._(
    0,
    'associated',
    'associated',
  );

  static const associating = RouteTableAssociationStateCode._(
    1,
    'associating',
    'associating',
  );

  static const disassociated = RouteTableAssociationStateCode._(
    2,
    'disassociated',
    'disassociated',
  );

  static const disassociating = RouteTableAssociationStateCode._(
    3,
    'disassociating',
    'disassociating',
  );

  static const failed = RouteTableAssociationStateCode._(
    4,
    'failed',
    'failed',
  );

  /// All values of [RouteTableAssociationStateCode].
  static const values = <RouteTableAssociationStateCode>[
    RouteTableAssociationStateCode.associated,
    RouteTableAssociationStateCode.associating,
    RouteTableAssociationStateCode.disassociated,
    RouteTableAssociationStateCode.disassociating,
    RouteTableAssociationStateCode.failed,
  ];

  static const List<_i1.SmithySerializer<RouteTableAssociationStateCode>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'RouteTableAssociationStateCode',
      values: values,
      sdkUnknown: RouteTableAssociationStateCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension RouteTableAssociationStateCodeHelpers
    on List<RouteTableAssociationStateCode> {
  /// Returns the value of [RouteTableAssociationStateCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RouteTableAssociationStateCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RouteTableAssociationStateCode] whose value matches [value].
  RouteTableAssociationStateCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
