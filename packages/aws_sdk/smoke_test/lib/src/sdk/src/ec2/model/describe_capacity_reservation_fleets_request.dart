// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_capacity_reservation_fleets_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_capacity_reservation_fleets_request.g.dart';

abstract class DescribeCapacityReservationFleetsRequest
    with
        _i1.HttpInput<DescribeCapacityReservationFleetsRequest>,
        _i2.AWSEquatable<DescribeCapacityReservationFleetsRequest>
    implements
        Built<DescribeCapacityReservationFleetsRequest,
            DescribeCapacityReservationFleetsRequestBuilder> {
  factory DescribeCapacityReservationFleetsRequest({
    List<String>? capacityReservationFleetIds,
    String? nextToken,
    int? maxResults,
    List<Filter>? filters,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeCapacityReservationFleetsRequest._(
      capacityReservationFleetIds: capacityReservationFleetIds == null
          ? null
          : _i3.BuiltList(capacityReservationFleetIds),
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters == null ? null : _i3.BuiltList(filters),
      dryRun: dryRun,
    );
  }

  factory DescribeCapacityReservationFleetsRequest.build(
      [void Function(DescribeCapacityReservationFleetsRequestBuilder)
          updates]) = _$DescribeCapacityReservationFleetsRequest;

  const DescribeCapacityReservationFleetsRequest._();

  factory DescribeCapacityReservationFleetsRequest.fromRequest(
    DescribeCapacityReservationFleetsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeCapacityReservationFleetsRequest>>
      serializers = [
    DescribeCapacityReservationFleetsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeCapacityReservationFleetsRequestBuilder b) {
    b
      ..maxResults = 0
      ..dryRun = false;
  }

  /// The IDs of the Capacity Reservation Fleets to describe.
  _i3.BuiltList<String>? get capacityReservationFleetIds;

  /// The token to use to retrieve the next page of results.
  String? get nextToken;

  /// The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned `nextToken` value. This value can be between 5 and 500. If `maxResults` is given a larger value than 500, you receive an error.
  int get maxResults;

  /// One or more filters.
  ///
  /// *   `state` \- The state of the Fleet (`submitted` | `modifying` | `active` | `partially_fulfilled` | `expiring` | `expired` | `cancelling` | `cancelled` | `failed`).
  ///
  /// *   `instance-match-criteria` \- The instance matching criteria for the Fleet. Only `open` is supported.
  ///
  /// *   `tenancy` \- The tenancy of the Fleet (`default` | `dedicated`).
  ///
  /// *   `allocation-strategy` \- The allocation strategy used by the Fleet. Only `prioritized` is supported.
  _i3.BuiltList<Filter>? get filters;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeCapacityReservationFleetsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        capacityReservationFleetIds,
        nextToken,
        maxResults,
        filters,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeCapacityReservationFleetsRequest')
          ..add(
            'capacityReservationFleetIds',
            capacityReservationFleetIds,
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

class DescribeCapacityReservationFleetsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeCapacityReservationFleetsRequest> {
  const DescribeCapacityReservationFleetsRequestEc2QuerySerializer()
      : super('DescribeCapacityReservationFleetsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeCapacityReservationFleetsRequest,
        _$DescribeCapacityReservationFleetsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeCapacityReservationFleetsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeCapacityReservationFleetsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CapacityReservationFleetId':
          result.capacityReservationFleetIds
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
    DescribeCapacityReservationFleetsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeCapacityReservationFleetsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeCapacityReservationFleetsRequest(
      :capacityReservationFleetIds,
      :nextToken,
      :maxResults,
      :filters,
      :dryRun
    ) = object;
    if (capacityReservationFleetIds != null) {
      result$
        ..add(const _i1.XmlElementName('CapacityReservationFleetId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          capacityReservationFleetIds,
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
