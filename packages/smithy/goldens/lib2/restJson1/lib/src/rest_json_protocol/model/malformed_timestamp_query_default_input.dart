// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.malformed_timestamp_query_default_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_timestamp_query_default_input.g.dart';

abstract class MalformedTimestampQueryDefaultInput
    with
        _i1.HttpInput<MalformedTimestampQueryDefaultInputPayload>,
        _i2.AWSEquatable<MalformedTimestampQueryDefaultInput>
    implements
        Built<MalformedTimestampQueryDefaultInput,
            MalformedTimestampQueryDefaultInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<MalformedTimestampQueryDefaultInputPayload> {
  factory MalformedTimestampQueryDefaultInput({required DateTime timestamp}) {
    return _$MalformedTimestampQueryDefaultInput._(timestamp: timestamp);
  }

  factory MalformedTimestampQueryDefaultInput.build(
          [void Function(MalformedTimestampQueryDefaultInputBuilder) updates]) =
      _$MalformedTimestampQueryDefaultInput;

  const MalformedTimestampQueryDefaultInput._();

  factory MalformedTimestampQueryDefaultInput.fromRequest(
    MalformedTimestampQueryDefaultInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      MalformedTimestampQueryDefaultInput.build((b) {
        if (request.queryParameters['timestamp'] != null) {
          b.timestamp = _i1.Timestamp.parse(
            request.queryParameters['timestamp']!,
            format: _i1.TimestampFormat.dateTime,
          ).asDateTime;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    MalformedTimestampQueryDefaultInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampQueryDefaultInputBuilder b) {}
  DateTime get timestamp;
  @override
  MalformedTimestampQueryDefaultInputPayload getPayload() =>
      MalformedTimestampQueryDefaultInputPayload();
  @override
  List<Object?> get props => [timestamp];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('MalformedTimestampQueryDefaultInput');
    helper.add(
      'timestamp',
      timestamp,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class MalformedTimestampQueryDefaultInputPayload
    with
        _i2.AWSEquatable<MalformedTimestampQueryDefaultInputPayload>
    implements
        Built<MalformedTimestampQueryDefaultInputPayload,
            MalformedTimestampQueryDefaultInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory MalformedTimestampQueryDefaultInputPayload(
      [void Function(MalformedTimestampQueryDefaultInputPayloadBuilder)
          updates]) = _$MalformedTimestampQueryDefaultInputPayload;

  const MalformedTimestampQueryDefaultInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampQueryDefaultInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'MalformedTimestampQueryDefaultInputPayload');
    return helper.toString();
  }
}

class MalformedTimestampQueryDefaultInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<MalformedTimestampQueryDefaultInputPayload> {
  const MalformedTimestampQueryDefaultInputRestJson1Serializer()
      : super('MalformedTimestampQueryDefaultInput');

  @override
  Iterable<Type> get types => const [
        MalformedTimestampQueryDefaultInput,
        _$MalformedTimestampQueryDefaultInput,
        MalformedTimestampQueryDefaultInputPayload,
        _$MalformedTimestampQueryDefaultInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedTimestampQueryDefaultInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return MalformedTimestampQueryDefaultInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
