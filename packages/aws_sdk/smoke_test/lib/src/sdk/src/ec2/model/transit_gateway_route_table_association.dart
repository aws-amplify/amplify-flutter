// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_route_table_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_association_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_resource_type.dart';

part 'transit_gateway_route_table_association.g.dart';

/// Describes an association between a route table and a resource attachment.
abstract class TransitGatewayRouteTableAssociation
    with
        _i1.AWSEquatable<TransitGatewayRouteTableAssociation>
    implements
        Built<TransitGatewayRouteTableAssociation,
            TransitGatewayRouteTableAssociationBuilder> {
  /// Describes an association between a route table and a resource attachment.
  factory TransitGatewayRouteTableAssociation({
    String? transitGatewayAttachmentId,
    String? resourceId,
    TransitGatewayAttachmentResourceType? resourceType,
    TransitGatewayAssociationState? state,
  }) {
    return _$TransitGatewayRouteTableAssociation._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      resourceId: resourceId,
      resourceType: resourceType,
      state: state,
    );
  }

  /// Describes an association between a route table and a resource attachment.
  factory TransitGatewayRouteTableAssociation.build(
          [void Function(TransitGatewayRouteTableAssociationBuilder) updates]) =
      _$TransitGatewayRouteTableAssociation;

  const TransitGatewayRouteTableAssociation._();

  static const List<_i2.SmithySerializer<TransitGatewayRouteTableAssociation>>
      serializers = [TransitGatewayRouteTableAssociationEc2QuerySerializer()];

  /// The ID of the attachment.
  String? get transitGatewayAttachmentId;

  /// The ID of the resource.
  String? get resourceId;

  /// The resource type. Note that the `tgw-peering` resource type has been deprecated.
  TransitGatewayAttachmentResourceType? get resourceType;

  /// The state of the association.
  TransitGatewayAssociationState? get state;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        resourceId,
        resourceType,
        state,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayRouteTableAssociation')
          ..add(
            'transitGatewayAttachmentId',
            transitGatewayAttachmentId,
          )
          ..add(
            'resourceId',
            resourceId,
          )
          ..add(
            'resourceType',
            resourceType,
          )
          ..add(
            'state',
            state,
          );
    return helper.toString();
  }
}

class TransitGatewayRouteTableAssociationEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<TransitGatewayRouteTableAssociation> {
  const TransitGatewayRouteTableAssociationEc2QuerySerializer()
      : super('TransitGatewayRouteTableAssociation');

  @override
  Iterable<Type> get types => const [
        TransitGatewayRouteTableAssociation,
        _$TransitGatewayRouteTableAssociation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayRouteTableAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayRouteTableAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayAttachmentId':
          result.transitGatewayAttachmentId = (serializers.deserialize(
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
            specifiedType: const FullType(TransitGatewayAttachmentResourceType),
          ) as TransitGatewayAttachmentResourceType);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayAssociationState),
          ) as TransitGatewayAssociationState);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayRouteTableAssociation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TransitGatewayRouteTableAssociationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayRouteTableAssociation(
      :transitGatewayAttachmentId,
      :resourceId,
      :resourceType,
      :state
    ) = object;
    if (transitGatewayAttachmentId != null) {
      result$
        ..add(const _i2.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transitGatewayAttachmentId,
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
          specifiedType: const FullType(TransitGatewayAttachmentResourceType),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(TransitGatewayAssociationState),
        ));
    }
    return result$;
  }
}
