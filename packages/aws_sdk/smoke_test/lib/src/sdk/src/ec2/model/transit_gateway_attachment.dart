// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_attachment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_resource_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_state.dart';

part 'transit_gateway_attachment.g.dart';

/// Describes an attachment between a resource and a transit gateway.
abstract class TransitGatewayAttachment
    with _i1.AWSEquatable<TransitGatewayAttachment>
    implements
        Built<TransitGatewayAttachment, TransitGatewayAttachmentBuilder> {
  /// Describes an attachment between a resource and a transit gateway.
  factory TransitGatewayAttachment({
    String? transitGatewayAttachmentId,
    String? transitGatewayId,
    String? transitGatewayOwnerId,
    String? resourceOwnerId,
    TransitGatewayAttachmentResourceType? resourceType,
    String? resourceId,
    TransitGatewayAttachmentState? state,
    TransitGatewayAttachmentAssociation? association,
    DateTime? creationTime,
    List<Tag>? tags,
  }) {
    return _$TransitGatewayAttachment._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      transitGatewayId: transitGatewayId,
      transitGatewayOwnerId: transitGatewayOwnerId,
      resourceOwnerId: resourceOwnerId,
      resourceType: resourceType,
      resourceId: resourceId,
      state: state,
      association: association,
      creationTime: creationTime,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes an attachment between a resource and a transit gateway.
  factory TransitGatewayAttachment.build(
          [void Function(TransitGatewayAttachmentBuilder) updates]) =
      _$TransitGatewayAttachment;

  const TransitGatewayAttachment._();

  static const List<_i3.SmithySerializer<TransitGatewayAttachment>>
      serializers = [TransitGatewayAttachmentEc2QuerySerializer()];

  /// The ID of the attachment.
  String? get transitGatewayAttachmentId;

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The ID of the Amazon Web Services account that owns the transit gateway.
  String? get transitGatewayOwnerId;

  /// The ID of the Amazon Web Services account that owns the resource.
  String? get resourceOwnerId;

  /// The resource type. Note that the `tgw-peering` resource type has been deprecated.
  TransitGatewayAttachmentResourceType? get resourceType;

  /// The ID of the resource.
  String? get resourceId;

  /// The attachment state. Note that the `initiating` state has been deprecated.
  TransitGatewayAttachmentState? get state;

  /// The association.
  TransitGatewayAttachmentAssociation? get association;

  /// The creation time.
  DateTime? get creationTime;

  /// The tags for the attachment.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        transitGatewayId,
        transitGatewayOwnerId,
        resourceOwnerId,
        resourceType,
        resourceId,
        state,
        association,
        creationTime,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayAttachment')
      ..add(
        'transitGatewayAttachmentId',
        transitGatewayAttachmentId,
      )
      ..add(
        'transitGatewayId',
        transitGatewayId,
      )
      ..add(
        'transitGatewayOwnerId',
        transitGatewayOwnerId,
      )
      ..add(
        'resourceOwnerId',
        resourceOwnerId,
      )
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'resourceId',
        resourceId,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'association',
        association,
      )
      ..add(
        'creationTime',
        creationTime,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class TransitGatewayAttachmentEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TransitGatewayAttachment> {
  const TransitGatewayAttachmentEc2QuerySerializer()
      : super('TransitGatewayAttachment');

  @override
  Iterable<Type> get types => const [
        TransitGatewayAttachment,
        _$TransitGatewayAttachment,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayAttachment deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayAttachmentBuilder();
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
        case 'transitGatewayId':
          result.transitGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'transitGatewayOwnerId':
          result.transitGatewayOwnerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceOwnerId':
          result.resourceOwnerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayAttachmentResourceType),
          ) as TransitGatewayAttachmentResourceType);
        case 'resourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayAttachmentState),
          ) as TransitGatewayAttachmentState);
        case 'association':
          result.association.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayAttachmentAssociation),
          ) as TransitGatewayAttachmentAssociation));
        case 'creationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayAttachment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayAttachmentResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayAttachment(
      :transitGatewayAttachmentId,
      :transitGatewayId,
      :transitGatewayOwnerId,
      :resourceOwnerId,
      :resourceType,
      :resourceId,
      :state,
      :association,
      :creationTime,
      :tags
    ) = object;
    if (transitGatewayAttachmentId != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transitGatewayAttachmentId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayId != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          transitGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayOwnerId != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayOwnerId'))
        ..add(serializers.serialize(
          transitGatewayOwnerId,
          specifiedType: const FullType(String),
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
    if (resourceType != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          resourceType,
          specifiedType:
              const FullType.nullable(TransitGatewayAttachmentResourceType),
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
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(TransitGatewayAttachmentState),
        ));
    }
    if (association != null) {
      result$
        ..add(const _i3.XmlElementName('Association'))
        ..add(serializers.serialize(
          association,
          specifiedType: const FullType(TransitGatewayAttachmentAssociation),
        ));
    }
    if (creationTime != null) {
      result$
        ..add(const _i3.XmlElementName('CreationTime'))
        ..add(serializers.serialize(
          creationTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
