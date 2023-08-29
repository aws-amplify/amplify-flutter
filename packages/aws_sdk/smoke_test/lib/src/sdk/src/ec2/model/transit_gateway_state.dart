// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TransitGatewayState extends _i1.SmithyEnum<TransitGatewayState> {
  const TransitGatewayState._(
    super.index,
    super.name,
    super.value,
  );

  const TransitGatewayState._sdkUnknown(super.value) : super.sdkUnknown();

  static const available = TransitGatewayState._(
    0,
    'available',
    'available',
  );

  static const deleted = TransitGatewayState._(
    1,
    'deleted',
    'deleted',
  );

  static const deleting = TransitGatewayState._(
    2,
    'deleting',
    'deleting',
  );

  static const modifying = TransitGatewayState._(
    3,
    'modifying',
    'modifying',
  );

  static const pending = TransitGatewayState._(
    4,
    'pending',
    'pending',
  );

  /// All values of [TransitGatewayState].
  static const values = <TransitGatewayState>[
    TransitGatewayState.available,
    TransitGatewayState.deleted,
    TransitGatewayState.deleting,
    TransitGatewayState.modifying,
    TransitGatewayState.pending,
  ];

  static const List<_i1.SmithySerializer<TransitGatewayState>> serializers = [
    _i1.SmithyEnumSerializer(
      'TransitGatewayState',
      values: values,
      sdkUnknown: TransitGatewayState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TransitGatewayStateHelpers on List<TransitGatewayState> {
  /// Returns the value of [TransitGatewayState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TransitGatewayState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TransitGatewayState] whose value matches [value].
  TransitGatewayState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
