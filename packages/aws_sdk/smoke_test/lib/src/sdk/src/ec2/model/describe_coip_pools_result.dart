// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_coip_pools_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/coip_pool.dart';

part 'describe_coip_pools_result.g.dart';

abstract class DescribeCoipPoolsResult
    with _i1.AWSEquatable<DescribeCoipPoolsResult>
    implements Built<DescribeCoipPoolsResult, DescribeCoipPoolsResultBuilder> {
  factory DescribeCoipPoolsResult({
    List<CoipPool>? coipPools,
    String? nextToken,
  }) {
    return _$DescribeCoipPoolsResult._(
      coipPools: coipPools == null ? null : _i2.BuiltList(coipPools),
      nextToken: nextToken,
    );
  }

  factory DescribeCoipPoolsResult.build(
          [void Function(DescribeCoipPoolsResultBuilder) updates]) =
      _$DescribeCoipPoolsResult;

  const DescribeCoipPoolsResult._();

  /// Constructs a [DescribeCoipPoolsResult] from a [payload] and [response].
  factory DescribeCoipPoolsResult.fromResponse(
    DescribeCoipPoolsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeCoipPoolsResult>> serializers =
      [DescribeCoipPoolsResultEc2QuerySerializer()];

  /// Information about the address pools.
  _i2.BuiltList<CoipPool>? get coipPools;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        coipPools,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeCoipPoolsResult')
      ..add(
        'coipPools',
        coipPools,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeCoipPoolsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeCoipPoolsResult> {
  const DescribeCoipPoolsResultEc2QuerySerializer()
      : super('DescribeCoipPoolsResult');

  @override
  Iterable<Type> get types => const [
        DescribeCoipPoolsResult,
        _$DescribeCoipPoolsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeCoipPoolsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeCoipPoolsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'coipPoolSet':
          result.coipPools.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(CoipPool)],
            ),
          ) as _i2.BuiltList<CoipPool>));
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
    DescribeCoipPoolsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeCoipPoolsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeCoipPoolsResult(:coipPools, :nextToken) = object;
    if (coipPools != null) {
      result$
        ..add(const _i3.XmlElementName('CoipPoolSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          coipPools,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(CoipPool)],
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
