// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_mulitcast_domain_association_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TransitGatewayMulitcastDomainAssociationState
    extends _i1.SmithyEnum<TransitGatewayMulitcastDomainAssociationState> {
  const TransitGatewayMulitcastDomainAssociationState._(
    super.index,
    super.name,
    super.value,
  );

  const TransitGatewayMulitcastDomainAssociationState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const associated = TransitGatewayMulitcastDomainAssociationState._(
    0,
    'associated',
    'associated',
  );

  static const associating = TransitGatewayMulitcastDomainAssociationState._(
    1,
    'associating',
    'associating',
  );

  static const disassociated = TransitGatewayMulitcastDomainAssociationState._(
    2,
    'disassociated',
    'disassociated',
  );

  static const disassociating = TransitGatewayMulitcastDomainAssociationState._(
    3,
    'disassociating',
    'disassociating',
  );

  static const failed = TransitGatewayMulitcastDomainAssociationState._(
    4,
    'failed',
    'failed',
  );

  static const pendingAcceptance =
      TransitGatewayMulitcastDomainAssociationState._(
    5,
    'pendingAcceptance',
    'pendingAcceptance',
  );

  static const rejected = TransitGatewayMulitcastDomainAssociationState._(
    6,
    'rejected',
    'rejected',
  );

  /// All values of [TransitGatewayMulitcastDomainAssociationState].
  static const values = <TransitGatewayMulitcastDomainAssociationState>[
    TransitGatewayMulitcastDomainAssociationState.associated,
    TransitGatewayMulitcastDomainAssociationState.associating,
    TransitGatewayMulitcastDomainAssociationState.disassociated,
    TransitGatewayMulitcastDomainAssociationState.disassociating,
    TransitGatewayMulitcastDomainAssociationState.failed,
    TransitGatewayMulitcastDomainAssociationState.pendingAcceptance,
    TransitGatewayMulitcastDomainAssociationState.rejected,
  ];

  static const List<
          _i1.SmithySerializer<TransitGatewayMulitcastDomainAssociationState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'TransitGatewayMulitcastDomainAssociationState',
      values: values,
      sdkUnknown: TransitGatewayMulitcastDomainAssociationState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TransitGatewayMulitcastDomainAssociationStateHelpers
    on List<TransitGatewayMulitcastDomainAssociationState> {
  /// Returns the value of [TransitGatewayMulitcastDomainAssociationState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TransitGatewayMulitcastDomainAssociationState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TransitGatewayMulitcastDomainAssociationState] whose value matches [value].
  TransitGatewayMulitcastDomainAssociationState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
