// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.malformed_timestamp_path_default_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_timestamp_path_default_input.g.dart';

abstract class MalformedTimestampPathDefaultInput
    with
        _i1.HttpInput<MalformedTimestampPathDefaultInputPayload>,
        _i2.AWSEquatable<MalformedTimestampPathDefaultInput>
    implements
        Built<MalformedTimestampPathDefaultInput,
            MalformedTimestampPathDefaultInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<MalformedTimestampPathDefaultInputPayload> {
  factory MalformedTimestampPathDefaultInput({required DateTime timestamp}) {
    return _$MalformedTimestampPathDefaultInput._(timestamp: timestamp);
  }

  factory MalformedTimestampPathDefaultInput.build(
          [void Function(MalformedTimestampPathDefaultInputBuilder) updates]) =
      _$MalformedTimestampPathDefaultInput;

  const MalformedTimestampPathDefaultInput._();

  factory MalformedTimestampPathDefaultInput.fromRequest(
    MalformedTimestampPathDefaultInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      MalformedTimestampPathDefaultInput.build((b) {
        if (labels['timestamp'] != null) {
          b.timestamp = _i1.Timestamp.parse(
            labels['timestamp']!,
            format: _i1.TimestampFormat.dateTime,
          ).asDateTime;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    MalformedTimestampPathDefaultInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampPathDefaultInputBuilder b) {}
  DateTime get timestamp;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'timestamp':
        return _i1.Timestamp(timestamp)
            .format(_i1.TimestampFormat.dateTime)
            .toString();
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  MalformedTimestampPathDefaultInputPayload getPayload() =>
      MalformedTimestampPathDefaultInputPayload();
  @override
  List<Object?> get props => [timestamp];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('MalformedTimestampPathDefaultInput');
    helper.add(
      'timestamp',
      timestamp,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class MalformedTimestampPathDefaultInputPayload
    with
        _i2.AWSEquatable<MalformedTimestampPathDefaultInputPayload>
    implements
        Built<MalformedTimestampPathDefaultInputPayload,
            MalformedTimestampPathDefaultInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory MalformedTimestampPathDefaultInputPayload(
      [void Function(MalformedTimestampPathDefaultInputPayloadBuilder)
          updates]) = _$MalformedTimestampPathDefaultInputPayload;

  const MalformedTimestampPathDefaultInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampPathDefaultInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'MalformedTimestampPathDefaultInputPayload');
    return helper.toString();
  }
}

class MalformedTimestampPathDefaultInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<MalformedTimestampPathDefaultInputPayload> {
  const MalformedTimestampPathDefaultInputRestJson1Serializer()
      : super('MalformedTimestampPathDefaultInput');

  @override
  Iterable<Type> get types => const [
        MalformedTimestampPathDefaultInput,
        _$MalformedTimestampPathDefaultInput,
        MalformedTimestampPathDefaultInputPayload,
        _$MalformedTimestampPathDefaultInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedTimestampPathDefaultInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return MalformedTimestampPathDefaultInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
