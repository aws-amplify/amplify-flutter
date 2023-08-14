// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_scheduled_instances_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/slot_start_time_range_request.dart';

part 'describe_scheduled_instances_request.g.dart';

/// Contains the parameters for DescribeScheduledInstances.
abstract class DescribeScheduledInstancesRequest
    with
        _i1.HttpInput<DescribeScheduledInstancesRequest>,
        _i2.AWSEquatable<DescribeScheduledInstancesRequest>
    implements
        Built<DescribeScheduledInstancesRequest,
            DescribeScheduledInstancesRequestBuilder> {
  /// Contains the parameters for DescribeScheduledInstances.
  factory DescribeScheduledInstancesRequest({
    bool? dryRun,
    List<Filter>? filters,
    int? maxResults,
    String? nextToken,
    List<String>? scheduledInstanceIds,
    SlotStartTimeRangeRequest? slotStartTimeRange,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeScheduledInstancesRequest._(
      dryRun: dryRun,
      filters: filters == null ? null : _i3.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
      scheduledInstanceIds: scheduledInstanceIds == null
          ? null
          : _i3.BuiltList(scheduledInstanceIds),
      slotStartTimeRange: slotStartTimeRange,
    );
  }

  /// Contains the parameters for DescribeScheduledInstances.
  factory DescribeScheduledInstancesRequest.build(
          [void Function(DescribeScheduledInstancesRequestBuilder) updates]) =
      _$DescribeScheduledInstancesRequest;

  const DescribeScheduledInstancesRequest._();

  factory DescribeScheduledInstancesRequest.fromRequest(
    DescribeScheduledInstancesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeScheduledInstancesRequest>>
      serializers = [DescribeScheduledInstancesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeScheduledInstancesRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
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

  /// The maximum number of results to return in a single call. This value can be between 5 and 300. The default value is 100. To retrieve the remaining results, make another call with the returned `NextToken` value.
  int get maxResults;

  /// The token for the next set of results.
  String? get nextToken;

  /// The Scheduled Instance IDs.
  _i3.BuiltList<String>? get scheduledInstanceIds;

  /// The time period for the first schedule to start.
  SlotStartTimeRangeRequest? get slotStartTimeRange;
  @override
  DescribeScheduledInstancesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        filters,
        maxResults,
        nextToken,
        scheduledInstanceIds,
        slotStartTimeRange,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeScheduledInstancesRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'filters',
            filters,
          )
          ..add(
            'maxResults',
            maxResults,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'scheduledInstanceIds',
            scheduledInstanceIds,
          )
          ..add(
            'slotStartTimeRange',
            slotStartTimeRange,
          );
    return helper.toString();
  }
}

class DescribeScheduledInstancesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeScheduledInstancesRequest> {
  const DescribeScheduledInstancesRequestEc2QuerySerializer()
      : super('DescribeScheduledInstancesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeScheduledInstancesRequest,
        _$DescribeScheduledInstancesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeScheduledInstancesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeScheduledInstancesRequestBuilder();
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
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ScheduledInstanceId':
          result.scheduledInstanceIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'ScheduledInstanceId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'SlotStartTimeRange':
          result.slotStartTimeRange.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SlotStartTimeRangeRequest),
          ) as SlotStartTimeRangeRequest));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeScheduledInstancesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeScheduledInstancesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeScheduledInstancesRequest(
      :dryRun,
      :filters,
      :maxResults,
      :nextToken,
      :scheduledInstanceIds,
      :slotStartTimeRange
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
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
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
    if (scheduledInstanceIds != null) {
      result$
        ..add(const _i1.XmlElementName('ScheduledInstanceId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ScheduledInstanceId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          scheduledInstanceIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (slotStartTimeRange != null) {
      result$
        ..add(const _i1.XmlElementName('SlotStartTimeRange'))
        ..add(serializers.serialize(
          slotStartTimeRange,
          specifiedType: const FullType(SlotStartTimeRangeRequest),
        ));
    }
    return result$;
  }
}
