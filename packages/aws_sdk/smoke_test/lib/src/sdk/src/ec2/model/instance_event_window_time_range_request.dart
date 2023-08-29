// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_event_window_time_range_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/week_day.dart';

part 'instance_event_window_time_range_request.g.dart';

/// The start day and time and the end day and time of the time range, in UTC.
abstract class InstanceEventWindowTimeRangeRequest
    with
        _i1.AWSEquatable<InstanceEventWindowTimeRangeRequest>
    implements
        Built<InstanceEventWindowTimeRangeRequest,
            InstanceEventWindowTimeRangeRequestBuilder> {
  /// The start day and time and the end day and time of the time range, in UTC.
  factory InstanceEventWindowTimeRangeRequest({
    WeekDay? startWeekDay,
    int? startHour,
    WeekDay? endWeekDay,
    int? endHour,
  }) {
    startHour ??= 0;
    endHour ??= 0;
    return _$InstanceEventWindowTimeRangeRequest._(
      startWeekDay: startWeekDay,
      startHour: startHour,
      endWeekDay: endWeekDay,
      endHour: endHour,
    );
  }

  /// The start day and time and the end day and time of the time range, in UTC.
  factory InstanceEventWindowTimeRangeRequest.build(
          [void Function(InstanceEventWindowTimeRangeRequestBuilder) updates]) =
      _$InstanceEventWindowTimeRangeRequest;

  const InstanceEventWindowTimeRangeRequest._();

  static const List<_i2.SmithySerializer<InstanceEventWindowTimeRangeRequest>>
      serializers = [InstanceEventWindowTimeRangeRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceEventWindowTimeRangeRequestBuilder b) {
    b
      ..startHour = 0
      ..endHour = 0;
  }

  /// The day on which the time range begins.
  WeekDay? get startWeekDay;

  /// The hour when the time range begins.
  int get startHour;

  /// The day on which the time range ends.
  WeekDay? get endWeekDay;

  /// The hour when the time range ends.
  int get endHour;
  @override
  List<Object?> get props => [
        startWeekDay,
        startHour,
        endWeekDay,
        endHour,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InstanceEventWindowTimeRangeRequest')
          ..add(
            'startWeekDay',
            startWeekDay,
          )
          ..add(
            'startHour',
            startHour,
          )
          ..add(
            'endWeekDay',
            endWeekDay,
          )
          ..add(
            'endHour',
            endHour,
          );
    return helper.toString();
  }
}

class InstanceEventWindowTimeRangeRequestEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<InstanceEventWindowTimeRangeRequest> {
  const InstanceEventWindowTimeRangeRequestEc2QuerySerializer()
      : super('InstanceEventWindowTimeRangeRequest');

  @override
  Iterable<Type> get types => const [
        InstanceEventWindowTimeRangeRequest,
        _$InstanceEventWindowTimeRangeRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceEventWindowTimeRangeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceEventWindowTimeRangeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StartWeekDay':
          result.startWeekDay = (serializers.deserialize(
            value,
            specifiedType: const FullType(WeekDay),
          ) as WeekDay);
        case 'StartHour':
          result.startHour = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'EndWeekDay':
          result.endWeekDay = (serializers.deserialize(
            value,
            specifiedType: const FullType(WeekDay),
          ) as WeekDay);
        case 'EndHour':
          result.endHour = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceEventWindowTimeRangeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InstanceEventWindowTimeRangeRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceEventWindowTimeRangeRequest(
      :startWeekDay,
      :startHour,
      :endWeekDay,
      :endHour
    ) = object;
    if (startWeekDay != null) {
      result$
        ..add(const _i2.XmlElementName('StartWeekDay'))
        ..add(serializers.serialize(
          startWeekDay,
          specifiedType: const FullType.nullable(WeekDay),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('StartHour'))
      ..add(serializers.serialize(
        startHour,
        specifiedType: const FullType(int),
      ));
    if (endWeekDay != null) {
      result$
        ..add(const _i2.XmlElementName('EndWeekDay'))
        ..add(serializers.serialize(
          endWeekDay,
          specifiedType: const FullType.nullable(WeekDay),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('EndHour'))
      ..add(serializers.serialize(
        endHour,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
