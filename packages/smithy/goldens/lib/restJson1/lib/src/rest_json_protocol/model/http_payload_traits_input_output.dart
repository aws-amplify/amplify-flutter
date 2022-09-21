// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.http_payload_traits_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'http_payload_traits_input_output.g.dart';

abstract class HttpPayloadTraitsInputOutput
    with
        _i1.HttpInput<_i2.Uint8List>,
        _i3.AWSEquatable<HttpPayloadTraitsInputOutput>
    implements
        Built<HttpPayloadTraitsInputOutput,
            HttpPayloadTraitsInputOutputBuilder>,
        _i1.HasPayload<_i2.Uint8List> {
  factory HttpPayloadTraitsInputOutput({
    _i2.Uint8List? blob,
    String? foo,
  }) {
    return _$HttpPayloadTraitsInputOutput._(
      blob: blob,
      foo: foo,
    );
  }

  factory HttpPayloadTraitsInputOutput.build(
          [void Function(HttpPayloadTraitsInputOutputBuilder) updates]) =
      _$HttpPayloadTraitsInputOutput;

  const HttpPayloadTraitsInputOutput._();

  factory HttpPayloadTraitsInputOutput.fromRequest(
    _i2.Uint8List? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      HttpPayloadTraitsInputOutput.build((b) {
        b.blob = payload;
        if (request.headers['X-Foo'] != null) {
          b.foo = request.headers['X-Foo']!;
        }
      });

  /// Constructs a [HttpPayloadTraitsInputOutput] from a [payload] and [response].
  factory HttpPayloadTraitsInputOutput.fromResponse(
    _i2.Uint8List? payload,
    _i3.AWSBaseHttpResponse response,
  ) =>
      HttpPayloadTraitsInputOutput.build((b) {
        b.blob = payload;
        if (response.headers['X-Foo'] != null) {
          b.foo = response.headers['X-Foo']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    HttpPayloadTraitsInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPayloadTraitsInputOutputBuilder b) {}
  _i2.Uint8List? get blob;
  String? get foo;
  @override
  _i2.Uint8List? getPayload() => blob;
  @override
  List<Object?> get props => [
        blob,
        foo,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HttpPayloadTraitsInputOutput');
    helper.add(
      'blob',
      blob,
    );
    helper.add(
      'foo',
      foo,
    );
    return helper.toString();
  }
}

class HttpPayloadTraitsInputOutputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<_i2.Uint8List> {
  const HttpPayloadTraitsInputOutputRestJson1Serializer()
      : super('HttpPayloadTraitsInputOutput');

  @override
  Iterable<Type> get types => const [
        HttpPayloadTraitsInputOutput,
        _$HttpPayloadTraitsInputOutput,
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
    final payload = object is HttpPayloadTraitsInputOutput
        ? object.getPayload()
        : (object as _i2.Uint8List?);
    return (serializers.serialize(
      payload!,
      specifiedType: const FullType(_i2.Uint8List),
    ) as Object);
  }
}
