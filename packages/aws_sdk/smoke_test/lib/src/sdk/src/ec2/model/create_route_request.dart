// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_route_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'create_route_request.g.dart';

abstract class CreateRouteRequest
    with _i1.HttpInput<CreateRouteRequest>, _i2.AWSEquatable<CreateRouteRequest>
    implements Built<CreateRouteRequest, CreateRouteRequestBuilder> {
  factory CreateRouteRequest({
    String? destinationCidrBlock,
    String? destinationIpv6CidrBlock,
    String? destinationPrefixListId,
    bool? dryRun,
    String? vpcEndpointId,
    String? egressOnlyInternetGatewayId,
    String? gatewayId,
    String? instanceId,
    String? natGatewayId,
    String? transitGatewayId,
    String? localGatewayId,
    String? carrierGatewayId,
    String? networkInterfaceId,
    String? routeTableId,
    String? vpcPeeringConnectionId,
    String? coreNetworkArn,
  }) {
    dryRun ??= false;
    return _$CreateRouteRequest._(
      destinationCidrBlock: destinationCidrBlock,
      destinationIpv6CidrBlock: destinationIpv6CidrBlock,
      destinationPrefixListId: destinationPrefixListId,
      dryRun: dryRun,
      vpcEndpointId: vpcEndpointId,
      egressOnlyInternetGatewayId: egressOnlyInternetGatewayId,
      gatewayId: gatewayId,
      instanceId: instanceId,
      natGatewayId: natGatewayId,
      transitGatewayId: transitGatewayId,
      localGatewayId: localGatewayId,
      carrierGatewayId: carrierGatewayId,
      networkInterfaceId: networkInterfaceId,
      routeTableId: routeTableId,
      vpcPeeringConnectionId: vpcPeeringConnectionId,
      coreNetworkArn: coreNetworkArn,
    );
  }

  factory CreateRouteRequest.build(
          [void Function(CreateRouteRequestBuilder) updates]) =
      _$CreateRouteRequest;

  const CreateRouteRequest._();

  factory CreateRouteRequest.fromRequest(
    CreateRouteRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateRouteRequest>> serializers = [
    CreateRouteRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateRouteRequestBuilder b) {
    b.dryRun = false;
  }

  /// The IPv4 CIDR address block used for the destination match. Routing decisions are based on the most specific match. We modify the specified CIDR block to its canonical form; for example, if you specify `100.68.0.18/18`, we modify it to `100.68.0.0/18`.
  String? get destinationCidrBlock;

  /// The IPv6 CIDR block used for the destination match. Routing decisions are based on the most specific match.
  String? get destinationIpv6CidrBlock;

  /// The ID of a prefix list used for the destination match.
  String? get destinationPrefixListId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of a VPC endpoint. Supported for Gateway Load Balancer endpoints only.
  String? get vpcEndpointId;

  /// \[IPv6 traffic only\] The ID of an egress-only internet gateway.
  String? get egressOnlyInternetGatewayId;

  /// The ID of an internet gateway or virtual private gateway attached to your VPC.
  String? get gatewayId;

  /// The ID of a NAT instance in your VPC. The operation fails if you specify an instance ID unless exactly one network interface is attached.
  String? get instanceId;

  /// \[IPv4 traffic only\] The ID of a NAT gateway.
  String? get natGatewayId;

  /// The ID of a transit gateway.
  String? get transitGatewayId;

  /// The ID of the local gateway.
  String? get localGatewayId;

  /// The ID of the carrier gateway.
  ///
  /// You can only use this option when the VPC contains a subnet which is associated with a Wavelength Zone.
  String? get carrierGatewayId;

  /// The ID of a network interface.
  String? get networkInterfaceId;

  /// The ID of the route table for the route.
  String? get routeTableId;

  /// The ID of a VPC peering connection.
  String? get vpcPeeringConnectionId;

  /// The Amazon Resource Name (ARN) of the core network.
  String? get coreNetworkArn;
  @override
  CreateRouteRequest getPayload() => this;
  @override
  List<Object?> get props => [
        destinationCidrBlock,
        destinationIpv6CidrBlock,
        destinationPrefixListId,
        dryRun,
        vpcEndpointId,
        egressOnlyInternetGatewayId,
        gatewayId,
        instanceId,
        natGatewayId,
        transitGatewayId,
        localGatewayId,
        carrierGatewayId,
        networkInterfaceId,
        routeTableId,
        vpcPeeringConnectionId,
        coreNetworkArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateRouteRequest')
      ..add(
        'destinationCidrBlock',
        destinationCidrBlock,
      )
      ..add(
        'destinationIpv6CidrBlock',
        destinationIpv6CidrBlock,
      )
      ..add(
        'destinationPrefixListId',
        destinationPrefixListId,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'vpcEndpointId',
        vpcEndpointId,
      )
      ..add(
        'egressOnlyInternetGatewayId',
        egressOnlyInternetGatewayId,
      )
      ..add(
        'gatewayId',
        gatewayId,
      )
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'natGatewayId',
        natGatewayId,
      )
      ..add(
        'transitGatewayId',
        transitGatewayId,
      )
      ..add(
        'localGatewayId',
        localGatewayId,
      )
      ..add(
        'carrierGatewayId',
        carrierGatewayId,
      )
      ..add(
        'networkInterfaceId',
        networkInterfaceId,
      )
      ..add(
        'routeTableId',
        routeTableId,
      )
      ..add(
        'vpcPeeringConnectionId',
        vpcPeeringConnectionId,
      )
      ..add(
        'coreNetworkArn',
        coreNetworkArn,
      );
    return helper.toString();
  }
}

class CreateRouteRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateRouteRequest> {
  const CreateRouteRequestEc2QuerySerializer() : super('CreateRouteRequest');

  @override
  Iterable<Type> get types => const [
        CreateRouteRequest,
        _$CreateRouteRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateRouteRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateRouteRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'destinationCidrBlock':
          result.destinationCidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'destinationIpv6CidrBlock':
          result.destinationIpv6CidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DestinationPrefixListId':
          result.destinationPrefixListId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'VpcEndpointId':
          result.vpcEndpointId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'egressOnlyInternetGatewayId':
          result.egressOnlyInternetGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'gatewayId':
          result.gatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'natGatewayId':
          result.natGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TransitGatewayId':
          result.transitGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LocalGatewayId':
          result.localGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CarrierGatewayId':
          result.carrierGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'routeTableId':
          result.routeTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpcPeeringConnectionId':
          result.vpcPeeringConnectionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CoreNetworkArn':
          result.coreNetworkArn = (serializers.deserialize(
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
    CreateRouteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateRouteRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateRouteRequest(
      :destinationCidrBlock,
      :destinationIpv6CidrBlock,
      :destinationPrefixListId,
      :dryRun,
      :vpcEndpointId,
      :egressOnlyInternetGatewayId,
      :gatewayId,
      :instanceId,
      :natGatewayId,
      :transitGatewayId,
      :localGatewayId,
      :carrierGatewayId,
      :networkInterfaceId,
      :routeTableId,
      :vpcPeeringConnectionId,
      :coreNetworkArn
    ) = object;
    if (destinationCidrBlock != null) {
      result$
        ..add(const _i1.XmlElementName('DestinationCidrBlock'))
        ..add(serializers.serialize(
          destinationCidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (destinationIpv6CidrBlock != null) {
      result$
        ..add(const _i1.XmlElementName('DestinationIpv6CidrBlock'))
        ..add(serializers.serialize(
          destinationIpv6CidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (destinationPrefixListId != null) {
      result$
        ..add(const _i1.XmlElementName('DestinationPrefixListId'))
        ..add(serializers.serialize(
          destinationPrefixListId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (vpcEndpointId != null) {
      result$
        ..add(const _i1.XmlElementName('VpcEndpointId'))
        ..add(serializers.serialize(
          vpcEndpointId,
          specifiedType: const FullType(String),
        ));
    }
    if (egressOnlyInternetGatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('EgressOnlyInternetGatewayId'))
        ..add(serializers.serialize(
          egressOnlyInternetGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (gatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('GatewayId'))
        ..add(serializers.serialize(
          gatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceId != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (natGatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('NatGatewayId'))
        ..add(serializers.serialize(
          natGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          transitGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (localGatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('LocalGatewayId'))
        ..add(serializers.serialize(
          localGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (carrierGatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('CarrierGatewayId'))
        ..add(serializers.serialize(
          carrierGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (networkInterfaceId != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    if (routeTableId != null) {
      result$
        ..add(const _i1.XmlElementName('RouteTableId'))
        ..add(serializers.serialize(
          routeTableId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcPeeringConnectionId != null) {
      result$
        ..add(const _i1.XmlElementName('VpcPeeringConnectionId'))
        ..add(serializers.serialize(
          vpcPeeringConnectionId,
          specifiedType: const FullType(String),
        ));
    }
    if (coreNetworkArn != null) {
      result$
        ..add(const _i1.XmlElementName('CoreNetworkArn'))
        ..add(serializers.serialize(
          coreNetworkArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
