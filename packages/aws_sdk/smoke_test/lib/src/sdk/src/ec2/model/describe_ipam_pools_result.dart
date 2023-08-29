// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_ipam_pools_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool.dart';

part 'describe_ipam_pools_result.g.dart';

abstract class DescribeIpamPoolsResult
    with _i1.AWSEquatable<DescribeIpamPoolsResult>
    implements Built<DescribeIpamPoolsResult, DescribeIpamPoolsResultBuilder> {
  factory DescribeIpamPoolsResult({
    String? nextToken,
    List<IpamPool>? ipamPools,
  }) {
    return _$DescribeIpamPoolsResult._(
      nextToken: nextToken,
      ipamPools: ipamPools == null ? null : _i2.BuiltList(ipamPools),
    );
  }

  factory DescribeIpamPoolsResult.build(
          [void Function(DescribeIpamPoolsResultBuilder) updates]) =
      _$DescribeIpamPoolsResult;

  const DescribeIpamPoolsResult._();

  /// Constructs a [DescribeIpamPoolsResult] from a [payload] and [response].
  factory DescribeIpamPoolsResult.fromResponse(
    DescribeIpamPoolsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeIpamPoolsResult>> serializers =
      [DescribeIpamPoolsResultEc2QuerySerializer()];

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// Information about the IPAM pools.
  _i2.BuiltList<IpamPool>? get ipamPools;
  @override
  List<Object?> get props => [
        nextToken,
        ipamPools,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeIpamPoolsResult')
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'ipamPools',
        ipamPools,
      );
    return helper.toString();
  }
}

class DescribeIpamPoolsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeIpamPoolsResult> {
  const DescribeIpamPoolsResultEc2QuerySerializer()
      : super('DescribeIpamPoolsResult');

  @override
  Iterable<Type> get types => const [
        DescribeIpamPoolsResult,
        _$DescribeIpamPoolsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIpamPoolsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIpamPoolsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamPoolSet':
          result.ipamPools.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IpamPool)],
            ),
          ) as _i2.BuiltList<IpamPool>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeIpamPoolsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeIpamPoolsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeIpamPoolsResult(:nextToken, :ipamPools) = object;
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamPools != null) {
      result$
        ..add(const _i3.XmlElementName('IpamPoolSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipamPools,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(IpamPool)],
          ),
        ));
    }
    return result$;
  }
}
