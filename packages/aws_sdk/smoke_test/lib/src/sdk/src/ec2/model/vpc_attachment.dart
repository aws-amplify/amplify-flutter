// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpc_attachment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/attachment_status.dart';

part 'vpc_attachment.g.dart';

/// Describes an attachment between a virtual private gateway and a VPC.
abstract class VpcAttachment
    with _i1.AWSEquatable<VpcAttachment>
    implements Built<VpcAttachment, VpcAttachmentBuilder> {
  /// Describes an attachment between a virtual private gateway and a VPC.
  factory VpcAttachment({
    AttachmentStatus? state,
    String? vpcId,
  }) {
    return _$VpcAttachment._(
      state: state,
      vpcId: vpcId,
    );
  }

  /// Describes an attachment between a virtual private gateway and a VPC.
  factory VpcAttachment.build([void Function(VpcAttachmentBuilder) updates]) =
      _$VpcAttachment;

  const VpcAttachment._();

  static const List<_i2.SmithySerializer<VpcAttachment>> serializers = [
    VpcAttachmentEc2QuerySerializer()
  ];

  /// The current state of the attachment.
  AttachmentStatus? get state;

  /// The ID of the VPC.
  String? get vpcId;
  @override
  List<Object?> get props => [
        state,
        vpcId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpcAttachment')
      ..add(
        'state',
        state,
      )
      ..add(
        'vpcId',
        vpcId,
      );
    return helper.toString();
  }
}

class VpcAttachmentEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VpcAttachment> {
  const VpcAttachmentEc2QuerySerializer() : super('VpcAttachment');

  @override
  Iterable<Type> get types => const [
        VpcAttachment,
        _$VpcAttachment,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpcAttachment deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpcAttachmentBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(AttachmentStatus),
          ) as AttachmentStatus);
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
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
    VpcAttachment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VpcAttachmentResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VpcAttachment(:state, :vpcId) = object;
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(AttachmentStatus),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i2.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
