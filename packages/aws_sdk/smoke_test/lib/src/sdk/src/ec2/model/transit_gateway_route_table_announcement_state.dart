// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_route_table_announcement_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TransitGatewayRouteTableAnnouncementState
    extends _i1.SmithyEnum<TransitGatewayRouteTableAnnouncementState> {
  const TransitGatewayRouteTableAnnouncementState._(
    super.index,
    super.name,
    super.value,
  );

  const TransitGatewayRouteTableAnnouncementState._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const available = TransitGatewayRouteTableAnnouncementState._(
    0,
    'available',
    'available',
  );

  static const deleted = TransitGatewayRouteTableAnnouncementState._(
    1,
    'deleted',
    'deleted',
  );

  static const deleting = TransitGatewayRouteTableAnnouncementState._(
    2,
    'deleting',
    'deleting',
  );

  static const failed = TransitGatewayRouteTableAnnouncementState._(
    3,
    'failed',
    'failed',
  );

  static const failing = TransitGatewayRouteTableAnnouncementState._(
    4,
    'failing',
    'failing',
  );

  static const pending = TransitGatewayRouteTableAnnouncementState._(
    5,
    'pending',
    'pending',
  );

  /// All values of [TransitGatewayRouteTableAnnouncementState].
  static const values = <TransitGatewayRouteTableAnnouncementState>[
    TransitGatewayRouteTableAnnouncementState.available,
    TransitGatewayRouteTableAnnouncementState.deleted,
    TransitGatewayRouteTableAnnouncementState.deleting,
    TransitGatewayRouteTableAnnouncementState.failed,
    TransitGatewayRouteTableAnnouncementState.failing,
    TransitGatewayRouteTableAnnouncementState.pending,
  ];

  static const List<
          _i1.SmithySerializer<TransitGatewayRouteTableAnnouncementState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'TransitGatewayRouteTableAnnouncementState',
      values: values,
      sdkUnknown: TransitGatewayRouteTableAnnouncementState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TransitGatewayRouteTableAnnouncementStateHelpers
    on List<TransitGatewayRouteTableAnnouncementState> {
  /// Returns the value of [TransitGatewayRouteTableAnnouncementState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TransitGatewayRouteTableAnnouncementState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TransitGatewayRouteTableAnnouncementState] whose value matches [value].
  TransitGatewayRouteTableAnnouncementState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
