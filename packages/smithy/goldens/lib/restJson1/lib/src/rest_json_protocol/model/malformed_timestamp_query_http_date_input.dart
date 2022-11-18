// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.malformed_timestamp_query_http_date_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_timestamp_query_http_date_input.g.dart';

abstract class MalformedTimestampQueryHttpDateInput
    with
        _i1.HttpInput<MalformedTimestampQueryHttpDateInputPayload>,
        _i2.AWSEquatable<MalformedTimestampQueryHttpDateInput>
    implements
        Built<MalformedTimestampQueryHttpDateInput,
            MalformedTimestampQueryHttpDateInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<MalformedTimestampQueryHttpDateInputPayload> {
  factory MalformedTimestampQueryHttpDateInput({required DateTime timestamp}) {
    return _$MalformedTimestampQueryHttpDateInput._(timestamp: timestamp);
  }

  factory MalformedTimestampQueryHttpDateInput.build(
      [void Function(MalformedTimestampQueryHttpDateInputBuilder)
          updates]) = _$MalformedTimestampQueryHttpDateInput;

  const MalformedTimestampQueryHttpDateInput._();

  factory MalformedTimestampQueryHttpDateInput.fromRequest(
    MalformedTimestampQueryHttpDateInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      MalformedTimestampQueryHttpDateInput.build((b) {
        if (request.queryParameters['timestamp'] != null) {
          b.timestamp = _i1.Timestamp.parse(
            request.queryParameters['timestamp']!,
            format: _i1.TimestampFormat.httpDate,
          ).asDateTime;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    MalformedTimestampQueryHttpDateInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampQueryHttpDateInputBuilder b) {}
  DateTime get timestamp;
  @override
  MalformedTimestampQueryHttpDateInputPayload getPayload() =>
      MalformedTimestampQueryHttpDateInputPayload();
  @override
  List<Object?> get props => [timestamp];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('MalformedTimestampQueryHttpDateInput');
    helper.add(
      'timestamp',
      timestamp,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class MalformedTimestampQueryHttpDateInputPayload
    with
        _i2.AWSEquatable<MalformedTimestampQueryHttpDateInputPayload>
    implements
        Built<MalformedTimestampQueryHttpDateInputPayload,
            MalformedTimestampQueryHttpDateInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory MalformedTimestampQueryHttpDateInputPayload(
      [void Function(MalformedTimestampQueryHttpDateInputPayloadBuilder)
          updates]) = _$MalformedTimestampQueryHttpDateInputPayload;

  const MalformedTimestampQueryHttpDateInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedTimestampQueryHttpDateInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'MalformedTimestampQueryHttpDateInputPayload');
    return helper.toString();
  }
}

class MalformedTimestampQueryHttpDateInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<MalformedTimestampQueryHttpDateInputPayload> {
  const MalformedTimestampQueryHttpDateInputRestJson1Serializer()
      : super('MalformedTimestampQueryHttpDateInput');

  @override
  Iterable<Type> get types => const [
        MalformedTimestampQueryHttpDateInput,
        _$MalformedTimestampQueryHttpDateInput,
        MalformedTimestampQueryHttpDateInputPayload,
        _$MalformedTimestampQueryHttpDateInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedTimestampQueryHttpDateInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return MalformedTimestampQueryHttpDateInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
