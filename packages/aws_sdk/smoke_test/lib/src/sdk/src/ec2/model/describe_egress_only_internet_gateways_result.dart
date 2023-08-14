// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_egress_only_internet_gateways_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/egress_only_internet_gateway.dart';

part 'describe_egress_only_internet_gateways_result.g.dart';

abstract class DescribeEgressOnlyInternetGatewaysResult
    with
        _i1.AWSEquatable<DescribeEgressOnlyInternetGatewaysResult>
    implements
        Built<DescribeEgressOnlyInternetGatewaysResult,
            DescribeEgressOnlyInternetGatewaysResultBuilder> {
  factory DescribeEgressOnlyInternetGatewaysResult({
    List<EgressOnlyInternetGateway>? egressOnlyInternetGateways,
    String? nextToken,
  }) {
    return _$DescribeEgressOnlyInternetGatewaysResult._(
      egressOnlyInternetGateways: egressOnlyInternetGateways == null
          ? null
          : _i2.BuiltList(egressOnlyInternetGateways),
      nextToken: nextToken,
    );
  }

  factory DescribeEgressOnlyInternetGatewaysResult.build(
      [void Function(DescribeEgressOnlyInternetGatewaysResultBuilder)
          updates]) = _$DescribeEgressOnlyInternetGatewaysResult;

  const DescribeEgressOnlyInternetGatewaysResult._();

  /// Constructs a [DescribeEgressOnlyInternetGatewaysResult] from a [payload] and [response].
  factory DescribeEgressOnlyInternetGatewaysResult.fromResponse(
    DescribeEgressOnlyInternetGatewaysResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeEgressOnlyInternetGatewaysResult>>
      serializers = [
    DescribeEgressOnlyInternetGatewaysResultEc2QuerySerializer()
  ];

  /// Information about the egress-only internet gateways.
  _i2.BuiltList<EgressOnlyInternetGateway>? get egressOnlyInternetGateways;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        egressOnlyInternetGateways,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeEgressOnlyInternetGatewaysResult')
          ..add(
            'egressOnlyInternetGateways',
            egressOnlyInternetGateways,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeEgressOnlyInternetGatewaysResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeEgressOnlyInternetGatewaysResult> {
  const DescribeEgressOnlyInternetGatewaysResultEc2QuerySerializer()
      : super('DescribeEgressOnlyInternetGatewaysResult');

  @override
  Iterable<Type> get types => const [
        DescribeEgressOnlyInternetGatewaysResult,
        _$DescribeEgressOnlyInternetGatewaysResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeEgressOnlyInternetGatewaysResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeEgressOnlyInternetGatewaysResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'egressOnlyInternetGatewaySet':
          result.egressOnlyInternetGateways
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(EgressOnlyInternetGateway)],
            ),
          ) as _i2.BuiltList<EgressOnlyInternetGateway>));
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
    DescribeEgressOnlyInternetGatewaysResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeEgressOnlyInternetGatewaysResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeEgressOnlyInternetGatewaysResult(
      :egressOnlyInternetGateways,
      :nextToken
    ) = object;
    if (egressOnlyInternetGateways != null) {
      result$
        ..add(const _i3.XmlElementName('EgressOnlyInternetGatewaySet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          egressOnlyInternetGateways,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(EgressOnlyInternetGateway)],
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
