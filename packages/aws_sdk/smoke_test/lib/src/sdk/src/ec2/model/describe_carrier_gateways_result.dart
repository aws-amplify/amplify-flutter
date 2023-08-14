// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_carrier_gateways_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/carrier_gateway.dart';

part 'describe_carrier_gateways_result.g.dart';

abstract class DescribeCarrierGatewaysResult
    with
        _i1.AWSEquatable<DescribeCarrierGatewaysResult>
    implements
        Built<DescribeCarrierGatewaysResult,
            DescribeCarrierGatewaysResultBuilder> {
  factory DescribeCarrierGatewaysResult({
    List<CarrierGateway>? carrierGateways,
    String? nextToken,
  }) {
    return _$DescribeCarrierGatewaysResult._(
      carrierGateways:
          carrierGateways == null ? null : _i2.BuiltList(carrierGateways),
      nextToken: nextToken,
    );
  }

  factory DescribeCarrierGatewaysResult.build(
          [void Function(DescribeCarrierGatewaysResultBuilder) updates]) =
      _$DescribeCarrierGatewaysResult;

  const DescribeCarrierGatewaysResult._();

  /// Constructs a [DescribeCarrierGatewaysResult] from a [payload] and [response].
  factory DescribeCarrierGatewaysResult.fromResponse(
    DescribeCarrierGatewaysResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeCarrierGatewaysResult>>
      serializers = [DescribeCarrierGatewaysResultEc2QuerySerializer()];

  /// Information about the carrier gateway.
  _i2.BuiltList<CarrierGateway>? get carrierGateways;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        carrierGateways,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeCarrierGatewaysResult')
      ..add(
        'carrierGateways',
        carrierGateways,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeCarrierGatewaysResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeCarrierGatewaysResult> {
  const DescribeCarrierGatewaysResultEc2QuerySerializer()
      : super('DescribeCarrierGatewaysResult');

  @override
  Iterable<Type> get types => const [
        DescribeCarrierGatewaysResult,
        _$DescribeCarrierGatewaysResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeCarrierGatewaysResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeCarrierGatewaysResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'carrierGatewaySet':
          result.carrierGateways.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(CarrierGateway)],
            ),
          ) as _i2.BuiltList<CarrierGateway>));
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
    DescribeCarrierGatewaysResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeCarrierGatewaysResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeCarrierGatewaysResult(:carrierGateways, :nextToken) = object;
    if (carrierGateways != null) {
      result$
        ..add(const _i3.XmlElementName('CarrierGatewaySet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          carrierGateways,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(CarrierGateway)],
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
