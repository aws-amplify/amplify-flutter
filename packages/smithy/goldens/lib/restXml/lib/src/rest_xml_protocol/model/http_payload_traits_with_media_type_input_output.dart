// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_xml.rest_xml_protocol.model.http_payload_traits_with_media_type_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'http_payload_traits_with_media_type_input_output.g.dart';

abstract class HttpPayloadTraitsWithMediaTypeInputOutput
    with
        _i1.HttpInput<_i2.Uint8List>,
        _i3.AWSEquatable<HttpPayloadTraitsWithMediaTypeInputOutput>
    implements
        Built<HttpPayloadTraitsWithMediaTypeInputOutput,
            HttpPayloadTraitsWithMediaTypeInputOutputBuilder>,
        _i1.HasPayload<_i2.Uint8List> {
  factory HttpPayloadTraitsWithMediaTypeInputOutput(
      {_i2.Uint8List? blob, String? foo}) {
    return _$HttpPayloadTraitsWithMediaTypeInputOutput._(blob: blob, foo: foo);
  }

  factory HttpPayloadTraitsWithMediaTypeInputOutput.build(
      [void Function(HttpPayloadTraitsWithMediaTypeInputOutputBuilder)
          updates]) = _$HttpPayloadTraitsWithMediaTypeInputOutput;

  const HttpPayloadTraitsWithMediaTypeInputOutput._();

  factory HttpPayloadTraitsWithMediaTypeInputOutput.fromRequest(
          _i2.Uint8List? payload, _i3.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      HttpPayloadTraitsWithMediaTypeInputOutput.build((b) {
        b.blob = payload;
        if (request.headers['X-Foo'] != null) {
          b.foo = request.headers['X-Foo']!;
        }
      });

  /// Constructs a [HttpPayloadTraitsWithMediaTypeInputOutput] from a [payload] and [response].
  factory HttpPayloadTraitsWithMediaTypeInputOutput.fromResponse(
          _i2.Uint8List? payload, _i3.AWSBaseHttpResponse response) =>
      HttpPayloadTraitsWithMediaTypeInputOutput.build((b) {
        b.blob = payload;
        if (response.headers['X-Foo'] != null) {
          b.foo = response.headers['X-Foo']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    HttpPayloadTraitsWithMediaTypeInputOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPayloadTraitsWithMediaTypeInputOutputBuilder b) {}
  _i2.Uint8List? get blob;
  String? get foo;
  @override
  _i2.Uint8List? getPayload() => blob;
  @override
  List<Object?> get props => [blob, foo];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'HttpPayloadTraitsWithMediaTypeInputOutput');
    helper.add('blob', blob);
    helper.add('foo', foo);
    return helper.toString();
  }
}

class HttpPayloadTraitsWithMediaTypeInputOutputRestXmlSerializer
    extends _i1.PrimitiveSmithySerializer<Object> {
  const HttpPayloadTraitsWithMediaTypeInputOutputRestXmlSerializer()
      : super('HttpPayloadTraitsWithMediaTypeInputOutput');

  @override
  Iterable<Type> get types => const [
        HttpPayloadTraitsWithMediaTypeInputOutput,
        _$HttpPayloadTraitsWithMediaTypeInputOutput
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  _i2.Uint8List deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return (serializers.deserialize(serialized,
        specifiedType: const FullType(_i2.Uint8List)) as _i2.Uint8List);
  }

  @override
  Object serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      const _i1.XmlElementName('HttpPayloadTraitsWithMediaTypeInputOutput')
    ];
    return result;
  }
}
