// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.response_code_http_fallback_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'response_code_http_fallback_input_output.g.dart';

abstract class ResponseCodeHttpFallbackInputOutput
    with
        _i1.HttpInput<ResponseCodeHttpFallbackInputOutput>,
        _i2.AWSEquatable<ResponseCodeHttpFallbackInputOutput>
    implements
        Built<ResponseCodeHttpFallbackInputOutput,
            ResponseCodeHttpFallbackInputOutputBuilder>,
        _i1.EmptyPayload {
  factory ResponseCodeHttpFallbackInputOutput() {
    return _$ResponseCodeHttpFallbackInputOutput._();
  }

  factory ResponseCodeHttpFallbackInputOutput.build(
          [void Function(ResponseCodeHttpFallbackInputOutputBuilder) updates]) =
      _$ResponseCodeHttpFallbackInputOutput;

  const ResponseCodeHttpFallbackInputOutput._();

  factory ResponseCodeHttpFallbackInputOutput.fromRequest(
    ResponseCodeHttpFallbackInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [ResponseCodeHttpFallbackInputOutput] from a [payload] and [response].
  factory ResponseCodeHttpFallbackInputOutput.fromResponse(
    ResponseCodeHttpFallbackInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ResponseCodeHttpFallbackInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResponseCodeHttpFallbackInputOutputBuilder b) {}
  @override
  ResponseCodeHttpFallbackInputOutput getPayload() => this;
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ResponseCodeHttpFallbackInputOutput');
    return helper.toString();
  }
}

class ResponseCodeHttpFallbackInputOutputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<ResponseCodeHttpFallbackInputOutput> {
  const ResponseCodeHttpFallbackInputOutputRestJson1Serializer()
      : super('ResponseCodeHttpFallbackInputOutput');

  @override
  Iterable<Type> get types => const [
        ResponseCodeHttpFallbackInputOutput,
        _$ResponseCodeHttpFallbackInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  ResponseCodeHttpFallbackInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ResponseCodeHttpFallbackInputOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
