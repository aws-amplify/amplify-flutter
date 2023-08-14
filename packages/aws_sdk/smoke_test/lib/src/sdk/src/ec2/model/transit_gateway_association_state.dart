// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_association_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TransitGatewayAssociationState
    extends _i1.SmithyEnum<TransitGatewayAssociationState> {
  const TransitGatewayAssociationState._(
    super.index,
    super.name,
    super.value,
  );

  const TransitGatewayAssociationState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const associated = TransitGatewayAssociationState._(
    0,
    'associated',
    'associated',
  );

  static const associating = TransitGatewayAssociationState._(
    1,
    'associating',
    'associating',
  );

  static const disassociated = TransitGatewayAssociationState._(
    2,
    'disassociated',
    'disassociated',
  );

  static const disassociating = TransitGatewayAssociationState._(
    3,
    'disassociating',
    'disassociating',
  );

  /// All values of [TransitGatewayAssociationState].
  static const values = <TransitGatewayAssociationState>[
    TransitGatewayAssociationState.associated,
    TransitGatewayAssociationState.associating,
    TransitGatewayAssociationState.disassociated,
    TransitGatewayAssociationState.disassociating,
  ];

  static const List<_i1.SmithySerializer<TransitGatewayAssociationState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'TransitGatewayAssociationState',
      values: values,
      sdkUnknown: TransitGatewayAssociationState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TransitGatewayAssociationStateHelpers
    on List<TransitGatewayAssociationState> {
  /// Returns the value of [TransitGatewayAssociationState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TransitGatewayAssociationState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TransitGatewayAssociationState] whose value matches [value].
  TransitGatewayAssociationState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
