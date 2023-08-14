// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_vpn_tunnel_replacement_status_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/maintenance_details.dart';

part 'get_vpn_tunnel_replacement_status_result.g.dart';

abstract class GetVpnTunnelReplacementStatusResult
    with
        _i1.AWSEquatable<GetVpnTunnelReplacementStatusResult>
    implements
        Built<GetVpnTunnelReplacementStatusResult,
            GetVpnTunnelReplacementStatusResultBuilder> {
  factory GetVpnTunnelReplacementStatusResult({
    String? vpnConnectionId,
    String? transitGatewayId,
    String? customerGatewayId,
    String? vpnGatewayId,
    String? vpnTunnelOutsideIpAddress,
    MaintenanceDetails? maintenanceDetails,
  }) {
    return _$GetVpnTunnelReplacementStatusResult._(
      vpnConnectionId: vpnConnectionId,
      transitGatewayId: transitGatewayId,
      customerGatewayId: customerGatewayId,
      vpnGatewayId: vpnGatewayId,
      vpnTunnelOutsideIpAddress: vpnTunnelOutsideIpAddress,
      maintenanceDetails: maintenanceDetails,
    );
  }

  factory GetVpnTunnelReplacementStatusResult.build(
          [void Function(GetVpnTunnelReplacementStatusResultBuilder) updates]) =
      _$GetVpnTunnelReplacementStatusResult;

  const GetVpnTunnelReplacementStatusResult._();

  /// Constructs a [GetVpnTunnelReplacementStatusResult] from a [payload] and [response].
  factory GetVpnTunnelReplacementStatusResult.fromResponse(
    GetVpnTunnelReplacementStatusResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetVpnTunnelReplacementStatusResult>>
      serializers = [GetVpnTunnelReplacementStatusResultEc2QuerySerializer()];

  /// The ID of the Site-to-Site VPN connection.
  String? get vpnConnectionId;

  /// The ID of the transit gateway associated with the VPN connection.
  String? get transitGatewayId;

  /// The ID of the customer gateway.
  String? get customerGatewayId;

  /// The ID of the virtual private gateway.
  String? get vpnGatewayId;

  /// The external IP address of the VPN tunnel.
  String? get vpnTunnelOutsideIpAddress;

  /// Get details of pending tunnel endpoint maintenance.
  MaintenanceDetails? get maintenanceDetails;
  @override
  List<Object?> get props => [
        vpnConnectionId,
        transitGatewayId,
        customerGatewayId,
        vpnGatewayId,
        vpnTunnelOutsideIpAddress,
        maintenanceDetails,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetVpnTunnelReplacementStatusResult')
          ..add(
            'vpnConnectionId',
            vpnConnectionId,
          )
          ..add(
            'transitGatewayId',
            transitGatewayId,
          )
          ..add(
            'customerGatewayId',
            customerGatewayId,
          )
          ..add(
            'vpnGatewayId',
            vpnGatewayId,
          )
          ..add(
            'vpnTunnelOutsideIpAddress',
            vpnTunnelOutsideIpAddress,
          )
          ..add(
            'maintenanceDetails',
            maintenanceDetails,
          );
    return helper.toString();
  }
}

class GetVpnTunnelReplacementStatusResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<GetVpnTunnelReplacementStatusResult> {
  const GetVpnTunnelReplacementStatusResultEc2QuerySerializer()
      : super('GetVpnTunnelReplacementStatusResult');

  @override
  Iterable<Type> get types => const [
        GetVpnTunnelReplacementStatusResult,
        _$GetVpnTunnelReplacementStatusResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetVpnTunnelReplacementStatusResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetVpnTunnelReplacementStatusResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'vpnConnectionId':
          result.vpnConnectionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'transitGatewayId':
          result.transitGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'customerGatewayId':
          result.customerGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpnGatewayId':
          result.vpnGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpnTunnelOutsideIpAddress':
          result.vpnTunnelOutsideIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'maintenanceDetails':
          result.maintenanceDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(MaintenanceDetails),
          ) as MaintenanceDetails));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetVpnTunnelReplacementStatusResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetVpnTunnelReplacementStatusResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetVpnTunnelReplacementStatusResult(
      :vpnConnectionId,
      :transitGatewayId,
      :customerGatewayId,
      :vpnGatewayId,
      :vpnTunnelOutsideIpAddress,
      :maintenanceDetails
    ) = object;
    if (vpnConnectionId != null) {
      result$
        ..add(const _i2.XmlElementName('VpnConnectionId'))
        ..add(serializers.serialize(
          vpnConnectionId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayId != null) {
      result$
        ..add(const _i2.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          transitGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (customerGatewayId != null) {
      result$
        ..add(const _i2.XmlElementName('CustomerGatewayId'))
        ..add(serializers.serialize(
          customerGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpnGatewayId != null) {
      result$
        ..add(const _i2.XmlElementName('VpnGatewayId'))
        ..add(serializers.serialize(
          vpnGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpnTunnelOutsideIpAddress != null) {
      result$
        ..add(const _i2.XmlElementName('VpnTunnelOutsideIpAddress'))
        ..add(serializers.serialize(
          vpnTunnelOutsideIpAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (maintenanceDetails != null) {
      result$
        ..add(const _i2.XmlElementName('MaintenanceDetails'))
        ..add(serializers.serialize(
          maintenanceDetails,
          specifiedType: const FullType(MaintenanceDetails),
        ));
    }
    return result$;
  }
}
