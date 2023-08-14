// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_byoip_cidrs_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/byoip_cidr.dart';

part 'describe_byoip_cidrs_result.g.dart';

abstract class DescribeByoipCidrsResult
    with _i1.AWSEquatable<DescribeByoipCidrsResult>
    implements
        Built<DescribeByoipCidrsResult, DescribeByoipCidrsResultBuilder> {
  factory DescribeByoipCidrsResult({
    List<ByoipCidr>? byoipCidrs,
    String? nextToken,
  }) {
    return _$DescribeByoipCidrsResult._(
      byoipCidrs: byoipCidrs == null ? null : _i2.BuiltList(byoipCidrs),
      nextToken: nextToken,
    );
  }

  factory DescribeByoipCidrsResult.build(
          [void Function(DescribeByoipCidrsResultBuilder) updates]) =
      _$DescribeByoipCidrsResult;

  const DescribeByoipCidrsResult._();

  /// Constructs a [DescribeByoipCidrsResult] from a [payload] and [response].
  factory DescribeByoipCidrsResult.fromResponse(
    DescribeByoipCidrsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeByoipCidrsResult>>
      serializers = [DescribeByoipCidrsResultEc2QuerySerializer()];

  /// Information about your address ranges.
  _i2.BuiltList<ByoipCidr>? get byoipCidrs;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        byoipCidrs,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeByoipCidrsResult')
      ..add(
        'byoipCidrs',
        byoipCidrs,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeByoipCidrsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeByoipCidrsResult> {
  const DescribeByoipCidrsResultEc2QuerySerializer()
      : super('DescribeByoipCidrsResult');

  @override
  Iterable<Type> get types => const [
        DescribeByoipCidrsResult,
        _$DescribeByoipCidrsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeByoipCidrsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeByoipCidrsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'byoipCidrSet':
          result.byoipCidrs.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ByoipCidr)],
            ),
          ) as _i2.BuiltList<ByoipCidr>));
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
    DescribeByoipCidrsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeByoipCidrsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeByoipCidrsResult(:byoipCidrs, :nextToken) = object;
    if (byoipCidrs != null) {
      result$
        ..add(const _i3.XmlElementName('ByoipCidrSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          byoipCidrs,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(ByoipCidr)],
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
