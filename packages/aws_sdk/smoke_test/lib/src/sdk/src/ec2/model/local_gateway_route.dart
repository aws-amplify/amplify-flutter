// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.local_gateway_route; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_type.dart';

part 'local_gateway_route.g.dart';

/// Describes a route for a local gateway route table.
abstract class LocalGatewayRoute
    with _i1.AWSEquatable<LocalGatewayRoute>
    implements Built<LocalGatewayRoute, LocalGatewayRouteBuilder> {
  /// Describes a route for a local gateway route table.
  factory LocalGatewayRoute({
    String? destinationCidrBlock,
    String? localGatewayVirtualInterfaceGroupId,
    LocalGatewayRouteType? type,
    LocalGatewayRouteState? state,
    String? localGatewayRouteTableId,
    String? localGatewayRouteTableArn,
    String? ownerId,
    String? subnetId,
    String? coipPoolId,
    String? networkInterfaceId,
    String? destinationPrefixListId,
  }) {
    return _$LocalGatewayRoute._(
      destinationCidrBlock: destinationCidrBlock,
      localGatewayVirtualInterfaceGroupId: localGatewayVirtualInterfaceGroupId,
      type: type,
      state: state,
      localGatewayRouteTableId: localGatewayRouteTableId,
      localGatewayRouteTableArn: localGatewayRouteTableArn,
      ownerId: ownerId,
      subnetId: subnetId,
      coipPoolId: coipPoolId,
      networkInterfaceId: networkInterfaceId,
      destinationPrefixListId: destinationPrefixListId,
    );
  }

  /// Describes a route for a local gateway route table.
  factory LocalGatewayRoute.build(
      [void Function(LocalGatewayRouteBuilder) updates]) = _$LocalGatewayRoute;

  const LocalGatewayRoute._();

  static const List<_i2.SmithySerializer<LocalGatewayRoute>> serializers = [
    LocalGatewayRouteEc2QuerySerializer()
  ];

  /// The CIDR block used for destination matches.
  String? get destinationCidrBlock;

  /// The ID of the virtual interface group.
  String? get localGatewayVirtualInterfaceGroupId;

  /// The route type.
  LocalGatewayRouteType? get type;

  /// The state of the route.
  LocalGatewayRouteState? get state;

  /// The ID of the local gateway route table.
  String? get localGatewayRouteTableId;

  /// The Amazon Resource Name (ARN) of the local gateway route table.
  String? get localGatewayRouteTableArn;

  /// The ID of the Amazon Web Services account that owns the local gateway route.
  String? get ownerId;

  /// The ID of the subnet.
  String? get subnetId;

  /// The ID of the customer-owned address pool.
  String? get coipPoolId;

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// The ID of the prefix list.
  String? get destinationPrefixListId;
  @override
  List<Object?> get props => [
        destinationCidrBlock,
        localGatewayVirtualInterfaceGroupId,
        type,
        state,
        localGatewayRouteTableId,
        localGatewayRouteTableArn,
        ownerId,
        subnetId,
        coipPoolId,
        networkInterfaceId,
        destinationPrefixListId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LocalGatewayRoute')
      ..add(
        'destinationCidrBlock',
        destinationCidrBlock,
      )
      ..add(
        'localGatewayVirtualInterfaceGroupId',
        localGatewayVirtualInterfaceGroupId,
      )
      ..add(
        'type',
        type,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'localGatewayRouteTableId',
        localGatewayRouteTableId,
      )
      ..add(
        'localGatewayRouteTableArn',
        localGatewayRouteTableArn,
      )
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'subnetId',
        subnetId,
      )
      ..add(
        'coipPoolId',
        coipPoolId,
      )
      ..add(
        'networkInterfaceId',
        networkInterfaceId,
      )
      ..add(
        'destinationPrefixListId',
        destinationPrefixListId,
      );
    return helper.toString();
  }
}

class LocalGatewayRouteEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<LocalGatewayRoute> {
  const LocalGatewayRouteEc2QuerySerializer() : super('LocalGatewayRoute');

  @override
  Iterable<Type> get types => const [
        LocalGatewayRoute,
        _$LocalGatewayRoute,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LocalGatewayRoute deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LocalGatewayRouteBuilder();
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
        case 'localGatewayVirtualInterfaceGroupId':
          result.localGatewayVirtualInterfaceGroupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(LocalGatewayRouteType),
          ) as LocalGatewayRouteType);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(LocalGatewayRouteState),
          ) as LocalGatewayRouteState);
        case 'localGatewayRouteTableId':
          result.localGatewayRouteTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'localGatewayRouteTableArn':
          result.localGatewayRouteTableArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'coipPoolId':
          result.coipPoolId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'destinationPrefixListId':
          result.destinationPrefixListId = (serializers.deserialize(
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
    LocalGatewayRoute object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LocalGatewayRouteResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LocalGatewayRoute(
      :destinationCidrBlock,
      :localGatewayVirtualInterfaceGroupId,
      :type,
      :state,
      :localGatewayRouteTableId,
      :localGatewayRouteTableArn,
      :ownerId,
      :subnetId,
      :coipPoolId,
      :networkInterfaceId,
      :destinationPrefixListId
    ) = object;
    if (destinationCidrBlock != null) {
      result$
        ..add(const _i2.XmlElementName('DestinationCidrBlock'))
        ..add(serializers.serialize(
          destinationCidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (localGatewayVirtualInterfaceGroupId != null) {
      result$
        ..add(const _i2.XmlElementName('LocalGatewayVirtualInterfaceGroupId'))
        ..add(serializers.serialize(
          localGatewayVirtualInterfaceGroupId,
          specifiedType: const FullType(String),
        ));
    }
    if (type != null) {
      result$
        ..add(const _i2.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType.nullable(LocalGatewayRouteType),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(LocalGatewayRouteState),
        ));
    }
    if (localGatewayRouteTableId != null) {
      result$
        ..add(const _i2.XmlElementName('LocalGatewayRouteTableId'))
        ..add(serializers.serialize(
          localGatewayRouteTableId,
          specifiedType: const FullType(String),
        ));
    }
    if (localGatewayRouteTableArn != null) {
      result$
        ..add(const _i2.XmlElementName('LocalGatewayRouteTableArn'))
        ..add(serializers.serialize(
          localGatewayRouteTableArn,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i2.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (subnetId != null) {
      result$
        ..add(const _i2.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    if (coipPoolId != null) {
      result$
        ..add(const _i2.XmlElementName('CoipPoolId'))
        ..add(serializers.serialize(
          coipPoolId,
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
    if (destinationPrefixListId != null) {
      result$
        ..add(const _i2.XmlElementName('DestinationPrefixListId'))
        ..add(serializers.serialize(
          destinationPrefixListId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
