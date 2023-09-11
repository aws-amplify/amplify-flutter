// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_multicast_domain_associations; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_resource_type.dart';

part 'transit_gateway_multicast_domain_associations.g.dart';

/// Describes the multicast domain associations.
abstract class TransitGatewayMulticastDomainAssociations
    with
        _i1.AWSEquatable<TransitGatewayMulticastDomainAssociations>
    implements
        Built<TransitGatewayMulticastDomainAssociations,
            TransitGatewayMulticastDomainAssociationsBuilder> {
  /// Describes the multicast domain associations.
  factory TransitGatewayMulticastDomainAssociations({
    String? transitGatewayMulticastDomainId,
    String? transitGatewayAttachmentId,
    String? resourceId,
    TransitGatewayAttachmentResourceType? resourceType,
    String? resourceOwnerId,
    List<SubnetAssociation>? subnets,
  }) {
    return _$TransitGatewayMulticastDomainAssociations._(
      transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      resourceId: resourceId,
      resourceType: resourceType,
      resourceOwnerId: resourceOwnerId,
      subnets: subnets == null ? null : _i2.BuiltList(subnets),
    );
  }

  /// Describes the multicast domain associations.
  factory TransitGatewayMulticastDomainAssociations.build(
      [void Function(TransitGatewayMulticastDomainAssociationsBuilder)
          updates]) = _$TransitGatewayMulticastDomainAssociations;

  const TransitGatewayMulticastDomainAssociations._();

  static const List<
          _i3.SmithySerializer<TransitGatewayMulticastDomainAssociations>>
      serializers = [
    TransitGatewayMulticastDomainAssociationsEc2QuerySerializer()
  ];

  /// The ID of the transit gateway multicast domain.
  String? get transitGatewayMulticastDomainId;

  /// The ID of the transit gateway attachment.
  String? get transitGatewayAttachmentId;

  /// The ID of the resource.
  String? get resourceId;

  /// The type of resource, for example a VPC attachment.
  TransitGatewayAttachmentResourceType? get resourceType;

  /// The ID of the Amazon Web Services account that owns the resource.
  String? get resourceOwnerId;

  /// The subnets associated with the multicast domain.
  _i2.BuiltList<SubnetAssociation>? get subnets;
  @override
  List<Object?> get props => [
        transitGatewayMulticastDomainId,
        transitGatewayAttachmentId,
        resourceId,
        resourceType,
        resourceOwnerId,
        subnets,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayMulticastDomainAssociations')
          ..add(
            'transitGatewayMulticastDomainId',
            transitGatewayMulticastDomainId,
          )
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
            'subnets',
            subnets,
          );
    return helper.toString();
  }
}

class TransitGatewayMulticastDomainAssociationsEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<TransitGatewayMulticastDomainAssociations> {
  const TransitGatewayMulticastDomainAssociationsEc2QuerySerializer()
      : super('TransitGatewayMulticastDomainAssociations');

  @override
  Iterable<Type> get types => const [
        TransitGatewayMulticastDomainAssociations,
        _$TransitGatewayMulticastDomainAssociations,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayMulticastDomainAssociations deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayMulticastDomainAssociationsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayMulticastDomainId':
          result.transitGatewayMulticastDomainId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'subnets':
          result.subnets.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(SubnetAssociation)],
            ),
          ) as _i2.BuiltList<SubnetAssociation>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayMulticastDomainAssociations object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayMulticastDomainAssociationsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayMulticastDomainAssociations(
      :transitGatewayMulticastDomainId,
      :transitGatewayAttachmentId,
      :resourceId,
      :resourceType,
      :resourceOwnerId,
      :subnets
    ) = object;
    if (transitGatewayMulticastDomainId != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayMulticastDomainId'))
        ..add(serializers.serialize(
          transitGatewayMulticastDomainId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayAttachmentId != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transitGatewayAttachmentId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceId != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceType != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType(TransitGatewayAttachmentResourceType),
        ));
    }
    if (resourceOwnerId != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceOwnerId'))
        ..add(serializers.serialize(
          resourceOwnerId,
          specifiedType: const FullType(String),
        ));
    }
    if (subnets != null) {
      result$
        ..add(const _i3.XmlElementName('Subnets'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          subnets,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(SubnetAssociation)],
          ),
        ));
    }
    return result$;
  }
}
