// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reject_transit_gateway_peering_attachment_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_peering_attachment.dart';

part 'reject_transit_gateway_peering_attachment_result.g.dart';

abstract class RejectTransitGatewayPeeringAttachmentResult
    with
        _i1.AWSEquatable<RejectTransitGatewayPeeringAttachmentResult>
    implements
        Built<RejectTransitGatewayPeeringAttachmentResult,
            RejectTransitGatewayPeeringAttachmentResultBuilder> {
  factory RejectTransitGatewayPeeringAttachmentResult(
      {TransitGatewayPeeringAttachment? transitGatewayPeeringAttachment}) {
    return _$RejectTransitGatewayPeeringAttachmentResult._(
        transitGatewayPeeringAttachment: transitGatewayPeeringAttachment);
  }

  factory RejectTransitGatewayPeeringAttachmentResult.build(
      [void Function(RejectTransitGatewayPeeringAttachmentResultBuilder)
          updates]) = _$RejectTransitGatewayPeeringAttachmentResult;

  const RejectTransitGatewayPeeringAttachmentResult._();

  /// Constructs a [RejectTransitGatewayPeeringAttachmentResult] from a [payload] and [response].
  factory RejectTransitGatewayPeeringAttachmentResult.fromResponse(
    RejectTransitGatewayPeeringAttachmentResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<RejectTransitGatewayPeeringAttachmentResult>>
      serializers = [
    RejectTransitGatewayPeeringAttachmentResultEc2QuerySerializer()
  ];

  /// The transit gateway peering attachment.
  TransitGatewayPeeringAttachment? get transitGatewayPeeringAttachment;
  @override
  List<Object?> get props => [transitGatewayPeeringAttachment];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'RejectTransitGatewayPeeringAttachmentResult')
      ..add(
        'transitGatewayPeeringAttachment',
        transitGatewayPeeringAttachment,
      );
    return helper.toString();
  }
}

class RejectTransitGatewayPeeringAttachmentResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<RejectTransitGatewayPeeringAttachmentResult> {
  const RejectTransitGatewayPeeringAttachmentResultEc2QuerySerializer()
      : super('RejectTransitGatewayPeeringAttachmentResult');

  @override
  Iterable<Type> get types => const [
        RejectTransitGatewayPeeringAttachmentResult,
        _$RejectTransitGatewayPeeringAttachmentResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RejectTransitGatewayPeeringAttachmentResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RejectTransitGatewayPeeringAttachmentResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayPeeringAttachment':
          result.transitGatewayPeeringAttachment
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayPeeringAttachment),
          ) as TransitGatewayPeeringAttachment));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RejectTransitGatewayPeeringAttachmentResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RejectTransitGatewayPeeringAttachmentResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RejectTransitGatewayPeeringAttachmentResult(
      :transitGatewayPeeringAttachment
    ) = object;
    if (transitGatewayPeeringAttachment != null) {
      result$
        ..add(const _i2.XmlElementName('TransitGatewayPeeringAttachment'))
        ..add(serializers.serialize(
          transitGatewayPeeringAttachment,
          specifiedType: const FullType(TransitGatewayPeeringAttachment),
        ));
    }
    return result$;
  }
}
