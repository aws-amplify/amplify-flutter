// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library custom_v2.custom_service.model.http_checksum_required_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'http_checksum_required_input.g.dart';

abstract class HttpChecksumRequiredInput
    with
        _i1.HttpInput<_i2.Uint8List>,
        _i3.AWSEquatable<HttpChecksumRequiredInput>
    implements
        Built<HttpChecksumRequiredInput, HttpChecksumRequiredInputBuilder>,
        _i1.HasPayload<_i2.Uint8List> {
  factory HttpChecksumRequiredInput({_i2.Uint8List? content}) {
    return _$HttpChecksumRequiredInput._(content: content);
  }

  factory HttpChecksumRequiredInput.build(
          [void Function(HttpChecksumRequiredInputBuilder) updates]) =
      _$HttpChecksumRequiredInput;

  const HttpChecksumRequiredInput._();

  factory HttpChecksumRequiredInput.fromRequest(
    _i2.Uint8List? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      HttpChecksumRequiredInput.build((b) {
        b.content = payload;
      });

  static const List<_i1.SmithySerializer> serializers = [
    HttpChecksumRequiredInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpChecksumRequiredInputBuilder b) {}
  _i2.Uint8List? get content;
  @override
  _i2.Uint8List? getPayload() => content;
  @override
  List<Object?> get props => [content];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HttpChecksumRequiredInput');
    helper.add(
      'content',
      content,
    );
    return helper.toString();
  }
}

class HttpChecksumRequiredInputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<_i2.Uint8List> {
  const HttpChecksumRequiredInputRestJson1Serializer()
      : super('HttpChecksumRequiredInput');

  @override
  Iterable<Type> get types => const [
        HttpChecksumRequiredInput,
        _$HttpChecksumRequiredInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i2.Uint8List deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(_i2.Uint8List),
    ) as _i2.Uint8List);
  }

  @override
  Object serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is HttpChecksumRequiredInput
        ? object.getPayload()
        : (object as _i2.Uint8List?);
    return (serializers.serialize(
      payload!,
      specifiedType: const FullType(_i2.Uint8List),
    ) as Object);
  }
}
