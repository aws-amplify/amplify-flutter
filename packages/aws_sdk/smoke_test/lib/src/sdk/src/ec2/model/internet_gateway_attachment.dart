// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.internet_gateway_attachment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/attachment_status.dart';

part 'internet_gateway_attachment.g.dart';

/// Describes the attachment of a VPC to an internet gateway or an egress-only internet gateway.
abstract class InternetGatewayAttachment
    with _i1.AWSEquatable<InternetGatewayAttachment>
    implements
        Built<InternetGatewayAttachment, InternetGatewayAttachmentBuilder> {
  /// Describes the attachment of a VPC to an internet gateway or an egress-only internet gateway.
  factory InternetGatewayAttachment({
    AttachmentStatus? state,
    String? vpcId,
  }) {
    return _$InternetGatewayAttachment._(
      state: state,
      vpcId: vpcId,
    );
  }

  /// Describes the attachment of a VPC to an internet gateway or an egress-only internet gateway.
  factory InternetGatewayAttachment.build(
          [void Function(InternetGatewayAttachmentBuilder) updates]) =
      _$InternetGatewayAttachment;

  const InternetGatewayAttachment._();

  static const List<_i2.SmithySerializer<InternetGatewayAttachment>>
      serializers = [InternetGatewayAttachmentEc2QuerySerializer()];

  /// The current state of the attachment. For an internet gateway, the state is `available` when attached to a VPC; otherwise, this value is not returned.
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
    final helper = newBuiltValueToStringHelper('InternetGatewayAttachment')
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

class InternetGatewayAttachmentEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InternetGatewayAttachment> {
  const InternetGatewayAttachmentEc2QuerySerializer()
      : super('InternetGatewayAttachment');

  @override
  Iterable<Type> get types => const [
        InternetGatewayAttachment,
        _$InternetGatewayAttachment,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InternetGatewayAttachment deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InternetGatewayAttachmentBuilder();
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
    InternetGatewayAttachment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InternetGatewayAttachmentResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InternetGatewayAttachment(:state, :vpcId) = object;
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
