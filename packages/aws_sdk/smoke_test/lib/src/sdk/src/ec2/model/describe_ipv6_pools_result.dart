// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_ipv6_pools_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_pool.dart';

part 'describe_ipv6_pools_result.g.dart';

abstract class DescribeIpv6PoolsResult
    with _i1.AWSEquatable<DescribeIpv6PoolsResult>
    implements Built<DescribeIpv6PoolsResult, DescribeIpv6PoolsResultBuilder> {
  factory DescribeIpv6PoolsResult({
    List<Ipv6Pool>? ipv6Pools,
    String? nextToken,
  }) {
    return _$DescribeIpv6PoolsResult._(
      ipv6Pools: ipv6Pools == null ? null : _i2.BuiltList(ipv6Pools),
      nextToken: nextToken,
    );
  }

  factory DescribeIpv6PoolsResult.build(
          [void Function(DescribeIpv6PoolsResultBuilder) updates]) =
      _$DescribeIpv6PoolsResult;

  const DescribeIpv6PoolsResult._();

  /// Constructs a [DescribeIpv6PoolsResult] from a [payload] and [response].
  factory DescribeIpv6PoolsResult.fromResponse(
    DescribeIpv6PoolsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeIpv6PoolsResult>> serializers =
      [DescribeIpv6PoolsResultEc2QuerySerializer()];

  /// Information about the IPv6 address pools.
  _i2.BuiltList<Ipv6Pool>? get ipv6Pools;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        ipv6Pools,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeIpv6PoolsResult')
      ..add(
        'ipv6Pools',
        ipv6Pools,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeIpv6PoolsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeIpv6PoolsResult> {
  const DescribeIpv6PoolsResultEc2QuerySerializer()
      : super('DescribeIpv6PoolsResult');

  @override
  Iterable<Type> get types => const [
        DescribeIpv6PoolsResult,
        _$DescribeIpv6PoolsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIpv6PoolsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIpv6PoolsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipv6PoolSet':
          result.ipv6Pools.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Ipv6Pool)],
            ),
          ) as _i2.BuiltList<Ipv6Pool>));
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
    DescribeIpv6PoolsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeIpv6PoolsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeIpv6PoolsResult(:ipv6Pools, :nextToken) = object;
    if (ipv6Pools != null) {
      result$
        ..add(const _i3.XmlElementName('Ipv6PoolSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv6Pools,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Ipv6Pool)],
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
