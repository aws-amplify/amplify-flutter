// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_logging_cloudwatchlogs_dart.cloud_watch_logs.model.input_log_event; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'input_log_event.g.dart';

/// Represents a log event, which is a record of activity that was recorded by the application or resource being monitored.
abstract class InputLogEvent
    with _i1.AWSEquatable<InputLogEvent>
    implements Built<InputLogEvent, InputLogEventBuilder> {
  /// Represents a log event, which is a record of activity that was recorded by the application or resource being monitored.
  factory InputLogEvent({
    required String message,
    _i2.Int64? timestamp,
  }) {
    timestamp ??= _i2.Int64.ZERO;
    return _$InputLogEvent._(
      message: message,
      timestamp: timestamp,
    );
  }

  /// Represents a log event, which is a record of activity that was recorded by the application or resource being monitored.
  factory InputLogEvent.build([void Function(InputLogEventBuilder) updates]) =
      _$InputLogEvent;

  const InputLogEvent._();

  static const List<_i3.SmithySerializer> serializers = [
    InputLogEventAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InputLogEventBuilder b) {
    b.timestamp = _i2.Int64.ZERO;
  }

  /// The raw event message.
  String get message;

  /// The time the event occurred, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.
  _i2.Int64 get timestamp;
  @override
  List<Object?> get props => [
        message,
        timestamp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InputLogEvent');
    helper.add(
      'message',
      message,
    );
    helper.add(
      'timestamp',
      timestamp,
    );
    return helper.toString();
  }
}

class InputLogEventAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<InputLogEvent> {
  const InputLogEventAwsJson11Serializer() : super('InputLogEvent');

  @override
  Iterable<Type> get types => const [
        InputLogEvent,
        _$InputLogEvent,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  InputLogEvent deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InputLogEventBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          result.message = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'timestamp':
          result.timestamp = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as InputLogEvent);
    final result = <Object?>[
      'message',
      serializers.serialize(
        payload.message,
        specifiedType: const FullType(String),
      ),
      'timestamp',
      serializers.serialize(
        payload.timestamp,
        specifiedType: const FullType(_i2.Int64),
      ),
    ];
    return result;
  }
}
