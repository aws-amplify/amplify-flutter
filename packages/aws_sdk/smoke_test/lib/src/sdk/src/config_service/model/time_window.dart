// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.time_window; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'time_window.g.dart';

/// Filters evaluation results based on start and end times.
abstract class TimeWindow
    with _i1.AWSEquatable<TimeWindow>
    implements Built<TimeWindow, TimeWindowBuilder> {
  /// Filters evaluation results based on start and end times.
  factory TimeWindow({
    DateTime? startTime,
    DateTime? endTime,
  }) {
    return _$TimeWindow._(
      startTime: startTime,
      endTime: endTime,
    );
  }

  /// Filters evaluation results based on start and end times.
  factory TimeWindow.build([void Function(TimeWindowBuilder) updates]) =
      _$TimeWindow;

  const TimeWindow._();

  static const List<_i2.SmithySerializer<TimeWindow>> serializers = [
    TimeWindowAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TimeWindowBuilder b) {}

  /// The start time of an execution.
  DateTime? get startTime;

  /// The end time of an execution. The end time must be after the start date.
  DateTime? get endTime;
  @override
  List<Object?> get props => [
        startTime,
        endTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TimeWindow')
      ..add(
        'startTime',
        startTime,
      )
      ..add(
        'endTime',
        endTime,
      );
    return helper.toString();
  }
}

class TimeWindowAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<TimeWindow> {
  const TimeWindowAwsJson11Serializer() : super('TimeWindow');

  @override
  Iterable<Type> get types => const [
        TimeWindow,
        _$TimeWindow,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  TimeWindow deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeWindowBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StartTime':
          result.startTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'EndTime':
          result.endTime = (serializers.deserialize(
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
    TimeWindow object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final TimeWindow(:startTime, :endTime) = object;
    if (startTime != null) {
      result$
        ..add('StartTime')
        ..add(serializers.serialize(
          startTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (endTime != null) {
      result$
        ..add('EndTime')
        ..add(serializers.serialize(
          endTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
