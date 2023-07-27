// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v1.rest_json_protocol.model.malformed_timestamp_header_epoch_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_timestamp_header_epoch_input.g.dart';

abstract class MalformedTimestampHeaderEpochInput
    with
        _i1.HttpInput<MalformedTimestampHeaderEpochInputPayload>,
        _i2.AWSEquatable<MalformedTimestampHeaderEpochInput>
    implements
        Built<MalformedTimestampHeaderEpochInput,
            MalformedTimestampHeaderEpochInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<MalformedTimestampHeaderEpochInputPayload> {
  factory MalformedTimestampHeaderEpochInput({required DateTime timestamp}) {
    return _$MalformedTimestampHeaderEpochInput._(timestamp: timestamp);
  }

  factory MalformedTimestampHeaderEpochInput.build(
          [void Function(MalformedTimestampHeaderEpochInputBuilder) updates]) =
      _$MalformedTimestampHeaderEpochInput;

  const MalformedTimestampHeaderEpochInput._();

  factory MalformedTimestampHeaderEpochInput.fromRequest(
    MalformedTimestampHeaderEpochInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      MalformedTimestampHeaderEpochInput.build((b) {
        if (request.headers['timestamp'] != null) {
          b.timestamp = _i1.Timestamp.parse(
            int.parse(request.headers['timestamp']!),
            format: _i1.TimestampFormat.epochSeconds,
          ).asDateTime;
        }
      });

  static const List<
          _i1.SmithySerializer<MalformedTimestampHeaderEpochInputPayload>>
      serializers = [MalformedTimestampHeaderEpochInputRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampHeaderEpochInputBuilder b) {}
  DateTime get timestamp;
  @override
  MalformedTimestampHeaderEpochInputPayload getPayload() =>
      MalformedTimestampHeaderEpochInputPayload();
  @override
  List<Object?> get props => [timestamp];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('MalformedTimestampHeaderEpochInput')
          ..add(
            'timestamp',
            timestamp,
          );
    return helper.toString();
  }
}

@_i3.internal
abstract class MalformedTimestampHeaderEpochInputPayload
    with
        _i2.AWSEquatable<MalformedTimestampHeaderEpochInputPayload>
    implements
        Built<MalformedTimestampHeaderEpochInputPayload,
            MalformedTimestampHeaderEpochInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory MalformedTimestampHeaderEpochInputPayload(
      [void Function(MalformedTimestampHeaderEpochInputPayloadBuilder)
          updates]) = _$MalformedTimestampHeaderEpochInputPayload;

  const MalformedTimestampHeaderEpochInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampHeaderEpochInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'MalformedTimestampHeaderEpochInputPayload');
    return helper.toString();
  }
}

class MalformedTimestampHeaderEpochInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<MalformedTimestampHeaderEpochInputPayload> {
  const MalformedTimestampHeaderEpochInputRestJson1Serializer()
      : super('MalformedTimestampHeaderEpochInput');

  @override
  Iterable<Type> get types => const [
        MalformedTimestampHeaderEpochInput,
        _$MalformedTimestampHeaderEpochInput,
        MalformedTimestampHeaderEpochInputPayload,
        _$MalformedTimestampHeaderEpochInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedTimestampHeaderEpochInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return MalformedTimestampHeaderEpochInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MalformedTimestampHeaderEpochInputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
