// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_multicast_domain_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TransitGatewayMulticastDomainState
    extends _i1.SmithyEnum<TransitGatewayMulticastDomainState> {
  const TransitGatewayMulticastDomainState._(
    super.index,
    super.name,
    super.value,
  );

  const TransitGatewayMulticastDomainState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const available = TransitGatewayMulticastDomainState._(
    0,
    'available',
    'available',
  );

  static const deleted = TransitGatewayMulticastDomainState._(
    1,
    'deleted',
    'deleted',
  );

  static const deleting = TransitGatewayMulticastDomainState._(
    2,
    'deleting',
    'deleting',
  );

  static const pending = TransitGatewayMulticastDomainState._(
    3,
    'pending',
    'pending',
  );

  /// All values of [TransitGatewayMulticastDomainState].
  static const values = <TransitGatewayMulticastDomainState>[
    TransitGatewayMulticastDomainState.available,
    TransitGatewayMulticastDomainState.deleted,
    TransitGatewayMulticastDomainState.deleting,
    TransitGatewayMulticastDomainState.pending,
  ];

  static const List<_i1.SmithySerializer<TransitGatewayMulticastDomainState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'TransitGatewayMulticastDomainState',
      values: values,
      sdkUnknown: TransitGatewayMulticastDomainState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TransitGatewayMulticastDomainStateHelpers
    on List<TransitGatewayMulticastDomainState> {
  /// Returns the value of [TransitGatewayMulticastDomainState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TransitGatewayMulticastDomainState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TransitGatewayMulticastDomainState] whose value matches [value].
  TransitGatewayMulticastDomainState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
