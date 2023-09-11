// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.slot_date_time_range_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'slot_date_time_range_request.g.dart';

/// Describes the time period for a Scheduled Instance to start its first schedule. The time period must span less than one day.
abstract class SlotDateTimeRangeRequest
    with _i1.AWSEquatable<SlotDateTimeRangeRequest>
    implements
        Built<SlotDateTimeRangeRequest, SlotDateTimeRangeRequestBuilder> {
  /// Describes the time period for a Scheduled Instance to start its first schedule. The time period must span less than one day.
  factory SlotDateTimeRangeRequest({
    DateTime? earliestTime,
    DateTime? latestTime,
  }) {
    return _$SlotDateTimeRangeRequest._(
      earliestTime: earliestTime,
      latestTime: latestTime,
    );
  }

  /// Describes the time period for a Scheduled Instance to start its first schedule. The time period must span less than one day.
  factory SlotDateTimeRangeRequest.build(
          [void Function(SlotDateTimeRangeRequestBuilder) updates]) =
      _$SlotDateTimeRangeRequest;

  const SlotDateTimeRangeRequest._();

  static const List<_i2.SmithySerializer<SlotDateTimeRangeRequest>>
      serializers = [SlotDateTimeRangeRequestEc2QuerySerializer()];

  /// The earliest date and time, in UTC, for the Scheduled Instance to start.
  DateTime? get earliestTime;

  /// The latest date and time, in UTC, for the Scheduled Instance to start. This value must be later than or equal to the earliest date and at most three months in the future.
  DateTime? get latestTime;
  @override
  List<Object?> get props => [
        earliestTime,
        latestTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SlotDateTimeRangeRequest')
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

class SlotDateTimeRangeRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SlotDateTimeRangeRequest> {
  const SlotDateTimeRangeRequestEc2QuerySerializer()
      : super('SlotDateTimeRangeRequest');

  @override
  Iterable<Type> get types => const [
        SlotDateTimeRangeRequest,
        _$SlotDateTimeRangeRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SlotDateTimeRangeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SlotDateTimeRangeRequestBuilder();
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
    SlotDateTimeRangeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SlotDateTimeRangeRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SlotDateTimeRangeRequest(:earliestTime, :latestTime) = object;
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
