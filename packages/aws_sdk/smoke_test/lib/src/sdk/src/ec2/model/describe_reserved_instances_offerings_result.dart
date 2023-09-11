// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_reserved_instances_offerings_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_offering.dart';

part 'describe_reserved_instances_offerings_result.g.dart';

/// Contains the output of DescribeReservedInstancesOfferings.
abstract class DescribeReservedInstancesOfferingsResult
    with
        _i1.AWSEquatable<DescribeReservedInstancesOfferingsResult>
    implements
        Built<DescribeReservedInstancesOfferingsResult,
            DescribeReservedInstancesOfferingsResultBuilder> {
  /// Contains the output of DescribeReservedInstancesOfferings.
  factory DescribeReservedInstancesOfferingsResult({
    List<ReservedInstancesOffering>? reservedInstancesOfferings,
    String? nextToken,
  }) {
    return _$DescribeReservedInstancesOfferingsResult._(
      reservedInstancesOfferings: reservedInstancesOfferings == null
          ? null
          : _i2.BuiltList(reservedInstancesOfferings),
      nextToken: nextToken,
    );
  }

  /// Contains the output of DescribeReservedInstancesOfferings.
  factory DescribeReservedInstancesOfferingsResult.build(
      [void Function(DescribeReservedInstancesOfferingsResultBuilder)
          updates]) = _$DescribeReservedInstancesOfferingsResult;

  const DescribeReservedInstancesOfferingsResult._();

  /// Constructs a [DescribeReservedInstancesOfferingsResult] from a [payload] and [response].
  factory DescribeReservedInstancesOfferingsResult.fromResponse(
    DescribeReservedInstancesOfferingsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeReservedInstancesOfferingsResult>>
      serializers = [
    DescribeReservedInstancesOfferingsResultEc2QuerySerializer()
  ];

  /// A list of Reserved Instances offerings.
  _i2.BuiltList<ReservedInstancesOffering>? get reservedInstancesOfferings;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        reservedInstancesOfferings,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeReservedInstancesOfferingsResult')
          ..add(
            'reservedInstancesOfferings',
            reservedInstancesOfferings,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeReservedInstancesOfferingsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeReservedInstancesOfferingsResult> {
  const DescribeReservedInstancesOfferingsResultEc2QuerySerializer()
      : super('DescribeReservedInstancesOfferingsResult');

  @override
  Iterable<Type> get types => const [
        DescribeReservedInstancesOfferingsResult,
        _$DescribeReservedInstancesOfferingsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeReservedInstancesOfferingsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeReservedInstancesOfferingsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'reservedInstancesOfferingsSet':
          result.reservedInstancesOfferings
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ReservedInstancesOffering)],
            ),
          ) as _i2.BuiltList<ReservedInstancesOffering>));
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
    DescribeReservedInstancesOfferingsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeReservedInstancesOfferingsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeReservedInstancesOfferingsResult(
      :reservedInstancesOfferings,
      :nextToken
    ) = object;
    if (reservedInstancesOfferings != null) {
      result$
        ..add(const _i3.XmlElementName('ReservedInstancesOfferingsSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          reservedInstancesOfferings,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ReservedInstancesOffering)],
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
