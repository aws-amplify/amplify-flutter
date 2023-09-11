// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.slot_start_time_range_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'slot_start_time_range_request.g.dart';

/// Describes the time period for a Scheduled Instance to start its first schedule.
abstract class SlotStartTimeRangeRequest
    with _i1.AWSEquatable<SlotStartTimeRangeRequest>
    implements
        Built<SlotStartTimeRangeRequest, SlotStartTimeRangeRequestBuilder> {
  /// Describes the time period for a Scheduled Instance to start its first schedule.
  factory SlotStartTimeRangeRequest({
    DateTime? earliestTime,
    DateTime? latestTime,
  }) {
    return _$SlotStartTimeRangeRequest._(
      earliestTime: earliestTime,
      latestTime: latestTime,
    );
  }

  /// Describes the time period for a Scheduled Instance to start its first schedule.
  factory SlotStartTimeRangeRequest.build(
          [void Function(SlotStartTimeRangeRequestBuilder) updates]) =
      _$SlotStartTimeRangeRequest;

  const SlotStartTimeRangeRequest._();

  static const List<_i2.SmithySerializer<SlotStartTimeRangeRequest>>
      serializers = [SlotStartTimeRangeRequestEc2QuerySerializer()];

  /// The earliest date and time, in UTC, for the Scheduled Instance to start.
  DateTime? get earliestTime;

  /// The latest date and time, in UTC, for the Scheduled Instance to start.
  DateTime? get latestTime;
  @override
  List<Object?> get props => [
        earliestTime,
        latestTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SlotStartTimeRangeRequest')
      ..add(
        'earliestTime',
        earliestTime,
      )
      ..add(
        'latestTime',
        latestTime,
      );
    return helper.toString();
  }
}

class SlotStartTimeRangeRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SlotStartTimeRangeRequest> {
  const SlotStartTimeRangeRequestEc2QuerySerializer()
      : super('SlotStartTimeRangeRequest');

  @override
  Iterable<Type> get types => const [
        SlotStartTimeRangeRequest,
        _$SlotStartTimeRangeRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SlotStartTimeRangeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SlotStartTimeRangeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'EarliestTime':
          result.earliestTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'LatestTime':
          result.latestTime = (serializers.deserialize(
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
    SlotStartTimeRangeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SlotStartTimeRangeRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SlotStartTimeRangeRequest(:earliestTime, :latestTime) = object;
    if (earliestTime != null) {
      result$
        ..add(const _i2.XmlElementName('EarliestTime'))
        ..add(serializers.serialize(
          earliestTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (latestTime != null) {
      result$
        ..add(const _i2.XmlElementName('LatestTime'))
        ..add(serializers.serialize(
          latestTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
