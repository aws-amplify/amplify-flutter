// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library custom_v2.custom.model.http_checksum_required_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

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

  factory HttpChecksumRequiredInput.build([
    void Function(HttpChecksumRequiredInputBuilder) updates,
  ]) = _$HttpChecksumRequiredInput;

  const HttpChecksumRequiredInput._();

  factory HttpChecksumRequiredInput.fromRequest(
    _i2.Uint8List? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => HttpChecksumRequiredInput.build((b) {
    b.content = payload;
  });

  static const List<_i1.SmithySerializer<_i2.Uint8List?>> serializers = [
    HttpChecksumRequiredInputRestJson1Serializer(),
  ];

  _i2.Uint8List? get content;
  @override
  _i2.Uint8List? getPayload() => content;

  @override
  List<Object?> get props => [content];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HttpChecksumRequiredInput')
      ..add('content', content);
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
    _i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
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
        )
        as _i2.Uint8List);
  }

  @override
  Object serialize(
    Serializers serializers,
    _i2.Uint8List object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: const FullType(_i2.Uint8List),
    )!;
  }
}
