// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_validation_protocol.model.malformed_length_query_string_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_length_query_string_input.g.dart';

abstract class MalformedLengthQueryStringInput
    with
        _i1.HttpInput<MalformedLengthQueryStringInputPayload>,
        _i2.AWSEquatable<MalformedLengthQueryStringInput>
    implements
        Built<MalformedLengthQueryStringInput,
            MalformedLengthQueryStringInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<MalformedLengthQueryStringInputPayload> {
  factory MalformedLengthQueryStringInput({String? string}) {
    return _$MalformedLengthQueryStringInput._(string: string);
  }

  factory MalformedLengthQueryStringInput.build(
          [void Function(MalformedLengthQueryStringInputBuilder) updates]) =
      _$MalformedLengthQueryStringInput;

  const MalformedLengthQueryStringInput._();

  factory MalformedLengthQueryStringInput.fromRequest(
    MalformedLengthQueryStringInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      MalformedLengthQueryStringInput.build((b) {
        if (request.queryParameters['string'] != null) {
          b.string = request.queryParameters['string']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    MalformedLengthQueryStringInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedLengthQueryStringInputBuilder b) {}
  String? get string;
  @override
  MalformedLengthQueryStringInputPayload getPayload() =>
      MalformedLengthQueryStringInputPayload();
  @override
  List<Object?> get props => [string];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('MalformedLengthQueryStringInput');
    helper.add(
      'string',
      string,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class MalformedLengthQueryStringInputPayload
    with
        _i2.AWSEquatable<MalformedLengthQueryStringInputPayload>
    implements
        Built<MalformedLengthQueryStringInputPayload,
            MalformedLengthQueryStringInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory MalformedLengthQueryStringInputPayload(
      [void Function(MalformedLengthQueryStringInputPayloadBuilder)
          updates]) = _$MalformedLengthQueryStringInputPayload;

  const MalformedLengthQueryStringInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedLengthQueryStringInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('MalformedLengthQueryStringInputPayload');
    return helper.toString();
  }
}

class MalformedLengthQueryStringInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<MalformedLengthQueryStringInputPayload> {
  const MalformedLengthQueryStringInputRestJson1Serializer()
      : super('MalformedLengthQueryStringInput');

  @override
  Iterable<Type> get types => const [
        MalformedLengthQueryStringInput,
        _$MalformedLengthQueryStringInput,
        MalformedLengthQueryStringInputPayload,
        _$MalformedLengthQueryStringInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedLengthQueryStringInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return MalformedLengthQueryStringInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
