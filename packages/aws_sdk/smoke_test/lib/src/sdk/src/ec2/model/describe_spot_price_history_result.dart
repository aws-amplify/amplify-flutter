// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_spot_price_history_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_price.dart';

part 'describe_spot_price_history_result.g.dart';

/// Contains the output of DescribeSpotPriceHistory.
abstract class DescribeSpotPriceHistoryResult
    with
        _i1.AWSEquatable<DescribeSpotPriceHistoryResult>
    implements
        Built<DescribeSpotPriceHistoryResult,
            DescribeSpotPriceHistoryResultBuilder> {
  /// Contains the output of DescribeSpotPriceHistory.
  factory DescribeSpotPriceHistoryResult({
    String? nextToken,
    List<SpotPrice>? spotPriceHistory,
  }) {
    return _$DescribeSpotPriceHistoryResult._(
      nextToken: nextToken,
      spotPriceHistory:
          spotPriceHistory == null ? null : _i2.BuiltList(spotPriceHistory),
    );
  }

  /// Contains the output of DescribeSpotPriceHistory.
  factory DescribeSpotPriceHistoryResult.build(
          [void Function(DescribeSpotPriceHistoryResultBuilder) updates]) =
      _$DescribeSpotPriceHistoryResult;

  const DescribeSpotPriceHistoryResult._();

  /// Constructs a [DescribeSpotPriceHistoryResult] from a [payload] and [response].
  factory DescribeSpotPriceHistoryResult.fromResponse(
    DescribeSpotPriceHistoryResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeSpotPriceHistoryResult>>
      serializers = [DescribeSpotPriceHistoryResultEc2QuerySerializer()];

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;

  /// The historical Spot prices.
  _i2.BuiltList<SpotPrice>? get spotPriceHistory;
  @override
  List<Object?> get props => [
        nextToken,
        spotPriceHistory,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeSpotPriceHistoryResult')
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'spotPriceHistory',
        spotPriceHistory,
      );
    return helper.toString();
  }
}

class DescribeSpotPriceHistoryResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeSpotPriceHistoryResult> {
  const DescribeSpotPriceHistoryResultEc2QuerySerializer()
      : super('DescribeSpotPriceHistoryResult');

  @override
  Iterable<Type> get types => const [
        DescribeSpotPriceHistoryResult,
        _$DescribeSpotPriceHistoryResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSpotPriceHistoryResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSpotPriceHistoryResultBuilder();
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
        case 'spotPriceHistorySet':
          result.spotPriceHistory.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(SpotPrice)],
            ),
          ) as _i2.BuiltList<SpotPrice>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeSpotPriceHistoryResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeSpotPriceHistoryResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeSpotPriceHistoryResult(:nextToken, :spotPriceHistory) =
        object;
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (spotPriceHistory != null) {
      result$
        ..add(const _i3.XmlElementName('SpotPriceHistorySet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          spotPriceHistory,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(SpotPrice)],
          ),
        ));
    }
    return result$;
  }
}
