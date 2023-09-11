// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_transit_gateway_attachments_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment.dart';

part 'describe_transit_gateway_attachments_result.g.dart';

abstract class DescribeTransitGatewayAttachmentsResult
    with
        _i1.AWSEquatable<DescribeTransitGatewayAttachmentsResult>
    implements
        Built<DescribeTransitGatewayAttachmentsResult,
            DescribeTransitGatewayAttachmentsResultBuilder> {
  factory DescribeTransitGatewayAttachmentsResult({
    List<TransitGatewayAttachment>? transitGatewayAttachments,
    String? nextToken,
  }) {
    return _$DescribeTransitGatewayAttachmentsResult._(
      transitGatewayAttachments: transitGatewayAttachments == null
          ? null
          : _i2.BuiltList(transitGatewayAttachments),
      nextToken: nextToken,
    );
  }

  factory DescribeTransitGatewayAttachmentsResult.build(
      [void Function(DescribeTransitGatewayAttachmentsResultBuilder)
          updates]) = _$DescribeTransitGatewayAttachmentsResult;

  const DescribeTransitGatewayAttachmentsResult._();

  /// Constructs a [DescribeTransitGatewayAttachmentsResult] from a [payload] and [response].
  factory DescribeTransitGatewayAttachmentsResult.fromResponse(
    DescribeTransitGatewayAttachmentsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeTransitGatewayAttachmentsResult>>
      serializers = [
    DescribeTransitGatewayAttachmentsResultEc2QuerySerializer()
  ];

  /// Information about the attachments.
  _i2.BuiltList<TransitGatewayAttachment>? get transitGatewayAttachments;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayAttachments,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTransitGatewayAttachmentsResult')
          ..add(
            'transitGatewayAttachments',
            transitGatewayAttachments,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeTransitGatewayAttachmentsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeTransitGatewayAttachmentsResult> {
  const DescribeTransitGatewayAttachmentsResultEc2QuerySerializer()
      : super('DescribeTransitGatewayAttachmentsResult');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewayAttachmentsResult,
        _$DescribeTransitGatewayAttachmentsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewayAttachmentsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewayAttachmentsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayAttachments':
          result.transitGatewayAttachments
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TransitGatewayAttachment)],
            ),
          ) as _i2.BuiltList<TransitGatewayAttachment>));
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
    DescribeTransitGatewayAttachmentsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeTransitGatewayAttachmentsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeTransitGatewayAttachmentsResult(
      :transitGatewayAttachments,
      :nextToken
    ) = object;
    if (transitGatewayAttachments != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayAttachments'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          transitGatewayAttachments,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(TransitGatewayAttachment)],
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
