// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_spot_fleet_request_history_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/event_type.dart';

part 'describe_spot_fleet_request_history_request.g.dart';

/// Contains the parameters for DescribeSpotFleetRequestHistory.
abstract class DescribeSpotFleetRequestHistoryRequest
    with
        _i1.HttpInput<DescribeSpotFleetRequestHistoryRequest>,
        _i2.AWSEquatable<DescribeSpotFleetRequestHistoryRequest>
    implements
        Built<DescribeSpotFleetRequestHistoryRequest,
            DescribeSpotFleetRequestHistoryRequestBuilder> {
  /// Contains the parameters for DescribeSpotFleetRequestHistory.
  factory DescribeSpotFleetRequestHistoryRequest({
    bool? dryRun,
    EventType? eventType,
    int? maxResults,
    String? nextToken,
    String? spotFleetRequestId,
    DateTime? startTime,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeSpotFleetRequestHistoryRequest._(
      dryRun: dryRun,
      eventType: eventType,
      maxResults: maxResults,
      nextToken: nextToken,
      spotFleetRequestId: spotFleetRequestId,
      startTime: startTime,
    );
  }

  /// Contains the parameters for DescribeSpotFleetRequestHistory.
  factory DescribeSpotFleetRequestHistoryRequest.build(
      [void Function(DescribeSpotFleetRequestHistoryRequestBuilder)
          updates]) = _$DescribeSpotFleetRequestHistoryRequest;

  const DescribeSpotFleetRequestHistoryRequest._();

  factory DescribeSpotFleetRequestHistoryRequest.fromRequest(
    DescribeSpotFleetRequestHistoryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeSpotFleetRequestHistoryRequest>>
      serializers = [
    DescribeSpotFleetRequestHistoryRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSpotFleetRequestHistoryRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The type of events to describe. By default, all events are described.
  EventType? get eventType;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;

  /// The ID of the Spot Fleet request.
  String? get spotFleetRequestId;

  /// The starting date and time for the events, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z).
  DateTime? get startTime;
  @override
  DescribeSpotFleetRequestHistoryRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        eventType,
        maxResults,
        nextToken,
        spotFleetRequestId,
        startTime,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSpotFleetRequestHistoryRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'eventType',
            eventType,
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
            'spotFleetRequestId',
            spotFleetRequestId,
          )
          ..add(
            'startTime',
            startTime,
          );
    return helper.toString();
  }
}

class DescribeSpotFleetRequestHistoryRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeSpotFleetRequestHistoryRequest> {
  const DescribeSpotFleetRequestHistoryRequestEc2QuerySerializer()
      : super('DescribeSpotFleetRequestHistoryRequest');

  @override
  Iterable<Type> get types => const [
        DescribeSpotFleetRequestHistoryRequest,
        _$DescribeSpotFleetRequestHistoryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSpotFleetRequestHistoryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSpotFleetRequestHistoryRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'eventType':
          result.eventType = (serializers.deserialize(
            value,
            specifiedType: const FullType(EventType),
          ) as EventType);
        case 'maxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'spotFleetRequestId':
          result.spotFleetRequestId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'startTime':
          result.startTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeSpotFleetRequestHistoryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeSpotFleetRequestHistoryRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeSpotFleetRequestHistoryRequest(
      :dryRun,
      :eventType,
      :maxResults,
      :nextToken,
      :spotFleetRequestId,
      :startTime
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (eventType != null) {
      result$
        ..add(const _i1.XmlElementName('EventType'))
        ..add(serializers.serialize(
          eventType,
          specifiedType: const FullType.nullable(EventType),
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
    if (spotFleetRequestId != null) {
      result$
        ..add(const _i1.XmlElementName('SpotFleetRequestId'))
        ..add(serializers.serialize(
          spotFleetRequestId,
          specifiedType: const FullType(String),
        ));
    }
    if (startTime != null) {
      result$
        ..add(const _i1.XmlElementName('StartTime'))
        ..add(serializers.serialize(
          startTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
