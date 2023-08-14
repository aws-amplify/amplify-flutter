// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_transit_gateway_vpc_attachments_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_vpc_attachment.dart';

part 'describe_transit_gateway_vpc_attachments_result.g.dart';

abstract class DescribeTransitGatewayVpcAttachmentsResult
    with
        _i1.AWSEquatable<DescribeTransitGatewayVpcAttachmentsResult>
    implements
        Built<DescribeTransitGatewayVpcAttachmentsResult,
            DescribeTransitGatewayVpcAttachmentsResultBuilder> {
  factory DescribeTransitGatewayVpcAttachmentsResult({
    List<TransitGatewayVpcAttachment>? transitGatewayVpcAttachments,
    String? nextToken,
  }) {
    return _$DescribeTransitGatewayVpcAttachmentsResult._(
      transitGatewayVpcAttachments: transitGatewayVpcAttachments == null
          ? null
          : _i2.BuiltList(transitGatewayVpcAttachments),
      nextToken: nextToken,
    );
  }

  factory DescribeTransitGatewayVpcAttachmentsResult.build(
      [void Function(DescribeTransitGatewayVpcAttachmentsResultBuilder)
          updates]) = _$DescribeTransitGatewayVpcAttachmentsResult;

  const DescribeTransitGatewayVpcAttachmentsResult._();

  /// Constructs a [DescribeTransitGatewayVpcAttachmentsResult] from a [payload] and [response].
  factory DescribeTransitGatewayVpcAttachmentsResult.fromResponse(
    DescribeTransitGatewayVpcAttachmentsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeTransitGatewayVpcAttachmentsResult>>
      serializers = [
    DescribeTransitGatewayVpcAttachmentsResultEc2QuerySerializer()
  ];

  /// Information about the VPC attachments.
  _i2.BuiltList<TransitGatewayVpcAttachment>? get transitGatewayVpcAttachments;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayVpcAttachments,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeTransitGatewayVpcAttachmentsResult')
      ..add(
        'transitGatewayVpcAttachments',
        transitGatewayVpcAttachments,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeTransitGatewayVpcAttachmentsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeTransitGatewayVpcAttachmentsResult> {
  const DescribeTransitGatewayVpcAttachmentsResultEc2QuerySerializer()
      : super('DescribeTransitGatewayVpcAttachmentsResult');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewayVpcAttachmentsResult,
        _$DescribeTransitGatewayVpcAttachmentsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewayVpcAttachmentsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewayVpcAttachmentsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayVpcAttachments':
          result.transitGatewayVpcAttachments
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TransitGatewayVpcAttachment)],
            ),
          ) as _i2.BuiltList<TransitGatewayVpcAttachment>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
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
    DescribeTransitGatewayVpcAttachmentsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeTransitGatewayVpcAttachmentsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeTransitGatewayVpcAttachmentsResult(
      :transitGatewayVpcAttachments,
      :nextToken
    ) = object;
    if (transitGatewayVpcAttachments != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayVpcAttachments'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          transitGatewayVpcAttachments,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(TransitGatewayVpcAttachment)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
