// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_capacity_reservations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_capacity_reservations_request.g.dart';

abstract class DescribeCapacityReservationsRequest
    with
        _i1.HttpInput<DescribeCapacityReservationsRequest>,
        _i2.AWSEquatable<DescribeCapacityReservationsRequest>
    implements
        Built<DescribeCapacityReservationsRequest,
            DescribeCapacityReservationsRequestBuilder> {
  factory DescribeCapacityReservationsRequest({
    List<String>? capacityReservationIds,
    String? nextToken,
    int? maxResults,
    List<Filter>? filters,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeCapacityReservationsRequest._(
      capacityReservationIds: capacityReservationIds == null
          ? null
          : _i3.BuiltList(capacityReservationIds),
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters == null ? null : _i3.BuiltList(filters),
      dryRun: dryRun,
    );
  }

  factory DescribeCapacityReservationsRequest.build(
          [void Function(DescribeCapacityReservationsRequestBuilder) updates]) =
      _$DescribeCapacityReservationsRequest;

  const DescribeCapacityReservationsRequest._();

  factory DescribeCapacityReservationsRequest.fromRequest(
    DescribeCapacityReservationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeCapacityReservationsRequest>>
      serializers = [DescribeCapacityReservationsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeCapacityReservationsRequestBuilder b) {
    b
      ..maxResults = 0
      ..dryRun = false;
  }

  /// The ID of the Capacity Reservation.
  _i3.BuiltList<String>? get capacityReservationIds;

  /// The token to use to retrieve the next page of results.
  String? get nextToken;

  /// The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned `nextToken` value. This value can be between 5 and 500. If `maxResults` is given a larger value than 500, you receive an error.
  int get maxResults;

  /// One or more filters.
  ///
  /// *   `instance-type` \- The type of instance for which the Capacity Reservation reserves capacity.
  ///
  /// *   `owner-id` \- The ID of the Amazon Web Services account that owns the Capacity Reservation.
  ///
  /// *   `instance-platform` \- The type of operating system for which the Capacity Reservation reserves capacity.
  ///
  /// *   `availability-zone` \- The Availability Zone of the Capacity Reservation.
  ///
  /// *   `tenancy` \- Indicates the tenancy of the Capacity Reservation. A Capacity Reservation can have one of the following tenancy settings:
  ///
  ///     *   `default` \- The Capacity Reservation is created on hardware that is shared with other Amazon Web Services accounts.
  ///
  ///     *   `dedicated` \- The Capacity Reservation is created on single-tenant hardware that is dedicated to a single Amazon Web Services account.
  ///
  /// *   `outpost-arn` \- The Amazon Resource Name (ARN) of the Outpost on which the Capacity Reservation was created.
  ///
  /// *   `state` \- The current state of the Capacity Reservation. A Capacity Reservation can be in one of the following states:
  ///
  ///     *   `active`\- The Capacity Reservation is active and the capacity is available for your use.
  ///
  ///     *   `expired` \- The Capacity Reservation expired automatically at the date and time specified in your request. The reserved capacity is no longer available for your use.
  ///
  ///     *   `cancelled` \- The Capacity Reservation was cancelled. The reserved capacity is no longer available for your use.
  ///
  ///     *   `pending` \- The Capacity Reservation request was successful but the capacity provisioning is still pending.
  ///
  ///     *   `failed` \- The Capacity Reservation request has failed. A request might fail due to invalid request parameters, capacity constraints, or instance limit constraints. Failed requests are retained for 60 minutes.
  ///
  /// *   `start-date` \- The date and time at which the Capacity Reservation was started.
  ///
  /// *   `end-date` \- The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. The Capacity Reservation's state changes to expired when it reaches its end date and time.
  ///
  /// *   `end-date-type` \- Indicates the way in which the Capacity Reservation ends. A Capacity Reservation can have one of the following end types:
  ///
  ///     *   `unlimited` \- The Capacity Reservation remains active until you explicitly cancel it.
  ///
  ///     *   `limited` \- The Capacity Reservation expires automatically at a specified date and time.
  ///
  /// *   `instance-match-criteria` \- Indicates the type of instance launches that the Capacity Reservation accepts. The options include:
  ///
  ///     *   `open` \- The Capacity Reservation accepts all instances that have matching attributes (instance type, platform, and Availability Zone). Instances that have matching attributes launch into the Capacity Reservation automatically without specifying any additional parameters.
  ///
  ///     *   `targeted` \- The Capacity Reservation only accepts instances that have matching attributes (instance type, platform, and Availability Zone), and explicitly target the Capacity Reservation. This ensures that only permitted instances can use the reserved capacity.
  ///
  /// *   `placement-group-arn` \- The ARN of the cluster placement group in which the Capacity Reservation was created.
  _i3.BuiltList<Filter>? get filters;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeCapacityReservationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        capacityReservationIds,
        nextToken,
        maxResults,
        filters,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeCapacityReservationsRequest')
          ..add(
            'capacityReservationIds',
            capacityReservationIds,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'maxResults',
            maxResults,
          )
          ..add(
            'filters',
            filters,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DescribeCapacityReservationsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeCapacityReservationsRequest> {
  const DescribeCapacityReservationsRequestEc2QuerySerializer()
      : super('DescribeCapacityReservationsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeCapacityReservationsRequest,
        _$DescribeCapacityReservationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeCapacityReservationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeCapacityReservationsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CapacityReservationId':
          result.capacityReservationIds
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Filter':
          result.filters.replace((const _i1.XmlBuiltListSerializer(
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
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeCapacityReservationsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeCapacityReservationsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeCapacityReservationsRequest(
      :capacityReservationIds,
      :nextToken,
      :maxResults,
      :filters,
      :dryRun
    ) = object;
    if (capacityReservationIds != null) {
      result$
        ..add(const _i1.XmlElementName('CapacityReservationId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          capacityReservationIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filters,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
