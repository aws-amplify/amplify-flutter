// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_host_reservation_offerings_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/host_offering.dart';

part 'describe_host_reservation_offerings_result.g.dart';

abstract class DescribeHostReservationOfferingsResult
    with
        _i1.AWSEquatable<DescribeHostReservationOfferingsResult>
    implements
        Built<DescribeHostReservationOfferingsResult,
            DescribeHostReservationOfferingsResultBuilder> {
  factory DescribeHostReservationOfferingsResult({
    String? nextToken,
    List<HostOffering>? offeringSet,
  }) {
    return _$DescribeHostReservationOfferingsResult._(
      nextToken: nextToken,
      offeringSet: offeringSet == null ? null : _i2.BuiltList(offeringSet),
    );
  }

  factory DescribeHostReservationOfferingsResult.build(
      [void Function(DescribeHostReservationOfferingsResultBuilder)
          updates]) = _$DescribeHostReservationOfferingsResult;

  const DescribeHostReservationOfferingsResult._();

  /// Constructs a [DescribeHostReservationOfferingsResult] from a [payload] and [response].
  factory DescribeHostReservationOfferingsResult.fromResponse(
    DescribeHostReservationOfferingsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeHostReservationOfferingsResult>>
      serializers = [
    DescribeHostReservationOfferingsResultEc2QuerySerializer()
  ];

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// Information about the offerings.
  _i2.BuiltList<HostOffering>? get offeringSet;
  @override
  List<Object?> get props => [
        nextToken,
        offeringSet,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeHostReservationOfferingsResult')
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'offeringSet',
            offeringSet,
          );
    return helper.toString();
  }
}

class DescribeHostReservationOfferingsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeHostReservationOfferingsResult> {
  const DescribeHostReservationOfferingsResultEc2QuerySerializer()
      : super('DescribeHostReservationOfferingsResult');

  @override
  Iterable<Type> get types => const [
        DescribeHostReservationOfferingsResult,
        _$DescribeHostReservationOfferingsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeHostReservationOfferingsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeHostReservationOfferingsResultBuilder();
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
        case 'offeringSet':
          result.offeringSet.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(HostOffering)],
            ),
          ) as _i2.BuiltList<HostOffering>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeHostReservationOfferingsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeHostReservationOfferingsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeHostReservationOfferingsResult(:nextToken, :offeringSet) =
        object;
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (offeringSet != null) {
      result$
        ..add(const _i3.XmlElementName('OfferingSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          offeringSet,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(HostOffering)],
          ),
        ));
    }
    return result$;
  }
}
