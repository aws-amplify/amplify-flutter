// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_route_table_route; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'transit_gateway_route_table_route.g.dart';

/// Describes a route in a transit gateway route table.
abstract class TransitGatewayRouteTableRoute
    with
        _i1.AWSEquatable<TransitGatewayRouteTableRoute>
    implements
        Built<TransitGatewayRouteTableRoute,
            TransitGatewayRouteTableRouteBuilder> {
  /// Describes a route in a transit gateway route table.
  factory TransitGatewayRouteTableRoute({
    String? destinationCidr,
    String? state,
    String? routeOrigin,
    String? prefixListId,
    String? attachmentId,
    String? resourceId,
    String? resourceType,
  }) {
    return _$TransitGatewayRouteTableRoute._(
      destinationCidr: destinationCidr,
      state: state,
      routeOrigin: routeOrigin,
      prefixListId: prefixListId,
      attachmentId: attachmentId,
      resourceId: resourceId,
      resourceType: resourceType,
    );
  }

  /// Describes a route in a transit gateway route table.
  factory TransitGatewayRouteTableRoute.build(
          [void Function(TransitGatewayRouteTableRouteBuilder) updates]) =
      _$TransitGatewayRouteTableRoute;

  const TransitGatewayRouteTableRoute._();

  static const List<_i2.SmithySerializer<TransitGatewayRouteTableRoute>>
      serializers = [TransitGatewayRouteTableRouteEc2QuerySerializer()];

  /// The CIDR block used for destination matches.
  String? get destinationCidr;

  /// The state of the route.
  String? get state;

  /// The route origin. The following are the possible values:
  ///
  /// *   static
  ///
  /// *   propagated
  String? get routeOrigin;

  /// The ID of the prefix list.
  String? get prefixListId;

  /// The ID of the route attachment.
  String? get attachmentId;

  /// The ID of the resource for the route attachment.
  String? get resourceId;

  /// The resource type for the route attachment.
  String? get resourceType;
  @override
  List<Object?> get props => [
        destinationCidr,
        state,
        routeOrigin,
        prefixListId,
        attachmentId,
        resourceId,
        resourceType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayRouteTableRoute')
      ..add(
        'destinationCidr',
        destinationCidr,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'routeOrigin',
        routeOrigin,
      )
      ..add(
        'prefixListId',
        prefixListId,
      )
      ..add(
        'attachmentId',
        attachmentId,
      )
      ..add(
        'resourceId',
        resourceId,
      )
      ..add(
        'resourceType',
        resourceType,
      );
    return helper.toString();
  }
}

class TransitGatewayRouteTableRouteEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<TransitGatewayRouteTableRoute> {
  const TransitGatewayRouteTableRouteEc2QuerySerializer()
      : super('TransitGatewayRouteTableRoute');

  @override
  Iterable<Type> get types => const [
        TransitGatewayRouteTableRoute,
        _$TransitGatewayRouteTableRoute,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayRouteTableRoute deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayRouteTableRouteBuilder();
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
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'routeOrigin':
          result.routeOrigin = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'prefixListId':
          result.prefixListId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'attachmentId':
          result.attachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceType':
          result.resourceType = (serializers.deserialize(
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
    TransitGatewayRouteTableRoute object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TransitGatewayRouteTableRouteResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayRouteTableRoute(
      :destinationCidr,
      :state,
      :routeOrigin,
      :prefixListId,
      :attachmentId,
      :resourceId,
      :resourceType
    ) = object;
    if (destinationCidr != null) {
      result$
        ..add(const _i2.XmlElementName('DestinationCidr'))
        ..add(serializers.serialize(
          destinationCidr,
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
    if (routeOrigin != null) {
      result$
        ..add(const _i2.XmlElementName('RouteOrigin'))
        ..add(serializers.serialize(
          routeOrigin,
          specifiedType: const FullType(String),
        ));
    }
    if (prefixListId != null) {
      result$
        ..add(const _i2.XmlElementName('PrefixListId'))
        ..add(serializers.serialize(
          prefixListId,
          specifiedType: const FullType(String),
        ));
    }
    if (attachmentId != null) {
      result$
        ..add(const _i2.XmlElementName('AttachmentId'))
        ..add(serializers.serialize(
          attachmentId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceId != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceType != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
