// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.analysis_route_table_route; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'analysis_route_table_route.g.dart';

/// Describes a route table route.
abstract class AnalysisRouteTableRoute
    with _i1.AWSEquatable<AnalysisRouteTableRoute>
    implements Built<AnalysisRouteTableRoute, AnalysisRouteTableRouteBuilder> {
  /// Describes a route table route.
  factory AnalysisRouteTableRoute({
    String? destinationCidr,
    String? destinationPrefixListId,
    String? egressOnlyInternetGatewayId,
    String? gatewayId,
    String? instanceId,
    String? natGatewayId,
    String? networkInterfaceId,
    String? origin,
    String? transitGatewayId,
    String? vpcPeeringConnectionId,
    String? state,
    String? carrierGatewayId,
    String? coreNetworkArn,
    String? localGatewayId,
  }) {
    return _$AnalysisRouteTableRoute._(
      destinationCidr: destinationCidr,
      destinationPrefixListId: destinationPrefixListId,
      egressOnlyInternetGatewayId: egressOnlyInternetGatewayId,
      gatewayId: gatewayId,
      instanceId: instanceId,
      natGatewayId: natGatewayId,
      networkInterfaceId: networkInterfaceId,
      origin: origin,
      transitGatewayId: transitGatewayId,
      vpcPeeringConnectionId: vpcPeeringConnectionId,
      state: state,
      carrierGatewayId: carrierGatewayId,
      coreNetworkArn: coreNetworkArn,
      localGatewayId: localGatewayId,
    );
  }

  /// Describes a route table route.
  factory AnalysisRouteTableRoute.build(
          [void Function(AnalysisRouteTableRouteBuilder) updates]) =
      _$AnalysisRouteTableRoute;

  const AnalysisRouteTableRoute._();

  static const List<_i2.SmithySerializer<AnalysisRouteTableRoute>> serializers =
      [AnalysisRouteTableRouteEc2QuerySerializer()];

  /// The destination IPv4 address, in CIDR notation.
  String? get destinationCidr;

  /// The prefix of the Amazon Web Service.
  String? get destinationPrefixListId;

  /// The ID of an egress-only internet gateway.
  String? get egressOnlyInternetGatewayId;

  /// The ID of the gateway, such as an internet gateway or virtual private gateway.
  String? get gatewayId;

  /// The ID of the instance, such as a NAT instance.
  String? get instanceId;

  /// The ID of a NAT gateway.
  String? get natGatewayId;

  /// The ID of a network interface.
  String? get networkInterfaceId;

  /// Describes how the route was created. The following are the possible values:
  ///
  /// *   CreateRouteTable - The route was automatically created when the route table was created.
  ///
  /// *   CreateRoute - The route was manually added to the route table.
  ///
  /// *   EnableVgwRoutePropagation - The route was propagated by route propagation.
  String? get origin;

  /// The ID of a transit gateway.
  String? get transitGatewayId;

  /// The ID of a VPC peering connection.
  String? get vpcPeeringConnectionId;

  /// The state. The following are the possible values:
  ///
  /// *   active
  ///
  /// *   blackhole
  String? get state;

  /// The ID of a carrier gateway.
  String? get carrierGatewayId;

  /// The Amazon Resource Name (ARN) of a core network.
  String? get coreNetworkArn;

  /// The ID of a local gateway.
  String? get localGatewayId;
  @override
  List<Object?> get props => [
        destinationCidr,
        destinationPrefixListId,
        egressOnlyInternetGatewayId,
        gatewayId,
        instanceId,
        natGatewayId,
        networkInterfaceId,
        origin,
        transitGatewayId,
        vpcPeeringConnectionId,
        state,
        carrierGatewayId,
        coreNetworkArn,
        localGatewayId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AnalysisRouteTableRoute')
      ..add(
        'destinationCidr',
        destinationCidr,
      )
      ..add(
        'destinationPrefixListId',
        destinationPrefixListId,
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
        'networkInterfaceId',
        networkInterfaceId,
      )
      ..add(
        'origin',
        origin,
      )
      ..add(
        'transitGatewayId',
        transitGatewayId,
      )
      ..add(
        'vpcPeeringConnectionId',
        vpcPeeringConnectionId,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'carrierGatewayId',
        carrierGatewayId,
      )
      ..add(
        'coreNetworkArn',
        coreNetworkArn,
      )
      ..add(
        'localGatewayId',
        localGatewayId,
      );
    return helper.toString();
  }
}

class AnalysisRouteTableRouteEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AnalysisRouteTableRoute> {
  const AnalysisRouteTableRouteEc2QuerySerializer()
      : super('AnalysisRouteTableRoute');

  @override
  Iterable<Type> get types => const [
        AnalysisRouteTableRoute,
        _$AnalysisRouteTableRoute,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AnalysisRouteTableRoute deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisRouteTableRouteBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'destinationCidr':
          result.destinationCidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'destinationPrefixListId':
          result.destinationPrefixListId = (serializers.deserialize(
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
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'origin':
          result.origin = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'transitGatewayId':
          result.transitGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpcPeeringConnectionId':
          result.vpcPeeringConnectionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'carrierGatewayId':
          result.carrierGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'coreNetworkArn':
          result.coreNetworkArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'localGatewayId':
          result.localGatewayId = (serializers.deserialize(
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
    AnalysisRouteTableRoute object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AnalysisRouteTableRouteResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AnalysisRouteTableRoute(
      :destinationCidr,
      :destinationPrefixListId,
      :egressOnlyInternetGatewayId,
      :gatewayId,
      :instanceId,
      :natGatewayId,
      :networkInterfaceId,
      :origin,
      :transitGatewayId,
      :vpcPeeringConnectionId,
      :state,
      :carrierGatewayId,
      :coreNetworkArn,
      :localGatewayId
    ) = object;
    if (destinationCidr != null) {
      result$
        ..add(const _i2.XmlElementName('DestinationCidr'))
        ..add(serializers.serialize(
          destinationCidr,
          specifiedType: const FullType(String),
        ));
    }
    if (destinationPrefixListId != null) {
      result$
        ..add(const _i2.XmlElementName('DestinationPrefixListId'))
        ..add(serializers.serialize(
          destinationPrefixListId,
          specifiedType: const FullType(String),
        ));
    }
    if (egressOnlyInternetGatewayId != null) {
      result$
        ..add(const _i2.XmlElementName('EgressOnlyInternetGatewayId'))
        ..add(serializers.serialize(
          egressOnlyInternetGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (gatewayId != null) {
      result$
        ..add(const _i2.XmlElementName('GatewayId'))
        ..add(serializers.serialize(
          gatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceId != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (natGatewayId != null) {
      result$
        ..add(const _i2.XmlElementName('NatGatewayId'))
        ..add(serializers.serialize(
          natGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (networkInterfaceId != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
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
    if (transitGatewayId != null) {
      result$
        ..add(const _i2.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          transitGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcPeeringConnectionId != null) {
      result$
        ..add(const _i2.XmlElementName('VpcPeeringConnectionId'))
        ..add(serializers.serialize(
          vpcPeeringConnectionId,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(String),
        ));
    }
    if (carrierGatewayId != null) {
      result$
        ..add(const _i2.XmlElementName('CarrierGatewayId'))
        ..add(serializers.serialize(
          carrierGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (coreNetworkArn != null) {
      result$
        ..add(const _i2.XmlElementName('CoreNetworkArn'))
        ..add(serializers.serialize(
          coreNetworkArn,
          specifiedType: const FullType(String),
        ));
    }
    if (localGatewayId != null) {
      result$
        ..add(const _i2.XmlElementName('LocalGatewayId'))
        ..add(serializers.serialize(
          localGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
