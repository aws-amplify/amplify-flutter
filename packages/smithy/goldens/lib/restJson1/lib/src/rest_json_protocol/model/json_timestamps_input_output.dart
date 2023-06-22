// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_protocol.model.json_timestamps_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

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
    DateTime? normal,
    DateTime? dateTime,
    DateTime? dateTimeOnTarget,
    DateTime? epochSeconds,
    DateTime? epochSecondsOnTarget,
    DateTime? httpDate,
    DateTime? httpDateOnTarget,
  }) {
    return _$JsonTimestampsInputOutput._(
      normal: normal,
      dateTime: dateTime,
      dateTimeOnTarget: dateTimeOnTarget,
      epochSeconds: epochSeconds,
      epochSecondsOnTarget: epochSecondsOnTarget,
      httpDate: httpDate,
      httpDateOnTarget: httpDateOnTarget,
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

  static const List<_i1.SmithySerializer<JsonTimestampsInputOutput>>
      serializers = [JsonTimestampsInputOutputRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonTimestampsInputOutputBuilder b) {}
  DateTime? get normal;
  DateTime? get dateTime;
  DateTime? get dateTimeOnTarget;
  DateTime? get epochSeconds;
  DateTime? get epochSecondsOnTarget;
  DateTime? get httpDate;
  DateTime? get httpDateOnTarget;
  @override
  JsonTimestampsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [
        normal,
        dateTime,
        dateTimeOnTarget,
        epochSeconds,
        epochSecondsOnTarget,
        httpDate,
        httpDateOnTarget,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('JsonTimestampsInputOutput')
      ..add(
        'normal',
        normal,
      )
      ..add(
        'dateTime',
        dateTime,
      )
      ..add(
        'dateTimeOnTarget',
        dateTimeOnTarget,
      )
      ..add(
        'epochSeconds',
        epochSeconds,
      )
      ..add(
        'epochSecondsOnTarget',
        epochSecondsOnTarget,
      )
      ..add(
        'httpDate',
        httpDate,
      )
      ..add(
        'httpDateOnTarget',
        httpDateOnTarget,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dateTime':
          result.dateTime = _i1.TimestampSerializer.dateTime.deserialize(
            serializers,
            value,
          );
        case 'dateTimeOnTarget':
          result.dateTimeOnTarget =
              _i1.TimestampSerializer.dateTime.deserialize(
            serializers,
            value,
          );
        case 'epochSeconds':
          result.epochSeconds =
              _i1.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'epochSecondsOnTarget':
          result.epochSecondsOnTarget =
              _i1.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'httpDate':
          result.httpDate = _i1.TimestampSerializer.httpDate.deserialize(
            serializers,
            value,
          );
        case 'httpDateOnTarget':
          result.httpDateOnTarget =
              _i1.TimestampSerializer.httpDate.deserialize(
            serializers,
            value,
          );
        case 'normal':
          result.normal = (serializers.deserialize(
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
    JsonTimestampsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final JsonTimestampsInputOutput(
      :dateTime,
      :dateTimeOnTarget,
      :epochSeconds,
      :epochSecondsOnTarget,
      :httpDate,
      :httpDateOnTarget,
      :normal
    ) = object;
    if (dateTime != null) {
      result$
        ..add('dateTime')
        ..add(_i1.TimestampSerializer.dateTime.serialize(
          serializers,
          dateTime,
        ));
    }
    if (dateTimeOnTarget != null) {
      result$
        ..add('dateTimeOnTarget')
        ..add(_i1.TimestampSerializer.dateTime.serialize(
          serializers,
          dateTimeOnTarget,
        ));
    }
    if (epochSeconds != null) {
      result$
        ..add('epochSeconds')
        ..add(_i1.TimestampSerializer.epochSeconds.serialize(
          serializers,
          epochSeconds,
        ));
    }
    if (epochSecondsOnTarget != null) {
      result$
        ..add('epochSecondsOnTarget')
        ..add(_i1.TimestampSerializer.epochSeconds.serialize(
          serializers,
          epochSecondsOnTarget,
        ));
    }
    if (httpDate != null) {
      result$
        ..add('httpDate')
        ..add(_i1.TimestampSerializer.httpDate.serialize(
          serializers,
          httpDate,
        ));
    }
    if (httpDateOnTarget != null) {
      result$
        ..add('httpDateOnTarget')
        ..add(_i1.TimestampSerializer.httpDate.serialize(
          serializers,
          httpDateOnTarget,
        ));
    }
    if (normal != null) {
      result$
        ..add('normal')
        ..add(serializers.serialize(
          normal,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
