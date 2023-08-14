// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_prefix_list_attachment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_resource_type.dart';

part 'transit_gateway_prefix_list_attachment.g.dart';

/// Describes a transit gateway prefix list attachment.
abstract class TransitGatewayPrefixListAttachment
    with
        _i1.AWSEquatable<TransitGatewayPrefixListAttachment>
    implements
        Built<TransitGatewayPrefixListAttachment,
            TransitGatewayPrefixListAttachmentBuilder> {
  /// Describes a transit gateway prefix list attachment.
  factory TransitGatewayPrefixListAttachment({
    String? transitGatewayAttachmentId,
    TransitGatewayAttachmentResourceType? resourceType,
    String? resourceId,
  }) {
    return _$TransitGatewayPrefixListAttachment._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      resourceType: resourceType,
      resourceId: resourceId,
    );
  }

  /// Describes a transit gateway prefix list attachment.
  factory TransitGatewayPrefixListAttachment.build(
          [void Function(TransitGatewayPrefixListAttachmentBuilder) updates]) =
      _$TransitGatewayPrefixListAttachment;

  const TransitGatewayPrefixListAttachment._();

  static const List<_i2.SmithySerializer<TransitGatewayPrefixListAttachment>>
      serializers = [TransitGatewayPrefixListAttachmentEc2QuerySerializer()];

  /// The ID of the attachment.
  String? get transitGatewayAttachmentId;

  /// The resource type. Note that the `tgw-peering` resource type has been deprecated.
  TransitGatewayAttachmentResourceType? get resourceType;

  /// The ID of the resource.
  String? get resourceId;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        resourceType,
        resourceId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayPrefixListAttachment')
          ..add(
            'transitGatewayAttachmentId',
            transitGatewayAttachmentId,
          )
          ..add(
            'resourceType',
            resourceType,
          )
          ..add(
            'resourceId',
            resourceId,
          );
    return helper.toString();
  }
}

class TransitGatewayPrefixListAttachmentEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<TransitGatewayPrefixListAttachment> {
  const TransitGatewayPrefixListAttachmentEc2QuerySerializer()
      : super('TransitGatewayPrefixListAttachment');

  @override
  Iterable<Type> get types => const [
        TransitGatewayPrefixListAttachment,
        _$TransitGatewayPrefixListAttachment,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayPrefixListAttachment deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayPrefixListAttachmentBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayPrefixListAttachment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TransitGatewayPrefixListAttachmentResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayPrefixListAttachment(
      :transitGatewayAttachmentId,
      :resourceType,
      :resourceId
    ) = object;
    if (transitGatewayAttachmentId != null) {
      result$
        ..add(const _i2.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transitGatewayAttachmentId,
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
    if (resourceId != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
