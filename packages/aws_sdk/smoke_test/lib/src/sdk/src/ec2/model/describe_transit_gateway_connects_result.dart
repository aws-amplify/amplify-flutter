// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_transit_gateway_connects_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect.dart';

part 'describe_transit_gateway_connects_result.g.dart';

abstract class DescribeTransitGatewayConnectsResult
    with
        _i1.AWSEquatable<DescribeTransitGatewayConnectsResult>
    implements
        Built<DescribeTransitGatewayConnectsResult,
            DescribeTransitGatewayConnectsResultBuilder> {
  factory DescribeTransitGatewayConnectsResult({
    List<TransitGatewayConnect>? transitGatewayConnects,
    String? nextToken,
  }) {
    return _$DescribeTransitGatewayConnectsResult._(
      transitGatewayConnects: transitGatewayConnects == null
          ? null
          : _i2.BuiltList(transitGatewayConnects),
      nextToken: nextToken,
    );
  }

  factory DescribeTransitGatewayConnectsResult.build(
      [void Function(DescribeTransitGatewayConnectsResultBuilder)
          updates]) = _$DescribeTransitGatewayConnectsResult;

  const DescribeTransitGatewayConnectsResult._();

  /// Constructs a [DescribeTransitGatewayConnectsResult] from a [payload] and [response].
  factory DescribeTransitGatewayConnectsResult.fromResponse(
    DescribeTransitGatewayConnectsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeTransitGatewayConnectsResult>>
      serializers = [DescribeTransitGatewayConnectsResultEc2QuerySerializer()];

  /// Information about the Connect attachments.
  _i2.BuiltList<TransitGatewayConnect>? get transitGatewayConnects;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayConnects,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTransitGatewayConnectsResult')
          ..add(
            'transitGatewayConnects',
            transitGatewayConnects,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeTransitGatewayConnectsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeTransitGatewayConnectsResult> {
  const DescribeTransitGatewayConnectsResultEc2QuerySerializer()
      : super('DescribeTransitGatewayConnectsResult');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewayConnectsResult,
        _$DescribeTransitGatewayConnectsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewayConnectsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewayConnectsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayConnectSet':
          result.transitGatewayConnects
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TransitGatewayConnect)],
            ),
          ) as _i2.BuiltList<TransitGatewayConnect>));
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
    DescribeTransitGatewayConnectsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeTransitGatewayConnectsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeTransitGatewayConnectsResult(
      :transitGatewayConnects,
      :nextToken
    ) = object;
    if (transitGatewayConnects != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayConnectSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          transitGatewayConnects,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(TransitGatewayConnect)],
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
