// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.malformed_content_type_without_body_empty_input_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_content_type_without_body_empty_input_input.g.dart';

abstract class MalformedContentTypeWithoutBodyEmptyInputInput
    with
        _i1.HttpInput<MalformedContentTypeWithoutBodyEmptyInputInputPayload>,
        _i2.AWSEquatable<MalformedContentTypeWithoutBodyEmptyInputInput>
    implements
        Built<MalformedContentTypeWithoutBodyEmptyInputInput,
            MalformedContentTypeWithoutBodyEmptyInputInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<MalformedContentTypeWithoutBodyEmptyInputInputPayload> {
  factory MalformedContentTypeWithoutBodyEmptyInputInput({String? header}) {
    return _$MalformedContentTypeWithoutBodyEmptyInputInput._(header: header);
  }

  factory MalformedContentTypeWithoutBodyEmptyInputInput.build(
      [void Function(MalformedContentTypeWithoutBodyEmptyInputInputBuilder)
          updates]) = _$MalformedContentTypeWithoutBodyEmptyInputInput;

  const MalformedContentTypeWithoutBodyEmptyInputInput._();

  factory MalformedContentTypeWithoutBodyEmptyInputInput.fromRequest(
    MalformedContentTypeWithoutBodyEmptyInputInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      MalformedContentTypeWithoutBodyEmptyInputInput.build((b) {
        if (request.headers['header'] != null) {
          b.header = request.headers['header']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    MalformedContentTypeWithoutBodyEmptyInputInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedContentTypeWithoutBodyEmptyInputInputBuilder b) {}
  String? get header;
  @override
  MalformedContentTypeWithoutBodyEmptyInputInputPayload getPayload() =>
      MalformedContentTypeWithoutBodyEmptyInputInputPayload();
  @override
  List<Object?> get props => [header];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'MalformedContentTypeWithoutBodyEmptyInputInput');
    helper.add(
      'header',
      header,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class MalformedContentTypeWithoutBodyEmptyInputInputPayload
    with
        _i2.AWSEquatable<MalformedContentTypeWithoutBodyEmptyInputInputPayload>
    implements
        Built<MalformedContentTypeWithoutBodyEmptyInputInputPayload,
            MalformedContentTypeWithoutBodyEmptyInputInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory MalformedContentTypeWithoutBodyEmptyInputInputPayload(
      [void Function(
              MalformedContentTypeWithoutBodyEmptyInputInputPayloadBuilder)
          updates]) = _$MalformedContentTypeWithoutBodyEmptyInputInputPayload;

  const MalformedContentTypeWithoutBodyEmptyInputInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      MalformedContentTypeWithoutBodyEmptyInputInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'MalformedContentTypeWithoutBodyEmptyInputInputPayload');
    return helper.toString();
  }
}

class MalformedContentTypeWithoutBodyEmptyInputInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<
        MalformedContentTypeWithoutBodyEmptyInputInputPayload> {
  const MalformedContentTypeWithoutBodyEmptyInputInputRestJson1Serializer()
      : super('MalformedContentTypeWithoutBodyEmptyInputInput');

  @override
  Iterable<Type> get types => const [
        MalformedContentTypeWithoutBodyEmptyInputInput,
        _$MalformedContentTypeWithoutBodyEmptyInputInput,
        MalformedContentTypeWithoutBodyEmptyInputInputPayload,
        _$MalformedContentTypeWithoutBodyEmptyInputInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedContentTypeWithoutBodyEmptyInputInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return MalformedContentTypeWithoutBodyEmptyInputInputPayloadBuilder()
        .build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
