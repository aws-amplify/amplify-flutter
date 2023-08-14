// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.internet_gateway; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/internet_gateway_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'internet_gateway.g.dart';

/// Describes an internet gateway.
abstract class InternetGateway
    with _i1.AWSEquatable<InternetGateway>
    implements Built<InternetGateway, InternetGatewayBuilder> {
  /// Describes an internet gateway.
  factory InternetGateway({
    List<InternetGatewayAttachment>? attachments,
    String? internetGatewayId,
    String? ownerId,
    List<Tag>? tags,
  }) {
    return _$InternetGateway._(
      attachments: attachments == null ? null : _i2.BuiltList(attachments),
      internetGatewayId: internetGatewayId,
      ownerId: ownerId,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes an internet gateway.
  factory InternetGateway.build(
      [void Function(InternetGatewayBuilder) updates]) = _$InternetGateway;

  const InternetGateway._();

  static const List<_i3.SmithySerializer<InternetGateway>> serializers = [
    InternetGatewayEc2QuerySerializer()
  ];

  /// Any VPCs attached to the internet gateway.
  _i2.BuiltList<InternetGatewayAttachment>? get attachments;

  /// The ID of the internet gateway.
  String? get internetGatewayId;

  /// The ID of the Amazon Web Services account that owns the internet gateway.
  String? get ownerId;

  /// Any tags assigned to the internet gateway.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        attachments,
        internetGatewayId,
        ownerId,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InternetGateway')
      ..add(
        'attachments',
        attachments,
      )
      ..add(
        'internetGatewayId',
        internetGatewayId,
      )
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class InternetGatewayEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InternetGateway> {
  const InternetGatewayEc2QuerySerializer() : super('InternetGateway');

  @override
  Iterable<Type> get types => const [
        InternetGateway,
        _$InternetGateway,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InternetGateway deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InternetGatewayBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'attachmentSet':
          result.attachments.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InternetGatewayAttachment)],
            ),
          ) as _i2.BuiltList<InternetGatewayAttachment>));
        case 'internetGatewayId':
          result.internetGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    InternetGateway object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'InternetGatewayResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InternetGateway(:attachments, :internetGatewayId, :ownerId, :tags) =
        object;
    if (attachments != null) {
      result$
        ..add(const _i3.XmlElementName('AttachmentSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          attachments,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(InternetGatewayAttachment)],
          ),
        ));
    }
    if (internetGatewayId != null) {
      result$
        ..add(const _i3.XmlElementName('InternetGatewayId'))
        ..add(serializers.serialize(
          internetGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
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
