// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_scheduled_instance_availability_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instance_recurrence_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/slot_date_time_range_request.dart';

part 'describe_scheduled_instance_availability_request.g.dart';

/// Contains the parameters for DescribeScheduledInstanceAvailability.
abstract class DescribeScheduledInstanceAvailabilityRequest
    with
        _i1.HttpInput<DescribeScheduledInstanceAvailabilityRequest>,
        _i2.AWSEquatable<DescribeScheduledInstanceAvailabilityRequest>
    implements
        Built<DescribeScheduledInstanceAvailabilityRequest,
            DescribeScheduledInstanceAvailabilityRequestBuilder> {
  /// Contains the parameters for DescribeScheduledInstanceAvailability.
  factory DescribeScheduledInstanceAvailabilityRequest({
    bool? dryRun,
    List<Filter>? filters,
    SlotDateTimeRangeRequest? firstSlotStartTimeRange,
    int? maxResults,
    int? maxSlotDurationInHours,
    int? minSlotDurationInHours,
    String? nextToken,
    ScheduledInstanceRecurrenceRequest? recurrence,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    maxSlotDurationInHours ??= 0;
    minSlotDurationInHours ??= 0;
    return _$DescribeScheduledInstanceAvailabilityRequest._(
      dryRun: dryRun,
      filters: filters == null ? null : _i3.BuiltList(filters),
      firstSlotStartTimeRange: firstSlotStartTimeRange,
      maxResults: maxResults,
      maxSlotDurationInHours: maxSlotDurationInHours,
      minSlotDurationInHours: minSlotDurationInHours,
      nextToken: nextToken,
      recurrence: recurrence,
    );
  }

  /// Contains the parameters for DescribeScheduledInstanceAvailability.
  factory DescribeScheduledInstanceAvailabilityRequest.build(
      [void Function(DescribeScheduledInstanceAvailabilityRequestBuilder)
          updates]) = _$DescribeScheduledInstanceAvailabilityRequest;

  const DescribeScheduledInstanceAvailabilityRequest._();

  factory DescribeScheduledInstanceAvailabilityRequest.fromRequest(
    DescribeScheduledInstanceAvailabilityRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeScheduledInstanceAvailabilityRequest>>
      serializers = [
    DescribeScheduledInstanceAvailabilityRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeScheduledInstanceAvailabilityRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0
      ..maxSlotDurationInHours = 0
      ..minSlotDurationInHours = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The filters.
  ///
  /// *   `availability-zone` \- The Availability Zone (for example, `us-west-2a`).
  ///
  /// *   `instance-type` \- The instance type (for example, `c4.large`).
  ///
  /// *   `platform` \- The platform (`Linux/UNIX` or `Windows`).
  _i3.BuiltList<Filter>? get filters;

  /// The time period for the first schedule to start.
  SlotDateTimeRangeRequest? get firstSlotStartTimeRange;

  /// The maximum number of results to return in a single call. This value can be between 5 and 300. The default value is 300. To retrieve the remaining results, make another call with the returned `NextToken` value.
  int get maxResults;

  /// The maximum available duration, in hours. This value must be greater than `MinSlotDurationInHours` and less than 1,720.
  int get maxSlotDurationInHours;

  /// The minimum available duration, in hours. The minimum required duration is 1,200 hours per year. For example, the minimum daily schedule is 4 hours, the minimum weekly schedule is 24 hours, and the minimum monthly schedule is 100 hours.
  int get minSlotDurationInHours;

  /// The token for the next set of results.
  String? get nextToken;

  /// The schedule recurrence.
  ScheduledInstanceRecurrenceRequest? get recurrence;
  @override
  DescribeScheduledInstanceAvailabilityRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        filters,
        firstSlotStartTimeRange,
        maxResults,
        maxSlotDurationInHours,
        minSlotDurationInHours,
        nextToken,
        recurrence,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeScheduledInstanceAvailabilityRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'filters',
        filters,
      )
      ..add(
        'firstSlotStartTimeRange',
        firstSlotStartTimeRange,
      )
      ..add(
        'maxResults',
        maxResults,
      )
      ..add(
        'maxSlotDurationInHours',
        maxSlotDurationInHours,
      )
      ..add(
        'minSlotDurationInHours',
        minSlotDurationInHours,
      )
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'recurrence',
        recurrence,
      );
    return helper.toString();
  }
}

class DescribeScheduledInstanceAvailabilityRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeScheduledInstanceAvailabilityRequest> {
  const DescribeScheduledInstanceAvailabilityRequestEc2QuerySerializer()
      : super('DescribeScheduledInstanceAvailabilityRequest');

  @override
  Iterable<Type> get types => const [
        DescribeScheduledInstanceAvailabilityRequest,
        _$DescribeScheduledInstanceAvailabilityRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeScheduledInstanceAvailabilityRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeScheduledInstanceAvailabilityRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
        case 'FirstSlotStartTimeRange':
          result.firstSlotStartTimeRange.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SlotDateTimeRangeRequest),
          ) as SlotDateTimeRangeRequest));
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'MaxSlotDurationInHours':
          result.maxSlotDurationInHours = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'MinSlotDurationInHours':
          result.minSlotDurationInHours = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Recurrence':
          result.recurrence.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ScheduledInstanceRecurrenceRequest),
          ) as ScheduledInstanceRecurrenceRequest));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeScheduledInstanceAvailabilityRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeScheduledInstanceAvailabilityRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeScheduledInstanceAvailabilityRequest(
      :dryRun,
      :filters,
      :firstSlotStartTimeRange,
      :maxResults,
      :maxSlotDurationInHours,
      :minSlotDurationInHours,
      :nextToken,
      :recurrence
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
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
    if (firstSlotStartTimeRange != null) {
      result$
        ..add(const _i1.XmlElementName('FirstSlotStartTimeRange'))
        ..add(serializers.serialize(
          firstSlotStartTimeRange,
          specifiedType: const FullType(SlotDateTimeRangeRequest),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('MaxSlotDurationInHours'))
      ..add(serializers.serialize(
        maxSlotDurationInHours,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('MinSlotDurationInHours'))
      ..add(serializers.serialize(
        minSlotDurationInHours,
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
    if (recurrence != null) {
      result$
        ..add(const _i1.XmlElementName('Recurrence'))
        ..add(serializers.serialize(
          recurrence,
          specifiedType: const FullType(ScheduledInstanceRecurrenceRequest),
        ));
    }
    return result$;
  }
}
