// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reject_transit_gateway_vpc_attachment_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_vpc_attachment.dart';

part 'reject_transit_gateway_vpc_attachment_result.g.dart';

abstract class RejectTransitGatewayVpcAttachmentResult
    with
        _i1.AWSEquatable<RejectTransitGatewayVpcAttachmentResult>
    implements
        Built<RejectTransitGatewayVpcAttachmentResult,
            RejectTransitGatewayVpcAttachmentResultBuilder> {
  factory RejectTransitGatewayVpcAttachmentResult(
      {TransitGatewayVpcAttachment? transitGatewayVpcAttachment}) {
    return _$RejectTransitGatewayVpcAttachmentResult._(
        transitGatewayVpcAttachment: transitGatewayVpcAttachment);
  }

  factory RejectTransitGatewayVpcAttachmentResult.build(
      [void Function(RejectTransitGatewayVpcAttachmentResultBuilder)
          updates]) = _$RejectTransitGatewayVpcAttachmentResult;

  const RejectTransitGatewayVpcAttachmentResult._();

  /// Constructs a [RejectTransitGatewayVpcAttachmentResult] from a [payload] and [response].
  factory RejectTransitGatewayVpcAttachmentResult.fromResponse(
    RejectTransitGatewayVpcAttachmentResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<RejectTransitGatewayVpcAttachmentResult>>
      serializers = [
    RejectTransitGatewayVpcAttachmentResultEc2QuerySerializer()
  ];

  /// Information about the attachment.
  TransitGatewayVpcAttachment? get transitGatewayVpcAttachment;
  @override
  List<Object?> get props => [transitGatewayVpcAttachment];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RejectTransitGatewayVpcAttachmentResult')
          ..add(
            'transitGatewayVpcAttachment',
            transitGatewayVpcAttachment,
          );
    return helper.toString();
  }
}

class RejectTransitGatewayVpcAttachmentResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<RejectTransitGatewayVpcAttachmentResult> {
  const RejectTransitGatewayVpcAttachmentResultEc2QuerySerializer()
      : super('RejectTransitGatewayVpcAttachmentResult');

  @override
  Iterable<Type> get types => const [
        RejectTransitGatewayVpcAttachmentResult,
        _$RejectTransitGatewayVpcAttachmentResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RejectTransitGatewayVpcAttachmentResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RejectTransitGatewayVpcAttachmentResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayVpcAttachment':
          result.transitGatewayVpcAttachment.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayVpcAttachment),
          ) as TransitGatewayVpcAttachment));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RejectTransitGatewayVpcAttachmentResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RejectTransitGatewayVpcAttachmentResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RejectTransitGatewayVpcAttachmentResult(
      :transitGatewayVpcAttachment
    ) = object;
    if (transitGatewayVpcAttachment != null) {
      result$
        ..add(const _i2.XmlElementName('TransitGatewayVpcAttachment'))
        ..add(serializers.serialize(
          transitGatewayVpcAttachment,
          specifiedType: const FullType(TransitGatewayVpcAttachment),
        ));
    }
    return result$;
  }
}
