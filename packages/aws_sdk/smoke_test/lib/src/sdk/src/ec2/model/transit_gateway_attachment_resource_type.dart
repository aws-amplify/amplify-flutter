// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_attachment_resource_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TransitGatewayAttachmentResourceType
    extends _i1.SmithyEnum<TransitGatewayAttachmentResourceType> {
  const TransitGatewayAttachmentResourceType._(
    super.index,
    super.name,
    super.value,
  );

  const TransitGatewayAttachmentResourceType._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const connect = TransitGatewayAttachmentResourceType._(
    0,
    'connect',
    'connect',
  );

  static const directConnectGateway = TransitGatewayAttachmentResourceType._(
    1,
    'direct_connect_gateway',
    'direct-connect-gateway',
  );

  static const peering = TransitGatewayAttachmentResourceType._(
    2,
    'peering',
    'peering',
  );

  static const tgwPeering = TransitGatewayAttachmentResourceType._(
    3,
    'tgw_peering',
    'tgw-peering',
  );

  static const vpc = TransitGatewayAttachmentResourceType._(
    4,
    'vpc',
    'vpc',
  );

  static const vpn = TransitGatewayAttachmentResourceType._(
    5,
    'vpn',
    'vpn',
  );

  /// All values of [TransitGatewayAttachmentResourceType].
  static const values = <TransitGatewayAttachmentResourceType>[
    TransitGatewayAttachmentResourceType.connect,
    TransitGatewayAttachmentResourceType.directConnectGateway,
    TransitGatewayAttachmentResourceType.peering,
    TransitGatewayAttachmentResourceType.tgwPeering,
    TransitGatewayAttachmentResourceType.vpc,
    TransitGatewayAttachmentResourceType.vpn,
  ];

  static const List<_i1.SmithySerializer<TransitGatewayAttachmentResourceType>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'TransitGatewayAttachmentResourceType',
      values: values,
      sdkUnknown: TransitGatewayAttachmentResourceType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TransitGatewayAttachmentResourceTypeHelpers
    on List<TransitGatewayAttachmentResourceType> {
  /// Returns the value of [TransitGatewayAttachmentResourceType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TransitGatewayAttachmentResourceType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TransitGatewayAttachmentResourceType] whose value matches [value].
  TransitGatewayAttachmentResourceType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
