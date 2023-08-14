// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.egress_only_internet_gateway; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/internet_gateway_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'egress_only_internet_gateway.g.dart';

/// Describes an egress-only internet gateway.
abstract class EgressOnlyInternetGateway
    with _i1.AWSEquatable<EgressOnlyInternetGateway>
    implements
        Built<EgressOnlyInternetGateway, EgressOnlyInternetGatewayBuilder> {
  /// Describes an egress-only internet gateway.
  factory EgressOnlyInternetGateway({
    List<InternetGatewayAttachment>? attachments,
    String? egressOnlyInternetGatewayId,
    List<Tag>? tags,
  }) {
    return _$EgressOnlyInternetGateway._(
      attachments: attachments == null ? null : _i2.BuiltList(attachments),
      egressOnlyInternetGatewayId: egressOnlyInternetGatewayId,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes an egress-only internet gateway.
  factory EgressOnlyInternetGateway.build(
          [void Function(EgressOnlyInternetGatewayBuilder) updates]) =
      _$EgressOnlyInternetGateway;

  const EgressOnlyInternetGateway._();

  static const List<_i3.SmithySerializer<EgressOnlyInternetGateway>>
      serializers = [EgressOnlyInternetGatewayEc2QuerySerializer()];

  /// Information about the attachment of the egress-only internet gateway.
  _i2.BuiltList<InternetGatewayAttachment>? get attachments;

  /// The ID of the egress-only internet gateway.
  String? get egressOnlyInternetGatewayId;

  /// The tags assigned to the egress-only internet gateway.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        attachments,
        egressOnlyInternetGatewayId,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EgressOnlyInternetGateway')
      ..add(
        'attachments',
        attachments,
      )
      ..add(
        'egressOnlyInternetGatewayId',
        egressOnlyInternetGatewayId,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class EgressOnlyInternetGatewayEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<EgressOnlyInternetGateway> {
  const EgressOnlyInternetGatewayEc2QuerySerializer()
      : super('EgressOnlyInternetGateway');

  @override
  Iterable<Type> get types => const [
        EgressOnlyInternetGateway,
        _$EgressOnlyInternetGateway,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EgressOnlyInternetGateway deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EgressOnlyInternetGatewayBuilder();
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
        case 'egressOnlyInternetGatewayId':
          result.egressOnlyInternetGatewayId = (serializers.deserialize(
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
    EgressOnlyInternetGateway object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'EgressOnlyInternetGatewayResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EgressOnlyInternetGateway(
      :attachments,
      :egressOnlyInternetGatewayId,
      :tags
    ) = object;
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
    if (egressOnlyInternetGatewayId != null) {
      result$
        ..add(const _i3.XmlElementName('EgressOnlyInternetGatewayId'))
        ..add(serializers.serialize(
          egressOnlyInternetGatewayId,
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
