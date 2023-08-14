// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_internet_gateways_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/internet_gateway.dart';

part 'describe_internet_gateways_result.g.dart';

abstract class DescribeInternetGatewaysResult
    with
        _i1.AWSEquatable<DescribeInternetGatewaysResult>
    implements
        Built<DescribeInternetGatewaysResult,
            DescribeInternetGatewaysResultBuilder> {
  factory DescribeInternetGatewaysResult({
    List<InternetGateway>? internetGateways,
    String? nextToken,
  }) {
    return _$DescribeInternetGatewaysResult._(
      internetGateways:
          internetGateways == null ? null : _i2.BuiltList(internetGateways),
      nextToken: nextToken,
    );
  }

  factory DescribeInternetGatewaysResult.build(
          [void Function(DescribeInternetGatewaysResultBuilder) updates]) =
      _$DescribeInternetGatewaysResult;

  const DescribeInternetGatewaysResult._();

  /// Constructs a [DescribeInternetGatewaysResult] from a [payload] and [response].
  factory DescribeInternetGatewaysResult.fromResponse(
    DescribeInternetGatewaysResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeInternetGatewaysResult>>
      serializers = [DescribeInternetGatewaysResultEc2QuerySerializer()];

  /// Information about one or more internet gateways.
  _i2.BuiltList<InternetGateway>? get internetGateways;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        internetGateways,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeInternetGatewaysResult')
      ..add(
        'internetGateways',
        internetGateways,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeInternetGatewaysResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeInternetGatewaysResult> {
  const DescribeInternetGatewaysResultEc2QuerySerializer()
      : super('DescribeInternetGatewaysResult');

  @override
  Iterable<Type> get types => const [
        DescribeInternetGatewaysResult,
        _$DescribeInternetGatewaysResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInternetGatewaysResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInternetGatewaysResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'internetGatewaySet':
          result.internetGateways.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InternetGateway)],
            ),
          ) as _i2.BuiltList<InternetGateway>));
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
    DescribeInternetGatewaysResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeInternetGatewaysResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeInternetGatewaysResult(:internetGateways, :nextToken) =
        object;
    if (internetGateways != null) {
      result$
        ..add(const _i3.XmlElementName('InternetGatewaySet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          internetGateways,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(InternetGateway)],
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
