// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_subnets_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet.dart';

part 'describe_subnets_result.g.dart';

abstract class DescribeSubnetsResult
    with _i1.AWSEquatable<DescribeSubnetsResult>
    implements Built<DescribeSubnetsResult, DescribeSubnetsResultBuilder> {
  factory DescribeSubnetsResult({
    List<Subnet>? subnets,
    String? nextToken,
  }) {
    return _$DescribeSubnetsResult._(
      subnets: subnets == null ? null : _i2.BuiltList(subnets),
      nextToken: nextToken,
    );
  }

  factory DescribeSubnetsResult.build(
          [void Function(DescribeSubnetsResultBuilder) updates]) =
      _$DescribeSubnetsResult;

  const DescribeSubnetsResult._();

  /// Constructs a [DescribeSubnetsResult] from a [payload] and [response].
  factory DescribeSubnetsResult.fromResponse(
    DescribeSubnetsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeSubnetsResult>> serializers = [
    DescribeSubnetsResultEc2QuerySerializer()
  ];

  /// Information about one or more subnets.
  _i2.BuiltList<Subnet>? get subnets;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        subnets,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeSubnetsResult')
      ..add(
        'subnets',
        subnets,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeSubnetsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeSubnetsResult> {
  const DescribeSubnetsResultEc2QuerySerializer()
      : super('DescribeSubnetsResult');

  @override
  Iterable<Type> get types => const [
        DescribeSubnetsResult,
        _$DescribeSubnetsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSubnetsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSubnetsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'subnetSet':
          result.subnets.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Subnet)],
            ),
          ) as _i2.BuiltList<Subnet>));
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
    DescribeSubnetsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeSubnetsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeSubnetsResult(:subnets, :nextToken) = object;
    if (subnets != null) {
      result$
        ..add(const _i3.XmlElementName('SubnetSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          subnets,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Subnet)],
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
