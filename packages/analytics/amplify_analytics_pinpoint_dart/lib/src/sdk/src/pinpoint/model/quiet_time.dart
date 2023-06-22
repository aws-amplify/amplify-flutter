// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_analytics_pinpoint_dart.pinpoint.model.quiet_time; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'quiet_time.g.dart';

/// Specifies the start and end times that define a time range when messages aren't sent to endpoints.
abstract class QuietTime
    with _i1.AWSEquatable<QuietTime>
    implements Built<QuietTime, QuietTimeBuilder> {
  /// Specifies the start and end times that define a time range when messages aren't sent to endpoints.
  factory QuietTime({
    String? end,
    String? start,
  }) {
    return _$QuietTime._(
      end: end,
      start: start,
    );
  }

  /// Specifies the start and end times that define a time range when messages aren't sent to endpoints.
  factory QuietTime.build([void Function(QuietTimeBuilder) updates]) =
      _$QuietTime;

  const QuietTime._();

  static const List<_i2.SmithySerializer<QuietTime>> serializers = [
    QuietTimeRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QuietTimeBuilder b) {}

  /// The specific time when quiet time ends. This value has to use 24-hour notation and be in HH:MM format, where HH is the hour (with a leading zero, if applicable) and MM is the minutes. For example, use 02:30 to represent 2:30 AM, or 14:30 to represent 2:30 PM.
  String? get end;

  /// The specific time when quiet time begins. This value has to use 24-hour notation and be in HH:MM format, where HH is the hour (with a leading zero, if applicable) and MM is the minutes. For example, use 02:30 to represent 2:30 AM, or 14:30 to represent 2:30 PM.
  String? get start;
  @override
  List<Object?> get props => [
        end,
        start,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('QuietTime')
      ..add(
        'end',
        end,
      )
      ..add(
        'start',
        start,
      );
    return helper.toString();
  }
}

class QuietTimeRestJson1Serializer
    extends _i2.StructuredSmithySerializer<QuietTime> {
  const QuietTimeRestJson1Serializer() : super('QuietTime');

  @override
  Iterable<Type> get types => const [
        QuietTime,
        _$QuietTime,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  QuietTime deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuietTimeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'End':
          result.end = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Start':
          result.start = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    QuietTime object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final QuietTime(:end, :start) = object;
    if (end != null) {
      result$
        ..add('End')
        ..add(serializers.serialize(
          end,
          specifiedType: const FullType(String),
        ));
    }
    if (start != null) {
      result$
        ..add('Start')
        ..add(serializers.serialize(
          start,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
