// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_host_reservation_offerings_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_host_reservation_offerings_request.g.dart';

abstract class DescribeHostReservationOfferingsRequest
    with
        _i1.HttpInput<DescribeHostReservationOfferingsRequest>,
        _i2.AWSEquatable<DescribeHostReservationOfferingsRequest>
    implements
        Built<DescribeHostReservationOfferingsRequest,
            DescribeHostReservationOfferingsRequestBuilder> {
  factory DescribeHostReservationOfferingsRequest({
    List<Filter>? filter,
    int? maxDuration,
    int? maxResults,
    int? minDuration,
    String? nextToken,
    String? offeringId,
  }) {
    maxDuration ??= 0;
    maxResults ??= 0;
    minDuration ??= 0;
    return _$DescribeHostReservationOfferingsRequest._(
      filter: filter == null ? null : _i3.BuiltList(filter),
      maxDuration: maxDuration,
      maxResults: maxResults,
      minDuration: minDuration,
      nextToken: nextToken,
      offeringId: offeringId,
    );
  }

  factory DescribeHostReservationOfferingsRequest.build(
      [void Function(DescribeHostReservationOfferingsRequestBuilder)
          updates]) = _$DescribeHostReservationOfferingsRequest;

  const DescribeHostReservationOfferingsRequest._();

  factory DescribeHostReservationOfferingsRequest.fromRequest(
    DescribeHostReservationOfferingsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeHostReservationOfferingsRequest>>
      serializers = [
    DescribeHostReservationOfferingsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeHostReservationOfferingsRequestBuilder b) {
    b
      ..maxDuration = 0
      ..maxResults = 0
      ..minDuration = 0;
  }

  /// The filters.
  ///
  /// *   `instance-family` \- The instance family of the offering (for example, `m4`).
  ///
  /// *   `payment-option` \- The payment option (`NoUpfront` | `PartialUpfront` | `AllUpfront`).
  _i3.BuiltList<Filter>? get filter;

  /// This is the maximum duration of the reservation to purchase, specified in seconds. Reservations are available in one-year and three-year terms. The number of seconds specified must be the number of seconds in a year (365x24x60x60) times one of the supported durations (1 or 3). For example, specify 94608000 for three years.
  int get maxDuration;

  /// The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned `nextToken` value. This value can be between 5 and 500. If `maxResults` is given a larger value than 500, you receive an error.
  int get maxResults;

  /// This is the minimum duration of the reservation you'd like to purchase, specified in seconds. Reservations are available in one-year and three-year terms. The number of seconds specified must be the number of seconds in a year (365x24x60x60) times one of the supported durations (1 or 3). For example, specify 31536000 for one year.
  int get minDuration;

  /// The token to use to retrieve the next page of results.
  String? get nextToken;

  /// The ID of the reservation offering.
  String? get offeringId;
  @override
  DescribeHostReservationOfferingsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filter,
        maxDuration,
        maxResults,
        minDuration,
        nextToken,
        offeringId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeHostReservationOfferingsRequest')
          ..add(
            'filter',
            filter,
          )
          ..add(
            'maxDuration',
            maxDuration,
          )
          ..add(
            'maxResults',
            maxResults,
          )
          ..add(
            'minDuration',
            minDuration,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'offeringId',
            offeringId,
          );
    return helper.toString();
  }
}

class DescribeHostReservationOfferingsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeHostReservationOfferingsRequest> {
  const DescribeHostReservationOfferingsRequestEc2QuerySerializer()
      : super('DescribeHostReservationOfferingsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeHostReservationOfferingsRequest,
        _$DescribeHostReservationOfferingsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeHostReservationOfferingsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeHostReservationOfferingsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Filter':
          result.filter.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'Filter',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Filter)],
            ),
          ) as _i3.BuiltList<Filter>));
        case 'MaxDuration':
          result.maxDuration = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'MinDuration':
          result.minDuration = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OfferingId':
          result.offeringId = (serializers.deserialize(
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
    DescribeHostReservationOfferingsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeHostReservationOfferingsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeHostReservationOfferingsRequest(
      :filter,
      :maxDuration,
      :maxResults,
      :minDuration,
      :nextToken,
      :offeringId
    ) = object;
    if (filter != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filter,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxDuration'))
      ..add(serializers.serialize(
        maxDuration,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('MinDuration'))
      ..add(serializers.serialize(
        minDuration,
        specifiedType: const FullType(int),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (offeringId != null) {
      result$
        ..add(const _i1.XmlElementName('OfferingId'))
        ..add(serializers.serialize(
          offeringId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
