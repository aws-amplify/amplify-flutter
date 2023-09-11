// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_event_window_time_range; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/week_day.dart';

part 'instance_event_window_time_range.g.dart';

/// The start day and time and the end day and time of the time range, in UTC.
abstract class InstanceEventWindowTimeRange
    with
        _i1.AWSEquatable<InstanceEventWindowTimeRange>
    implements
        Built<InstanceEventWindowTimeRange,
            InstanceEventWindowTimeRangeBuilder> {
  /// The start day and time and the end day and time of the time range, in UTC.
  factory InstanceEventWindowTimeRange({
    WeekDay? startWeekDay,
    int? startHour,
    WeekDay? endWeekDay,
    int? endHour,
  }) {
    startHour ??= 0;
    endHour ??= 0;
    return _$InstanceEventWindowTimeRange._(
      startWeekDay: startWeekDay,
      startHour: startHour,
      endWeekDay: endWeekDay,
      endHour: endHour,
    );
  }

  /// The start day and time and the end day and time of the time range, in UTC.
  factory InstanceEventWindowTimeRange.build(
          [void Function(InstanceEventWindowTimeRangeBuilder) updates]) =
      _$InstanceEventWindowTimeRange;

  const InstanceEventWindowTimeRange._();

  static const List<_i2.SmithySerializer<InstanceEventWindowTimeRange>>
      serializers = [InstanceEventWindowTimeRangeEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceEventWindowTimeRangeBuilder b) {
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
    final helper = newBuiltValueToStringHelper('InstanceEventWindowTimeRange')
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

class InstanceEventWindowTimeRangeEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InstanceEventWindowTimeRange> {
  const InstanceEventWindowTimeRangeEc2QuerySerializer()
      : super('InstanceEventWindowTimeRange');

  @override
  Iterable<Type> get types => const [
        InstanceEventWindowTimeRange,
        _$InstanceEventWindowTimeRange,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceEventWindowTimeRange deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceEventWindowTimeRangeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'startWeekDay':
          result.startWeekDay = (serializers.deserialize(
            value,
            specifiedType: const FullType(WeekDay),
          ) as WeekDay);
        case 'startHour':
          result.startHour = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'endWeekDay':
          result.endWeekDay = (serializers.deserialize(
            value,
            specifiedType: const FullType(WeekDay),
          ) as WeekDay);
        case 'endHour':
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
    InstanceEventWindowTimeRange object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InstanceEventWindowTimeRangeResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceEventWindowTimeRange(
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
          specifiedType: const FullType(WeekDay),
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
          specifiedType: const FullType(WeekDay),
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
