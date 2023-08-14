// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_route_table_announcement_direction; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TransitGatewayRouteTableAnnouncementDirection
    extends _i1.SmithyEnum<TransitGatewayRouteTableAnnouncementDirection> {
  const TransitGatewayRouteTableAnnouncementDirection._(
    super.index,
    super.name,
    super.value,
  );

  const TransitGatewayRouteTableAnnouncementDirection._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const incoming = TransitGatewayRouteTableAnnouncementDirection._(
    0,
    'incoming',
    'incoming',
  );

  static const outgoing = TransitGatewayRouteTableAnnouncementDirection._(
    1,
    'outgoing',
    'outgoing',
  );

  /// All values of [TransitGatewayRouteTableAnnouncementDirection].
  static const values = <TransitGatewayRouteTableAnnouncementDirection>[
    TransitGatewayRouteTableAnnouncementDirection.incoming,
    TransitGatewayRouteTableAnnouncementDirection.outgoing,
  ];

  static const List<
          _i1.SmithySerializer<TransitGatewayRouteTableAnnouncementDirection>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'TransitGatewayRouteTableAnnouncementDirection',
      values: values,
      sdkUnknown: TransitGatewayRouteTableAnnouncementDirection._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TransitGatewayRouteTableAnnouncementDirectionHelpers
    on List<TransitGatewayRouteTableAnnouncementDirection> {
  /// Returns the value of [TransitGatewayRouteTableAnnouncementDirection] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TransitGatewayRouteTableAnnouncementDirection byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TransitGatewayRouteTableAnnouncementDirection] whose value matches [value].
  TransitGatewayRouteTableAnnouncementDirection byValue(String value) =>
      firstWhere((el) => el.value == value);
}
