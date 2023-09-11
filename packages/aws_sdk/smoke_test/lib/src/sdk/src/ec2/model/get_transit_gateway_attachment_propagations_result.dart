// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_transit_gateway_attachment_propagations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_propagation.dart';

part 'get_transit_gateway_attachment_propagations_result.g.dart';

abstract class GetTransitGatewayAttachmentPropagationsResult
    with
        _i1.AWSEquatable<GetTransitGatewayAttachmentPropagationsResult>
    implements
        Built<GetTransitGatewayAttachmentPropagationsResult,
            GetTransitGatewayAttachmentPropagationsResultBuilder> {
  factory GetTransitGatewayAttachmentPropagationsResult({
    List<TransitGatewayAttachmentPropagation>?
        transitGatewayAttachmentPropagations,
    String? nextToken,
  }) {
    return _$GetTransitGatewayAttachmentPropagationsResult._(
      transitGatewayAttachmentPropagations:
          transitGatewayAttachmentPropagations == null
              ? null
              : _i2.BuiltList(transitGatewayAttachmentPropagations),
      nextToken: nextToken,
    );
  }

  factory GetTransitGatewayAttachmentPropagationsResult.build(
      [void Function(GetTransitGatewayAttachmentPropagationsResultBuilder)
          updates]) = _$GetTransitGatewayAttachmentPropagationsResult;

  const GetTransitGatewayAttachmentPropagationsResult._();

  /// Constructs a [GetTransitGatewayAttachmentPropagationsResult] from a [payload] and [response].
  factory GetTransitGatewayAttachmentPropagationsResult.fromResponse(
    GetTransitGatewayAttachmentPropagationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<GetTransitGatewayAttachmentPropagationsResult>>
      serializers = [
    GetTransitGatewayAttachmentPropagationsResultEc2QuerySerializer()
  ];

  /// Information about the propagation route tables.
  _i2.BuiltList<TransitGatewayAttachmentPropagation>?
      get transitGatewayAttachmentPropagations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentPropagations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetTransitGatewayAttachmentPropagationsResult')
      ..add(
        'transitGatewayAttachmentPropagations',
        transitGatewayAttachmentPropagations,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class GetTransitGatewayAttachmentPropagationsResultEc2QuerySerializer
    extends _i3
    .StructuredSmithySerializer<GetTransitGatewayAttachmentPropagationsResult> {
  const GetTransitGatewayAttachmentPropagationsResultEc2QuerySerializer()
      : super('GetTransitGatewayAttachmentPropagationsResult');

  @override
  Iterable<Type> get types => const [
        GetTransitGatewayAttachmentPropagationsResult,
        _$GetTransitGatewayAttachmentPropagationsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetTransitGatewayAttachmentPropagationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTransitGatewayAttachmentPropagationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayAttachmentPropagations':
          result.transitGatewayAttachmentPropagations
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TransitGatewayAttachmentPropagation)],
            ),
          ) as _i2.BuiltList<TransitGatewayAttachmentPropagation>));
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
    GetTransitGatewayAttachmentPropagationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetTransitGatewayAttachmentPropagationsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetTransitGatewayAttachmentPropagationsResult(
      :transitGatewayAttachmentPropagations,
      :nextToken
    ) = object;
    if (transitGatewayAttachmentPropagations != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayAttachmentPropagations'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          transitGatewayAttachmentPropagations,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(TransitGatewayAttachmentPropagation)],
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
