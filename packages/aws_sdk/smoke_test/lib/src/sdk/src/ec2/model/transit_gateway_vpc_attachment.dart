// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_vpc_attachment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_vpc_attachment_options.dart';

part 'transit_gateway_vpc_attachment.g.dart';

/// Describes a VPC attachment.
abstract class TransitGatewayVpcAttachment
    with _i1.AWSEquatable<TransitGatewayVpcAttachment>
    implements
        Built<TransitGatewayVpcAttachment, TransitGatewayVpcAttachmentBuilder> {
  /// Describes a VPC attachment.
  factory TransitGatewayVpcAttachment({
    String? transitGatewayAttachmentId,
    String? transitGatewayId,
    String? vpcId,
    String? vpcOwnerId,
    TransitGatewayAttachmentState? state,
    List<String>? subnetIds,
    DateTime? creationTime,
    TransitGatewayVpcAttachmentOptions? options,
    List<Tag>? tags,
  }) {
    return _$TransitGatewayVpcAttachment._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      transitGatewayId: transitGatewayId,
      vpcId: vpcId,
      vpcOwnerId: vpcOwnerId,
      state: state,
      subnetIds: subnetIds == null ? null : _i2.BuiltList(subnetIds),
      creationTime: creationTime,
      options: options,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes a VPC attachment.
  factory TransitGatewayVpcAttachment.build(
          [void Function(TransitGatewayVpcAttachmentBuilder) updates]) =
      _$TransitGatewayVpcAttachment;

  const TransitGatewayVpcAttachment._();

  static const List<_i3.SmithySerializer<TransitGatewayVpcAttachment>>
      serializers = [TransitGatewayVpcAttachmentEc2QuerySerializer()];

  /// The ID of the attachment.
  String? get transitGatewayAttachmentId;

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The ID of the VPC.
  String? get vpcId;

  /// The ID of the Amazon Web Services account that owns the VPC.
  String? get vpcOwnerId;

  /// The state of the VPC attachment. Note that the `initiating` state has been deprecated.
  TransitGatewayAttachmentState? get state;

  /// The IDs of the subnets.
  _i2.BuiltList<String>? get subnetIds;

  /// The creation time.
  DateTime? get creationTime;

  /// The VPC attachment options.
  TransitGatewayVpcAttachmentOptions? get options;

  /// The tags for the VPC attachment.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        transitGatewayId,
        vpcId,
        vpcOwnerId,
        state,
        subnetIds,
        creationTime,
        options,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayVpcAttachment')
      ..add(
        'transitGatewayAttachmentId',
        transitGatewayAttachmentId,
      )
      ..add(
        'transitGatewayId',
        transitGatewayId,
      )
      ..add(
        'vpcId',
        vpcId,
      )
      ..add(
        'vpcOwnerId',
        vpcOwnerId,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'subnetIds',
        subnetIds,
      )
      ..add(
        'creationTime',
        creationTime,
      )
      ..add(
        'options',
        options,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class TransitGatewayVpcAttachmentEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TransitGatewayVpcAttachment> {
  const TransitGatewayVpcAttachmentEc2QuerySerializer()
      : super('TransitGatewayVpcAttachment');

  @override
  Iterable<Type> get types => const [
        TransitGatewayVpcAttachment,
        _$TransitGatewayVpcAttachment,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayVpcAttachment deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayVpcAttachmentBuilder();
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
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpcOwnerId':
          result.vpcOwnerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayAttachmentState),
          ) as TransitGatewayAttachmentState);
        case 'subnetIds':
          result.subnetIds.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'creationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'options':
          result.options.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayVpcAttachmentOptions),
          ) as TransitGatewayVpcAttachmentOptions));
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
    TransitGatewayVpcAttachment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayVpcAttachmentResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayVpcAttachment(
      :transitGatewayAttachmentId,
      :transitGatewayId,
      :vpcId,
      :vpcOwnerId,
      :state,
      :subnetIds,
      :creationTime,
      :options,
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
    if (vpcId != null) {
      result$
        ..add(const _i3.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcOwnerId != null) {
      result$
        ..add(const _i3.XmlElementName('VpcOwnerId'))
        ..add(serializers.serialize(
          vpcOwnerId,
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
    if (subnetIds != null) {
      result$
        ..add(const _i3.XmlElementName('SubnetIds'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          subnetIds,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
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
    if (options != null) {
      result$
        ..add(const _i3.XmlElementName('Options'))
        ..add(serializers.serialize(
          options,
          specifiedType: const FullType(TransitGatewayVpcAttachmentOptions),
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
