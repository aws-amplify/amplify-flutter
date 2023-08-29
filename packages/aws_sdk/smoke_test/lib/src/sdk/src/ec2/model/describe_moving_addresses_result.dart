// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_moving_addresses_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/moving_address_status.dart';

part 'describe_moving_addresses_result.g.dart';

abstract class DescribeMovingAddressesResult
    with
        _i1.AWSEquatable<DescribeMovingAddressesResult>
    implements
        Built<DescribeMovingAddressesResult,
            DescribeMovingAddressesResultBuilder> {
  factory DescribeMovingAddressesResult({
    List<MovingAddressStatus>? movingAddressStatuses,
    String? nextToken,
  }) {
    return _$DescribeMovingAddressesResult._(
      movingAddressStatuses: movingAddressStatuses == null
          ? null
          : _i2.BuiltList(movingAddressStatuses),
      nextToken: nextToken,
    );
  }

  factory DescribeMovingAddressesResult.build(
          [void Function(DescribeMovingAddressesResultBuilder) updates]) =
      _$DescribeMovingAddressesResult;

  const DescribeMovingAddressesResult._();

  /// Constructs a [DescribeMovingAddressesResult] from a [payload] and [response].
  factory DescribeMovingAddressesResult.fromResponse(
    DescribeMovingAddressesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeMovingAddressesResult>>
      serializers = [DescribeMovingAddressesResultEc2QuerySerializer()];

  /// The status for each Elastic IP address.
  _i2.BuiltList<MovingAddressStatus>? get movingAddressStatuses;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        movingAddressStatuses,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeMovingAddressesResult')
      ..add(
        'movingAddressStatuses',
        movingAddressStatuses,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeMovingAddressesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeMovingAddressesResult> {
  const DescribeMovingAddressesResultEc2QuerySerializer()
      : super('DescribeMovingAddressesResult');

  @override
  Iterable<Type> get types => const [
        DescribeMovingAddressesResult,
        _$DescribeMovingAddressesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeMovingAddressesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeMovingAddressesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'movingAddressStatusSet':
          result.movingAddressStatuses
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(MovingAddressStatus)],
            ),
          ) as _i2.BuiltList<MovingAddressStatus>));
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
    DescribeMovingAddressesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeMovingAddressesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeMovingAddressesResult(:movingAddressStatuses, :nextToken) =
        object;
    if (movingAddressStatuses != null) {
      result$
        ..add(const _i3.XmlElementName('MovingAddressStatusSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          movingAddressStatuses,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(MovingAddressStatus)],
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
