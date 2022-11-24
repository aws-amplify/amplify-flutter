// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.test_payload_blob_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'test_payload_blob_input_output.g.dart';

abstract class TestPayloadBlobInputOutput
    with
        _i1.HttpInput<_i2.Uint8List>,
        _i3.AWSEquatable<TestPayloadBlobInputOutput>
    implements
        Built<TestPayloadBlobInputOutput, TestPayloadBlobInputOutputBuilder>,
        _i1.HasPayload<_i2.Uint8List> {
  factory TestPayloadBlobInputOutput({
    String? contentType,
    _i2.Uint8List? data,
  }) {
    return _$TestPayloadBlobInputOutput._(
      contentType: contentType,
      data: data,
    );
  }

  factory TestPayloadBlobInputOutput.build(
          [void Function(TestPayloadBlobInputOutputBuilder) updates]) =
      _$TestPayloadBlobInputOutput;

  const TestPayloadBlobInputOutput._();

  factory TestPayloadBlobInputOutput.fromRequest(
    _i2.Uint8List? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      TestPayloadBlobInputOutput.build((b) {
        b.data = payload;
        if (request.headers['Content-Type'] != null) {
          b.contentType = request.headers['Content-Type']!;
        }
      });

  /// Constructs a [TestPayloadBlobInputOutput] from a [payload] and [response].
  factory TestPayloadBlobInputOutput.fromResponse(
    _i2.Uint8List? payload,
    _i3.AWSBaseHttpResponse response,
  ) =>
      TestPayloadBlobInputOutput.build((b) {
        b.data = payload;
        if (response.headers['Content-Type'] != null) {
          b.contentType = response.headers['Content-Type']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    TestPayloadBlobInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestPayloadBlobInputOutputBuilder b) {}
  String? get contentType;
  _i2.Uint8List? get data;
  @override
  _i2.Uint8List? getPayload() => data;
  @override
  List<Object?> get props => [
        contentType,
        data,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TestPayloadBlobInputOutput');
    helper.add(
      'contentType',
      contentType,
    );
    helper.add(
      'data',
      data,
    );
    return helper.toString();
  }
}

class TestPayloadBlobInputOutputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<_i2.Uint8List> {
  const TestPayloadBlobInputOutputRestJson1Serializer()
      : super('TestPayloadBlobInputOutput');

  @override
  Iterable<Type> get types => const [
        TestPayloadBlobInputOutput,
        _$TestPayloadBlobInputOutput,
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
    final payload = object is TestPayloadBlobInputOutput
        ? object.getPayload()
        : (object as _i2.Uint8List?);
    return (serializers.serialize(
      payload!,
      specifiedType: const FullType(_i2.Uint8List),
    ) as Object);
  }
}
