// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_protocol.model.malformed_timestamp_path_http_date_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_timestamp_path_http_date_input.g.dart';

abstract class MalformedTimestampPathHttpDateInput
    with
        _i1.HttpInput<MalformedTimestampPathHttpDateInputPayload>,
        _i2.AWSEquatable<MalformedTimestampPathHttpDateInput>
    implements
        Built<MalformedTimestampPathHttpDateInput,
            MalformedTimestampPathHttpDateInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<MalformedTimestampPathHttpDateInputPayload> {
  factory MalformedTimestampPathHttpDateInput({required DateTime timestamp}) {
    return _$MalformedTimestampPathHttpDateInput._(timestamp: timestamp);
  }

  factory MalformedTimestampPathHttpDateInput.build(
          [void Function(MalformedTimestampPathHttpDateInputBuilder) updates]) =
      _$MalformedTimestampPathHttpDateInput;

  const MalformedTimestampPathHttpDateInput._();

  factory MalformedTimestampPathHttpDateInput.fromRequest(
    MalformedTimestampPathHttpDateInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      MalformedTimestampPathHttpDateInput.build((b) {
        if (labels['timestamp'] != null) {
          b.timestamp = _i1.Timestamp.parse(
            labels['timestamp']!,
            format: _i1.TimestampFormat.httpDate,
          ).asDateTime;
        }
      });

  static const List<
          _i1.SmithySerializer<MalformedTimestampPathHttpDateInputPayload>>
      serializers = [MalformedTimestampPathHttpDateInputRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampPathHttpDateInputBuilder b) {}
  DateTime get timestamp;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'timestamp':
        return _i1.Timestamp(timestamp)
            .format(_i1.TimestampFormat.httpDate)
            .toString();
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  MalformedTimestampPathHttpDateInputPayload getPayload() =>
      MalformedTimestampPathHttpDateInputPayload();
  @override
  List<Object?> get props => [timestamp];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('MalformedTimestampPathHttpDateInput')
          ..add(
            'timestamp',
            timestamp,
          );
    return helper.toString();
  }
}

@_i3.internal
abstract class MalformedTimestampPathHttpDateInputPayload
    with
        _i2.AWSEquatable<MalformedTimestampPathHttpDateInputPayload>
    implements
        Built<MalformedTimestampPathHttpDateInputPayload,
            MalformedTimestampPathHttpDateInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory MalformedTimestampPathHttpDateInputPayload(
      [void Function(MalformedTimestampPathHttpDateInputPayloadBuilder)
          updates]) = _$MalformedTimestampPathHttpDateInputPayload;

  const MalformedTimestampPathHttpDateInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampPathHttpDateInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'MalformedTimestampPathHttpDateInputPayload');
    return helper.toString();
  }
}

class MalformedTimestampPathHttpDateInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<MalformedTimestampPathHttpDateInputPayload> {
  const MalformedTimestampPathHttpDateInputRestJson1Serializer()
      : super('MalformedTimestampPathHttpDateInput');

  @override
  Iterable<Type> get types => const [
        MalformedTimestampPathHttpDateInput,
        _$MalformedTimestampPathHttpDateInput,
        MalformedTimestampPathHttpDateInputPayload,
        _$MalformedTimestampPathHttpDateInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedTimestampPathHttpDateInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return MalformedTimestampPathHttpDateInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MalformedTimestampPathHttpDateInputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
