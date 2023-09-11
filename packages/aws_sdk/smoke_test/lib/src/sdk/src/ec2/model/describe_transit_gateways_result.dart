// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_transit_gateways_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway.dart';

part 'describe_transit_gateways_result.g.dart';

abstract class DescribeTransitGatewaysResult
    with
        _i1.AWSEquatable<DescribeTransitGatewaysResult>
    implements
        Built<DescribeTransitGatewaysResult,
            DescribeTransitGatewaysResultBuilder> {
  factory DescribeTransitGatewaysResult({
    List<TransitGateway>? transitGateways,
    String? nextToken,
  }) {
    return _$DescribeTransitGatewaysResult._(
      transitGateways:
          transitGateways == null ? null : _i2.BuiltList(transitGateways),
      nextToken: nextToken,
    );
  }

  factory DescribeTransitGatewaysResult.build(
          [void Function(DescribeTransitGatewaysResultBuilder) updates]) =
      _$DescribeTransitGatewaysResult;

  const DescribeTransitGatewaysResult._();

  /// Constructs a [DescribeTransitGatewaysResult] from a [payload] and [response].
  factory DescribeTransitGatewaysResult.fromResponse(
    DescribeTransitGatewaysResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeTransitGatewaysResult>>
      serializers = [DescribeTransitGatewaysResultEc2QuerySerializer()];

  /// Information about the transit gateways.
  _i2.BuiltList<TransitGateway>? get transitGateways;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGateways,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeTransitGatewaysResult')
      ..add(
        'transitGateways',
        transitGateways,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeTransitGatewaysResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeTransitGatewaysResult> {
  const DescribeTransitGatewaysResultEc2QuerySerializer()
      : super('DescribeTransitGatewaysResult');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewaysResult,
        _$DescribeTransitGatewaysResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewaysResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewaysResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewaySet':
          result.transitGateways.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TransitGateway)],
            ),
          ) as _i2.BuiltList<TransitGateway>));
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
    DescribeTransitGatewaysResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeTransitGatewaysResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeTransitGatewaysResult(:transitGateways, :nextToken) = object;
    if (transitGateways != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewaySet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          transitGateways,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(TransitGateway)],
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
