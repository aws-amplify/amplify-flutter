// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_connect_peer_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TransitGatewayConnectPeerState
    extends _i1.SmithyEnum<TransitGatewayConnectPeerState> {
  const TransitGatewayConnectPeerState._(
    super.index,
    super.name,
    super.value,
  );

  const TransitGatewayConnectPeerState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const available = TransitGatewayConnectPeerState._(
    0,
    'available',
    'available',
  );

  static const deleted = TransitGatewayConnectPeerState._(
    1,
    'deleted',
    'deleted',
  );

  static const deleting = TransitGatewayConnectPeerState._(
    2,
    'deleting',
    'deleting',
  );

  static const pending = TransitGatewayConnectPeerState._(
    3,
    'pending',
    'pending',
  );

  /// All values of [TransitGatewayConnectPeerState].
  static const values = <TransitGatewayConnectPeerState>[
    TransitGatewayConnectPeerState.available,
    TransitGatewayConnectPeerState.deleted,
    TransitGatewayConnectPeerState.deleting,
    TransitGatewayConnectPeerState.pending,
  ];

  static const List<_i1.SmithySerializer<TransitGatewayConnectPeerState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'TransitGatewayConnectPeerState',
      values: values,
      sdkUnknown: TransitGatewayConnectPeerState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TransitGatewayConnectPeerStateHelpers
    on List<TransitGatewayConnectPeerState> {
  /// Returns the value of [TransitGatewayConnectPeerState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TransitGatewayConnectPeerState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TransitGatewayConnectPeerState] whose value matches [value].
  TransitGatewayConnectPeerState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
