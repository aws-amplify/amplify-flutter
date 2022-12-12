// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.malformed_timestamp_body_date_time_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_timestamp_body_date_time_input.g.dart';

abstract class MalformedTimestampBodyDateTimeInput
    with
        _i1.HttpInput<MalformedTimestampBodyDateTimeInput>,
        _i2.AWSEquatable<MalformedTimestampBodyDateTimeInput>
    implements
        Built<MalformedTimestampBodyDateTimeInput,
            MalformedTimestampBodyDateTimeInputBuilder> {
  factory MalformedTimestampBodyDateTimeInput({required DateTime timestamp}) {
    return _$MalformedTimestampBodyDateTimeInput._(timestamp: timestamp);
  }

  factory MalformedTimestampBodyDateTimeInput.build(
          [void Function(MalformedTimestampBodyDateTimeInputBuilder) updates]) =
      _$MalformedTimestampBodyDateTimeInput;

  const MalformedTimestampBodyDateTimeInput._();

  factory MalformedTimestampBodyDateTimeInput.fromRequest(
    MalformedTimestampBodyDateTimeInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    MalformedTimestampBodyDateTimeInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampBodyDateTimeInputBuilder b) {}
  DateTime get timestamp;
  @override
  MalformedTimestampBodyDateTimeInput getPayload() => this;
  @override
  List<Object?> get props => [timestamp];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('MalformedTimestampBodyDateTimeInput');
    helper.add(
      'timestamp',
      timestamp,
    );
    return helper.toString();
  }
}

class MalformedTimestampBodyDateTimeInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<MalformedTimestampBodyDateTimeInput> {
  const MalformedTimestampBodyDateTimeInputRestJson1Serializer()
      : super('MalformedTimestampBodyDateTimeInput');

  @override
  Iterable<Type> get types => const [
        MalformedTimestampBodyDateTimeInput,
        _$MalformedTimestampBodyDateTimeInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedTimestampBodyDateTimeInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedTimestampBodyDateTimeInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'timestamp':
          result.timestamp = _i1.TimestampSerializer.dateTime.deserialize(
            serializers,
            value!,
          );
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
    final payload = (object as MalformedTimestampBodyDateTimeInput);
    final result = <Object?>[
      'timestamp',
      _i1.TimestampSerializer.dateTime.serialize(
        serializers,
        payload.timestamp,
      ),
    ];
    return result;
  }
}
