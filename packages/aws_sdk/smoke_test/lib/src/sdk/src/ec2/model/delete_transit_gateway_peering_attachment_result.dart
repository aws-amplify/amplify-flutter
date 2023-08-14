// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_transit_gateway_peering_attachment_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_peering_attachment.dart';

part 'delete_transit_gateway_peering_attachment_result.g.dart';

abstract class DeleteTransitGatewayPeeringAttachmentResult
    with
        _i1.AWSEquatable<DeleteTransitGatewayPeeringAttachmentResult>
    implements
        Built<DeleteTransitGatewayPeeringAttachmentResult,
            DeleteTransitGatewayPeeringAttachmentResultBuilder> {
  factory DeleteTransitGatewayPeeringAttachmentResult(
      {TransitGatewayPeeringAttachment? transitGatewayPeeringAttachment}) {
    return _$DeleteTransitGatewayPeeringAttachmentResult._(
        transitGatewayPeeringAttachment: transitGatewayPeeringAttachment);
  }

  factory DeleteTransitGatewayPeeringAttachmentResult.build(
      [void Function(DeleteTransitGatewayPeeringAttachmentResultBuilder)
          updates]) = _$DeleteTransitGatewayPeeringAttachmentResult;

  const DeleteTransitGatewayPeeringAttachmentResult._();

  /// Constructs a [DeleteTransitGatewayPeeringAttachmentResult] from a [payload] and [response].
  factory DeleteTransitGatewayPeeringAttachmentResult.fromResponse(
    DeleteTransitGatewayPeeringAttachmentResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<DeleteTransitGatewayPeeringAttachmentResult>>
      serializers = [
    DeleteTransitGatewayPeeringAttachmentResultEc2QuerySerializer()
  ];

  /// The transit gateway peering attachment.
  TransitGatewayPeeringAttachment? get transitGatewayPeeringAttachment;
  @override
  List<Object?> get props => [transitGatewayPeeringAttachment];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteTransitGatewayPeeringAttachmentResult')
      ..add(
        'transitGatewayPeeringAttachment',
        transitGatewayPeeringAttachment,
      );
    return helper.toString();
  }
}

class DeleteTransitGatewayPeeringAttachmentResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DeleteTransitGatewayPeeringAttachmentResult> {
  const DeleteTransitGatewayPeeringAttachmentResultEc2QuerySerializer()
      : super('DeleteTransitGatewayPeeringAttachmentResult');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayPeeringAttachmentResult,
        _$DeleteTransitGatewayPeeringAttachmentResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayPeeringAttachmentResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayPeeringAttachmentResultBuilder();
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
    DeleteTransitGatewayPeeringAttachmentResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteTransitGatewayPeeringAttachmentResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteTransitGatewayPeeringAttachmentResult(
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
