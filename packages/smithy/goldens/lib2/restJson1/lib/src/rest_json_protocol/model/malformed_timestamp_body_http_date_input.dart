// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v2.rest_json_protocol.model.malformed_timestamp_body_http_date_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_timestamp_body_http_date_input.g.dart';

abstract class MalformedTimestampBodyHttpDateInput
    with
        _i1.HttpInput<MalformedTimestampBodyHttpDateInput>,
        _i2.AWSEquatable<MalformedTimestampBodyHttpDateInput>
    implements
        Built<MalformedTimestampBodyHttpDateInput,
            MalformedTimestampBodyHttpDateInputBuilder> {
  factory MalformedTimestampBodyHttpDateInput({required DateTime timestamp}) {
    return _$MalformedTimestampBodyHttpDateInput._(timestamp: timestamp);
  }

  factory MalformedTimestampBodyHttpDateInput.build(
          [void Function(MalformedTimestampBodyHttpDateInputBuilder) updates]) =
      _$MalformedTimestampBodyHttpDateInput;

  const MalformedTimestampBodyHttpDateInput._();

  factory MalformedTimestampBodyHttpDateInput.fromRequest(
    MalformedTimestampBodyHttpDateInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<MalformedTimestampBodyHttpDateInput>>
      serializers = [MalformedTimestampBodyHttpDateInputRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampBodyHttpDateInputBuilder b) {}
  DateTime get timestamp;
  @override
  MalformedTimestampBodyHttpDateInput getPayload() => this;
  @override
  List<Object?> get props => [timestamp];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('MalformedTimestampBodyHttpDateInput')
          ..add(
            'timestamp',
            timestamp,
          );
    return helper.toString();
  }
}

class MalformedTimestampBodyHttpDateInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<MalformedTimestampBodyHttpDateInput> {
  const MalformedTimestampBodyHttpDateInputRestJson1Serializer()
      : super('MalformedTimestampBodyHttpDateInput');

  @override
  Iterable<Type> get types => const [
        MalformedTimestampBodyHttpDateInput,
        _$MalformedTimestampBodyHttpDateInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedTimestampBodyHttpDateInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedTimestampBodyHttpDateInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'timestamp':
          result.timestamp = _i1.TimestampSerializer.httpDate.deserialize(
            serializers,
            value,
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MalformedTimestampBodyHttpDateInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MalformedTimestampBodyHttpDateInput(:timestamp) = object;
    result$.addAll([
      'timestamp',
      _i1.TimestampSerializer.httpDate.serialize(
        serializers,
        timestamp,
      ),
    ]);
    return result$;
  }
}
