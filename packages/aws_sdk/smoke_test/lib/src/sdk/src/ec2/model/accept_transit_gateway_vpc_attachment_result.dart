// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.accept_transit_gateway_vpc_attachment_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_vpc_attachment.dart';

part 'accept_transit_gateway_vpc_attachment_result.g.dart';

abstract class AcceptTransitGatewayVpcAttachmentResult
    with
        _i1.AWSEquatable<AcceptTransitGatewayVpcAttachmentResult>
    implements
        Built<AcceptTransitGatewayVpcAttachmentResult,
            AcceptTransitGatewayVpcAttachmentResultBuilder> {
  factory AcceptTransitGatewayVpcAttachmentResult(
      {TransitGatewayVpcAttachment? transitGatewayVpcAttachment}) {
    return _$AcceptTransitGatewayVpcAttachmentResult._(
        transitGatewayVpcAttachment: transitGatewayVpcAttachment);
  }

  factory AcceptTransitGatewayVpcAttachmentResult.build(
      [void Function(AcceptTransitGatewayVpcAttachmentResultBuilder)
          updates]) = _$AcceptTransitGatewayVpcAttachmentResult;

  const AcceptTransitGatewayVpcAttachmentResult._();

  /// Constructs a [AcceptTransitGatewayVpcAttachmentResult] from a [payload] and [response].
  factory AcceptTransitGatewayVpcAttachmentResult.fromResponse(
    AcceptTransitGatewayVpcAttachmentResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<AcceptTransitGatewayVpcAttachmentResult>>
      serializers = [
    AcceptTransitGatewayVpcAttachmentResultEc2QuerySerializer()
  ];

  /// The VPC attachment.
  TransitGatewayVpcAttachment? get transitGatewayVpcAttachment;
  @override
  List<Object?> get props => [transitGatewayVpcAttachment];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AcceptTransitGatewayVpcAttachmentResult')
          ..add(
            'transitGatewayVpcAttachment',
            transitGatewayVpcAttachment,
          );
    return helper.toString();
  }
}

class AcceptTransitGatewayVpcAttachmentResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<AcceptTransitGatewayVpcAttachmentResult> {
  const AcceptTransitGatewayVpcAttachmentResultEc2QuerySerializer()
      : super('AcceptTransitGatewayVpcAttachmentResult');

  @override
  Iterable<Type> get types => const [
        AcceptTransitGatewayVpcAttachmentResult,
        _$AcceptTransitGatewayVpcAttachmentResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AcceptTransitGatewayVpcAttachmentResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AcceptTransitGatewayVpcAttachmentResultBuilder();
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
    AcceptTransitGatewayVpcAttachmentResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AcceptTransitGatewayVpcAttachmentResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AcceptTransitGatewayVpcAttachmentResult(
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
