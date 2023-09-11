// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_public_ipv4_pools_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/public_ipv4_pool.dart';

part 'describe_public_ipv4_pools_result.g.dart';

abstract class DescribePublicIpv4PoolsResult
    with
        _i1.AWSEquatable<DescribePublicIpv4PoolsResult>
    implements
        Built<DescribePublicIpv4PoolsResult,
            DescribePublicIpv4PoolsResultBuilder> {
  factory DescribePublicIpv4PoolsResult({
    List<PublicIpv4Pool>? publicIpv4Pools,
    String? nextToken,
  }) {
    return _$DescribePublicIpv4PoolsResult._(
      publicIpv4Pools:
          publicIpv4Pools == null ? null : _i2.BuiltList(publicIpv4Pools),
      nextToken: nextToken,
    );
  }

  factory DescribePublicIpv4PoolsResult.build(
          [void Function(DescribePublicIpv4PoolsResultBuilder) updates]) =
      _$DescribePublicIpv4PoolsResult;

  const DescribePublicIpv4PoolsResult._();

  /// Constructs a [DescribePublicIpv4PoolsResult] from a [payload] and [response].
  factory DescribePublicIpv4PoolsResult.fromResponse(
    DescribePublicIpv4PoolsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribePublicIpv4PoolsResult>>
      serializers = [DescribePublicIpv4PoolsResultEc2QuerySerializer()];

  /// Information about the address pools.
  _i2.BuiltList<PublicIpv4Pool>? get publicIpv4Pools;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        publicIpv4Pools,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribePublicIpv4PoolsResult')
      ..add(
        'publicIpv4Pools',
        publicIpv4Pools,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribePublicIpv4PoolsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribePublicIpv4PoolsResult> {
  const DescribePublicIpv4PoolsResultEc2QuerySerializer()
      : super('DescribePublicIpv4PoolsResult');

  @override
  Iterable<Type> get types => const [
        DescribePublicIpv4PoolsResult,
        _$DescribePublicIpv4PoolsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribePublicIpv4PoolsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribePublicIpv4PoolsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'publicIpv4PoolSet':
          result.publicIpv4Pools.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PublicIpv4Pool)],
            ),
          ) as _i2.BuiltList<PublicIpv4Pool>));
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
    DescribePublicIpv4PoolsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribePublicIpv4PoolsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribePublicIpv4PoolsResult(:publicIpv4Pools, :nextToken) = object;
    if (publicIpv4Pools != null) {
      result$
        ..add(const _i3.XmlElementName('PublicIpv4PoolSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          publicIpv4Pools,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(PublicIpv4Pool)],
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
