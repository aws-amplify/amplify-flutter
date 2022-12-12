// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.json_timestamps_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'json_timestamps_input_output.g.dart';

abstract class JsonTimestampsInputOutput
    with
        _i1.HttpInput<JsonTimestampsInputOutput>,
        _i2.AWSEquatable<JsonTimestampsInputOutput>
    implements
        Built<JsonTimestampsInputOutput, JsonTimestampsInputOutputBuilder> {
  factory JsonTimestampsInputOutput({
    DateTime? dateTime,
    DateTime? dateTimeOnTarget,
    DateTime? epochSeconds,
    DateTime? epochSecondsOnTarget,
    DateTime? httpDate,
    DateTime? httpDateOnTarget,
    DateTime? normal,
  }) {
    return _$JsonTimestampsInputOutput._(
      dateTime: dateTime,
      dateTimeOnTarget: dateTimeOnTarget,
      epochSeconds: epochSeconds,
      epochSecondsOnTarget: epochSecondsOnTarget,
      httpDate: httpDate,
      httpDateOnTarget: httpDateOnTarget,
      normal: normal,
    );
  }

  factory JsonTimestampsInputOutput.build(
          [void Function(JsonTimestampsInputOutputBuilder) updates]) =
      _$JsonTimestampsInputOutput;

  const JsonTimestampsInputOutput._();

  factory JsonTimestampsInputOutput.fromRequest(
    JsonTimestampsInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [JsonTimestampsInputOutput] from a [payload] and [response].
  factory JsonTimestampsInputOutput.fromResponse(
    JsonTimestampsInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    JsonTimestampsInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonTimestampsInputOutputBuilder b) {}
  DateTime? get dateTime;
  DateTime? get dateTimeOnTarget;
  DateTime? get epochSeconds;
  DateTime? get epochSecondsOnTarget;
  DateTime? get httpDate;
  DateTime? get httpDateOnTarget;
  DateTime? get normal;
  @override
  JsonTimestampsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [
        dateTime,
        dateTimeOnTarget,
        epochSeconds,
        epochSecondsOnTarget,
        httpDate,
        httpDateOnTarget,
        normal,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('JsonTimestampsInputOutput');
    helper.add(
      'dateTime',
      dateTime,
    );
    helper.add(
      'dateTimeOnTarget',
      dateTimeOnTarget,
    );
    helper.add(
      'epochSeconds',
      epochSeconds,
    );
    helper.add(
      'epochSecondsOnTarget',
      epochSecondsOnTarget,
    );
    helper.add(
      'httpDate',
      httpDate,
    );
    helper.add(
      'httpDateOnTarget',
      httpDateOnTarget,
    );
    helper.add(
      'normal',
      normal,
    );
    return helper.toString();
  }
}

class JsonTimestampsInputOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<JsonTimestampsInputOutput> {
  const JsonTimestampsInputOutputRestJson1Serializer()
      : super('JsonTimestampsInputOutput');

  @override
  Iterable<Type> get types => const [
        JsonTimestampsInputOutput,
        _$JsonTimestampsInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  JsonTimestampsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonTimestampsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'dateTime':
          if (value != null) {
            result.dateTime = _i1.TimestampSerializer.dateTime.deserialize(
              serializers,
              value,
            );
          }
          break;
        case 'dateTimeOnTarget':
          if (value != null) {
            result.dateTimeOnTarget =
                _i1.TimestampSerializer.dateTime.deserialize(
              serializers,
              value,
            );
          }
          break;
        case 'epochSeconds':
          if (value != null) {
            result.epochSeconds =
                _i1.TimestampSerializer.epochSeconds.deserialize(
              serializers,
              value,
            );
          }
          break;
        case 'epochSecondsOnTarget':
          if (value != null) {
            result.epochSecondsOnTarget =
                _i1.TimestampSerializer.epochSeconds.deserialize(
              serializers,
              value,
            );
          }
          break;
        case 'httpDate':
          if (value != null) {
            result.httpDate = _i1.TimestampSerializer.httpDate.deserialize(
              serializers,
              value,
            );
          }
          break;
        case 'httpDateOnTarget':
          if (value != null) {
            result.httpDateOnTarget =
                _i1.TimestampSerializer.httpDate.deserialize(
              serializers,
              value,
            );
          }
          break;
        case 'normal':
          if (value != null) {
            result.normal = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
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
    final payload = (object as JsonTimestampsInputOutput);
    final result = <Object?>[];
    if (payload.dateTime != null) {
      result
        ..add('dateTime')
        ..add(_i1.TimestampSerializer.dateTime.serialize(
          serializers,
          payload.dateTime!,
        ));
    }
    if (payload.dateTimeOnTarget != null) {
      result
        ..add('dateTimeOnTarget')
        ..add(_i1.TimestampSerializer.dateTime.serialize(
          serializers,
          payload.dateTimeOnTarget!,
        ));
    }
    if (payload.epochSeconds != null) {
      result
        ..add('epochSeconds')
        ..add(_i1.TimestampSerializer.epochSeconds.serialize(
          serializers,
          payload.epochSeconds!,
        ));
    }
    if (payload.epochSecondsOnTarget != null) {
      result
        ..add('epochSecondsOnTarget')
        ..add(_i1.TimestampSerializer.epochSeconds.serialize(
          serializers,
          payload.epochSecondsOnTarget!,
        ));
    }
    if (payload.httpDate != null) {
      result
        ..add('httpDate')
        ..add(_i1.TimestampSerializer.httpDate.serialize(
          serializers,
          payload.httpDate!,
        ));
    }
    if (payload.httpDateOnTarget != null) {
      result
        ..add('httpDateOnTarget')
        ..add(_i1.TimestampSerializer.httpDate.serialize(
          serializers,
          payload.httpDateOnTarget!,
        ));
    }
    if (payload.normal != null) {
      result
        ..add('normal')
        ..add(serializers.serialize(
          payload.normal!,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result;
  }
}
