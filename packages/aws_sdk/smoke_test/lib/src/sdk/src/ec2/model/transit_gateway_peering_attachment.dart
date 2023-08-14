// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_peering_attachment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/peering_attachment_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/peering_tgw_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_peering_attachment_options.dart';

part 'transit_gateway_peering_attachment.g.dart';

/// Describes the transit gateway peering attachment.
abstract class TransitGatewayPeeringAttachment
    with
        _i1.AWSEquatable<TransitGatewayPeeringAttachment>
    implements
        Built<TransitGatewayPeeringAttachment,
            TransitGatewayPeeringAttachmentBuilder> {
  /// Describes the transit gateway peering attachment.
  factory TransitGatewayPeeringAttachment({
    String? transitGatewayAttachmentId,
    String? accepterTransitGatewayAttachmentId,
    PeeringTgwInfo? requesterTgwInfo,
    PeeringTgwInfo? accepterTgwInfo,
    TransitGatewayPeeringAttachmentOptions? options,
    PeeringAttachmentStatus? status,
    TransitGatewayAttachmentState? state,
    DateTime? creationTime,
    List<Tag>? tags,
  }) {
    return _$TransitGatewayPeeringAttachment._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      accepterTransitGatewayAttachmentId: accepterTransitGatewayAttachmentId,
      requesterTgwInfo: requesterTgwInfo,
      accepterTgwInfo: accepterTgwInfo,
      options: options,
      status: status,
      state: state,
      creationTime: creationTime,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes the transit gateway peering attachment.
  factory TransitGatewayPeeringAttachment.build(
          [void Function(TransitGatewayPeeringAttachmentBuilder) updates]) =
      _$TransitGatewayPeeringAttachment;

  const TransitGatewayPeeringAttachment._();

  static const List<_i3.SmithySerializer<TransitGatewayPeeringAttachment>>
      serializers = [TransitGatewayPeeringAttachmentEc2QuerySerializer()];

  /// The ID of the transit gateway peering attachment.
  String? get transitGatewayAttachmentId;

  /// The ID of the accepter transit gateway attachment.
  String? get accepterTransitGatewayAttachmentId;

  /// Information about the requester transit gateway.
  PeeringTgwInfo? get requesterTgwInfo;

  /// Information about the accepter transit gateway.
  PeeringTgwInfo? get accepterTgwInfo;

  /// Details about the transit gateway peering attachment.
  TransitGatewayPeeringAttachmentOptions? get options;

  /// The status of the transit gateway peering attachment.
  PeeringAttachmentStatus? get status;

  /// The state of the transit gateway peering attachment. Note that the `initiating` state has been deprecated.
  TransitGatewayAttachmentState? get state;

  /// The time the transit gateway peering attachment was created.
  DateTime? get creationTime;

  /// The tags for the transit gateway peering attachment.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        accepterTransitGatewayAttachmentId,
        requesterTgwInfo,
        accepterTgwInfo,
        options,
        status,
        state,
        creationTime,
        tags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayPeeringAttachment')
          ..add(
            'transitGatewayAttachmentId',
            transitGatewayAttachmentId,
          )
          ..add(
            'accepterTransitGatewayAttachmentId',
            accepterTransitGatewayAttachmentId,
          )
          ..add(
            'requesterTgwInfo',
            requesterTgwInfo,
          )
          ..add(
            'accepterTgwInfo',
            accepterTgwInfo,
          )
          ..add(
            'options',
            options,
          )
          ..add(
            'status',
            status,
          )
          ..add(
            'state',
            state,
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

class TransitGatewayPeeringAttachmentEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TransitGatewayPeeringAttachment> {
  const TransitGatewayPeeringAttachmentEc2QuerySerializer()
      : super('TransitGatewayPeeringAttachment');

  @override
  Iterable<Type> get types => const [
        TransitGatewayPeeringAttachment,
        _$TransitGatewayPeeringAttachment,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayPeeringAttachment deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayPeeringAttachmentBuilder();
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
        case 'accepterTransitGatewayAttachmentId':
          result.accepterTransitGatewayAttachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'requesterTgwInfo':
          result.requesterTgwInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PeeringTgwInfo),
          ) as PeeringTgwInfo));
        case 'accepterTgwInfo':
          result.accepterTgwInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PeeringTgwInfo),
          ) as PeeringTgwInfo));
        case 'options':
          result.options.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(TransitGatewayPeeringAttachmentOptions),
          ) as TransitGatewayPeeringAttachmentOptions));
        case 'status':
          result.status.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PeeringAttachmentStatus),
          ) as PeeringAttachmentStatus));
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayAttachmentState),
          ) as TransitGatewayAttachmentState);
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
    TransitGatewayPeeringAttachment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayPeeringAttachmentResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayPeeringAttachment(
      :transitGatewayAttachmentId,
      :accepterTransitGatewayAttachmentId,
      :requesterTgwInfo,
      :accepterTgwInfo,
      :options,
      :status,
      :state,
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
    if (accepterTransitGatewayAttachmentId != null) {
      result$
        ..add(const _i3.XmlElementName('AccepterTransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          accepterTransitGatewayAttachmentId,
          specifiedType: const FullType(String),
        ));
    }
    if (requesterTgwInfo != null) {
      result$
        ..add(const _i3.XmlElementName('RequesterTgwInfo'))
        ..add(serializers.serialize(
          requesterTgwInfo,
          specifiedType: const FullType(PeeringTgwInfo),
        ));
    }
    if (accepterTgwInfo != null) {
      result$
        ..add(const _i3.XmlElementName('AccepterTgwInfo'))
        ..add(serializers.serialize(
          accepterTgwInfo,
          specifiedType: const FullType(PeeringTgwInfo),
        ));
    }
    if (options != null) {
      result$
        ..add(const _i3.XmlElementName('Options'))
        ..add(serializers.serialize(
          options,
          specifiedType: const FullType(TransitGatewayPeeringAttachmentOptions),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(PeeringAttachmentStatus),
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
