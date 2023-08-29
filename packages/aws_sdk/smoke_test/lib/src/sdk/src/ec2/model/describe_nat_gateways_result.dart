// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_nat_gateways_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/nat_gateway.dart';

part 'describe_nat_gateways_result.g.dart';

abstract class DescribeNatGatewaysResult
    with _i1.AWSEquatable<DescribeNatGatewaysResult>
    implements
        Built<DescribeNatGatewaysResult, DescribeNatGatewaysResultBuilder> {
  factory DescribeNatGatewaysResult({
    List<NatGateway>? natGateways,
    String? nextToken,
  }) {
    return _$DescribeNatGatewaysResult._(
      natGateways: natGateways == null ? null : _i2.BuiltList(natGateways),
      nextToken: nextToken,
    );
  }

  factory DescribeNatGatewaysResult.build(
          [void Function(DescribeNatGatewaysResultBuilder) updates]) =
      _$DescribeNatGatewaysResult;

  const DescribeNatGatewaysResult._();

  /// Constructs a [DescribeNatGatewaysResult] from a [payload] and [response].
  factory DescribeNatGatewaysResult.fromResponse(
    DescribeNatGatewaysResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeNatGatewaysResult>>
      serializers = [DescribeNatGatewaysResultEc2QuerySerializer()];

  /// Information about the NAT gateways.
  _i2.BuiltList<NatGateway>? get natGateways;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        natGateways,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeNatGatewaysResult')
      ..add(
        'natGateways',
        natGateways,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeNatGatewaysResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeNatGatewaysResult> {
  const DescribeNatGatewaysResultEc2QuerySerializer()
      : super('DescribeNatGatewaysResult');

  @override
  Iterable<Type> get types => const [
        DescribeNatGatewaysResult,
        _$DescribeNatGatewaysResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNatGatewaysResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNatGatewaysResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'natGatewaySet':
          result.natGateways.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(NatGateway)],
            ),
          ) as _i2.BuiltList<NatGateway>));
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
    DescribeNatGatewaysResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeNatGatewaysResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeNatGatewaysResult(:natGateways, :nextToken) = object;
    if (natGateways != null) {
      result$
        ..add(const _i3.XmlElementName('NatGatewaySet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          natGateways,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(NatGateway)],
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
