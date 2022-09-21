// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.malformed_timestamp_query_epoch_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_timestamp_query_epoch_input.g.dart';

abstract class MalformedTimestampQueryEpochInput
    with
        _i1.HttpInput<MalformedTimestampQueryEpochInputPayload>,
        _i2.AWSEquatable<MalformedTimestampQueryEpochInput>
    implements
        Built<MalformedTimestampQueryEpochInput,
            MalformedTimestampQueryEpochInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<MalformedTimestampQueryEpochInputPayload> {
  factory MalformedTimestampQueryEpochInput({required DateTime timestamp}) {
    return _$MalformedTimestampQueryEpochInput._(timestamp: timestamp);
  }

  factory MalformedTimestampQueryEpochInput.build(
          [void Function(MalformedTimestampQueryEpochInputBuilder) updates]) =
      _$MalformedTimestampQueryEpochInput;

  const MalformedTimestampQueryEpochInput._();

  factory MalformedTimestampQueryEpochInput.fromRequest(
    MalformedTimestampQueryEpochInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      MalformedTimestampQueryEpochInput.build((b) {
        if (request.queryParameters['timestamp'] != null) {
          b.timestamp = _i1.Timestamp.parse(
            int.parse(request.queryParameters['timestamp']!),
            format: _i1.TimestampFormat.epochSeconds,
          ).asDateTime;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    MalformedTimestampQueryEpochInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampQueryEpochInputBuilder b) {}
  DateTime get timestamp;
  @override
  MalformedTimestampQueryEpochInputPayload getPayload() =>
      MalformedTimestampQueryEpochInputPayload();
  @override
  List<Object?> get props => [timestamp];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('MalformedTimestampQueryEpochInput');
    helper.add(
      'timestamp',
      timestamp,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class MalformedTimestampQueryEpochInputPayload
    with
        _i2.AWSEquatable<MalformedTimestampQueryEpochInputPayload>
    implements
        Built<MalformedTimestampQueryEpochInputPayload,
            MalformedTimestampQueryEpochInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory MalformedTimestampQueryEpochInputPayload(
      [void Function(MalformedTimestampQueryEpochInputPayloadBuilder)
          updates]) = _$MalformedTimestampQueryEpochInputPayload;

  const MalformedTimestampQueryEpochInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampQueryEpochInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('MalformedTimestampQueryEpochInputPayload');
    return helper.toString();
  }
}

class MalformedTimestampQueryEpochInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<MalformedTimestampQueryEpochInputPayload> {
  const MalformedTimestampQueryEpochInputRestJson1Serializer()
      : super('MalformedTimestampQueryEpochInput');

  @override
  Iterable<Type> get types => const [
        MalformedTimestampQueryEpochInput,
        _$MalformedTimestampQueryEpochInput,
        MalformedTimestampQueryEpochInputPayload,
        _$MalformedTimestampQueryEpochInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedTimestampQueryEpochInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return MalformedTimestampQueryEpochInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
