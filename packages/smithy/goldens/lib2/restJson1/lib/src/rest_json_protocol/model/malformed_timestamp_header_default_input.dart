// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.malformed_timestamp_header_default_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_timestamp_header_default_input.g.dart';

abstract class MalformedTimestampHeaderDefaultInput
    with
        _i1.HttpInput<MalformedTimestampHeaderDefaultInputPayload>,
        _i2.AWSEquatable<MalformedTimestampHeaderDefaultInput>
    implements
        Built<MalformedTimestampHeaderDefaultInput,
            MalformedTimestampHeaderDefaultInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<MalformedTimestampHeaderDefaultInputPayload> {
  factory MalformedTimestampHeaderDefaultInput({required DateTime timestamp}) {
    return _$MalformedTimestampHeaderDefaultInput._(timestamp: timestamp);
  }

  factory MalformedTimestampHeaderDefaultInput.build(
      [void Function(MalformedTimestampHeaderDefaultInputBuilder)
          updates]) = _$MalformedTimestampHeaderDefaultInput;

  const MalformedTimestampHeaderDefaultInput._();

  factory MalformedTimestampHeaderDefaultInput.fromRequest(
    MalformedTimestampHeaderDefaultInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      MalformedTimestampHeaderDefaultInput.build((b) {
        if (request.headers['timestamp'] != null) {
          b.timestamp = _i1.Timestamp.parse(
            request.headers['timestamp']!,
            format: _i1.TimestampFormat.httpDate,
          ).asDateTime;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    MalformedTimestampHeaderDefaultInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampHeaderDefaultInputBuilder b) {}
  DateTime get timestamp;
  @override
  MalformedTimestampHeaderDefaultInputPayload getPayload() =>
      MalformedTimestampHeaderDefaultInputPayload();
  @override
  List<Object?> get props => [timestamp];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('MalformedTimestampHeaderDefaultInput');
    helper.add(
      'timestamp',
      timestamp,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class MalformedTimestampHeaderDefaultInputPayload
    with
        _i2.AWSEquatable<MalformedTimestampHeaderDefaultInputPayload>
    implements
        Built<MalformedTimestampHeaderDefaultInputPayload,
            MalformedTimestampHeaderDefaultInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory MalformedTimestampHeaderDefaultInputPayload(
      [void Function(MalformedTimestampHeaderDefaultInputPayloadBuilder)
          updates]) = _$MalformedTimestampHeaderDefaultInputPayload;

  const MalformedTimestampHeaderDefaultInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampHeaderDefaultInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'MalformedTimestampHeaderDefaultInputPayload');
    return helper.toString();
  }
}

class MalformedTimestampHeaderDefaultInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<MalformedTimestampHeaderDefaultInputPayload> {
  const MalformedTimestampHeaderDefaultInputRestJson1Serializer()
      : super('MalformedTimestampHeaderDefaultInput');

  @override
  Iterable<Type> get types => const [
        MalformedTimestampHeaderDefaultInput,
        _$MalformedTimestampHeaderDefaultInput,
        MalformedTimestampHeaderDefaultInputPayload,
        _$MalformedTimestampHeaderDefaultInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedTimestampHeaderDefaultInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return MalformedTimestampHeaderDefaultInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
