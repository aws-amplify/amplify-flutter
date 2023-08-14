// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_multicast_domain_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_resource_type.dart';

part 'transit_gateway_multicast_domain_association.g.dart';

/// Describes the resources associated with the transit gateway multicast domain.
abstract class TransitGatewayMulticastDomainAssociation
    with
        _i1.AWSEquatable<TransitGatewayMulticastDomainAssociation>
    implements
        Built<TransitGatewayMulticastDomainAssociation,
            TransitGatewayMulticastDomainAssociationBuilder> {
  /// Describes the resources associated with the transit gateway multicast domain.
  factory TransitGatewayMulticastDomainAssociation({
    String? transitGatewayAttachmentId,
    String? resourceId,
    TransitGatewayAttachmentResourceType? resourceType,
    String? resourceOwnerId,
    SubnetAssociation? subnet,
  }) {
    return _$TransitGatewayMulticastDomainAssociation._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      resourceId: resourceId,
      resourceType: resourceType,
      resourceOwnerId: resourceOwnerId,
      subnet: subnet,
    );
  }

  /// Describes the resources associated with the transit gateway multicast domain.
  factory TransitGatewayMulticastDomainAssociation.build(
      [void Function(TransitGatewayMulticastDomainAssociationBuilder)
          updates]) = _$TransitGatewayMulticastDomainAssociation;

  const TransitGatewayMulticastDomainAssociation._();

  static const List<
          _i2.SmithySerializer<TransitGatewayMulticastDomainAssociation>>
      serializers = [
    TransitGatewayMulticastDomainAssociationEc2QuerySerializer()
  ];

  /// The ID of the transit gateway attachment.
  String? get transitGatewayAttachmentId;

  /// The ID of the resource.
  String? get resourceId;

  /// The type of resource, for example a VPC attachment.
  TransitGatewayAttachmentResourceType? get resourceType;

  /// The ID of the Amazon Web Services account that owns the transit gateway multicast domain association resource.
  String? get resourceOwnerId;

  /// The subnet associated with the transit gateway multicast domain.
  SubnetAssociation? get subnet;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        resourceId,
        resourceType,
        resourceOwnerId,
        subnet,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayMulticastDomainAssociation')
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
            'resourceOwnerId',
            resourceOwnerId,
          )
          ..add(
            'subnet',
            subnet,
          );
    return helper.toString();
  }
}

class TransitGatewayMulticastDomainAssociationEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<TransitGatewayMulticastDomainAssociation> {
  const TransitGatewayMulticastDomainAssociationEc2QuerySerializer()
      : super('TransitGatewayMulticastDomainAssociation');

  @override
  Iterable<Type> get types => const [
        TransitGatewayMulticastDomainAssociation,
        _$TransitGatewayMulticastDomainAssociation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayMulticastDomainAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayMulticastDomainAssociationBuilder();
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
        case 'resourceOwnerId':
          result.resourceOwnerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'subnet':
          result.subnet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SubnetAssociation),
          ) as SubnetAssociation));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayMulticastDomainAssociation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TransitGatewayMulticastDomainAssociationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayMulticastDomainAssociation(
      :transitGatewayAttachmentId,
      :resourceId,
      :resourceType,
      :resourceOwnerId,
      :subnet
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
          specifiedType:
              const FullType.nullable(TransitGatewayAttachmentResourceType),
        ));
    }
    if (resourceOwnerId != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceOwnerId'))
        ..add(serializers.serialize(
          resourceOwnerId,
          specifiedType: const FullType(String),
        ));
    }
    if (subnet != null) {
      result$
        ..add(const _i2.XmlElementName('Subnet'))
        ..add(serializers.serialize(
          subnet,
          specifiedType: const FullType(SubnetAssociation),
        ));
    }
    return result$;
  }
}
