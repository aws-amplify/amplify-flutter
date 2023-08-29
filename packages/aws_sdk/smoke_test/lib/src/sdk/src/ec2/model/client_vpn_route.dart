// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.client_vpn_route; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_route_status.dart';

part 'client_vpn_route.g.dart';

/// Information about a Client VPN endpoint route.
abstract class ClientVpnRoute
    with _i1.AWSEquatable<ClientVpnRoute>
    implements Built<ClientVpnRoute, ClientVpnRouteBuilder> {
  /// Information about a Client VPN endpoint route.
  factory ClientVpnRoute({
    String? clientVpnEndpointId,
    String? destinationCidr,
    String? targetSubnet,
    String? type,
    String? origin,
    ClientVpnRouteStatus? status,
    String? description,
  }) {
    return _$ClientVpnRoute._(
      clientVpnEndpointId: clientVpnEndpointId,
      destinationCidr: destinationCidr,
      targetSubnet: targetSubnet,
      type: type,
      origin: origin,
      status: status,
      description: description,
    );
  }

  /// Information about a Client VPN endpoint route.
  factory ClientVpnRoute.build([void Function(ClientVpnRouteBuilder) updates]) =
      _$ClientVpnRoute;

  const ClientVpnRoute._();

  static const List<_i2.SmithySerializer<ClientVpnRoute>> serializers = [
    ClientVpnRouteEc2QuerySerializer()
  ];

  /// The ID of the Client VPN endpoint with which the route is associated.
  String? get clientVpnEndpointId;

  /// The IPv4 address range, in CIDR notation, of the route destination.
  String? get destinationCidr;

  /// The ID of the subnet through which traffic is routed.
  String? get targetSubnet;

  /// The route type.
  String? get type;

  /// Indicates how the route was associated with the Client VPN endpoint. `associate` indicates that the route was automatically added when the target network was associated with the Client VPN endpoint. `add-route` indicates that the route was manually added using the **CreateClientVpnRoute** action.
  String? get origin;

  /// The current state of the route.
  ClientVpnRouteStatus? get status;

  /// A brief description of the route.
  String? get description;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        destinationCidr,
        targetSubnet,
        type,
        origin,
        status,
        description,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClientVpnRoute')
      ..add(
        'clientVpnEndpointId',
        clientVpnEndpointId,
      )
      ..add(
        'destinationCidr',
        destinationCidr,
      )
      ..add(
        'targetSubnet',
        targetSubnet,
      )
      ..add(
        'type',
        type,
      )
      ..add(
        'origin',
        origin,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'description',
        description,
      );
    return helper.toString();
  }
}

class ClientVpnRouteEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ClientVpnRoute> {
  const ClientVpnRouteEc2QuerySerializer() : super('ClientVpnRoute');

  @override
  Iterable<Type> get types => const [
        ClientVpnRoute,
        _$ClientVpnRoute,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientVpnRoute deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientVpnRouteBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'clientVpnEndpointId':
          result.clientVpnEndpointId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'destinationCidr':
          result.destinationCidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'targetSubnet':
          result.targetSubnet = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'origin':
          result.origin = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.status.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ClientVpnRouteStatus),
          ) as ClientVpnRouteStatus));
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ClientVpnRoute object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ClientVpnRouteResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ClientVpnRoute(
      :clientVpnEndpointId,
      :destinationCidr,
      :targetSubnet,
      :type,
      :origin,
      :status,
      :description
    ) = object;
    if (clientVpnEndpointId != null) {
      result$
        ..add(const _i2.XmlElementName('ClientVpnEndpointId'))
        ..add(serializers.serialize(
          clientVpnEndpointId,
          specifiedType: const FullType(String),
        ));
    }
    if (destinationCidr != null) {
      result$
        ..add(const _i2.XmlElementName('DestinationCidr'))
        ..add(serializers.serialize(
          destinationCidr,
          specifiedType: const FullType(String),
        ));
    }
    if (targetSubnet != null) {
      result$
        ..add(const _i2.XmlElementName('TargetSubnet'))
        ..add(serializers.serialize(
          targetSubnet,
          specifiedType: const FullType(String),
        ));
    }
    if (type != null) {
      result$
        ..add(const _i2.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType(String),
        ));
    }
    if (origin != null) {
      result$
        ..add(const _i2.XmlElementName('Origin'))
        ..add(serializers.serialize(
          origin,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(ClientVpnRouteStatus),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
