// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.response_code_required_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'response_code_required_output.g.dart';

abstract class ResponseCodeRequiredOutput
    with _i1.AWSEquatable<ResponseCodeRequiredOutput>
    implements
        Built<ResponseCodeRequiredOutput, ResponseCodeRequiredOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<ResponseCodeRequiredOutputPayload> {
  factory ResponseCodeRequiredOutput({int? responseCode}) {
    responseCode ??= 0;
    return _$ResponseCodeRequiredOutput._(responseCode: responseCode);
  }

  factory ResponseCodeRequiredOutput.build(
          [void Function(ResponseCodeRequiredOutputBuilder) updates]) =
      _$ResponseCodeRequiredOutput;

  const ResponseCodeRequiredOutput._();

  /// Constructs a [ResponseCodeRequiredOutput] from a [payload] and [response].
  factory ResponseCodeRequiredOutput.fromResponse(
    ResponseCodeRequiredOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      ResponseCodeRequiredOutput.build((b) {
        b.responseCode = response.statusCode;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ResponseCodeRequiredOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResponseCodeRequiredOutputBuilder b) {
    b.responseCode = 0;
  }

  int get responseCode;
  @override
  ResponseCodeRequiredOutputPayload getPayload() =>
      ResponseCodeRequiredOutputPayload();
  @override
  List<Object?> get props => [responseCode];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResponseCodeRequiredOutput');
    helper.add(
      'responseCode',
      responseCode,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class ResponseCodeRequiredOutputPayload
    with
        _i1.AWSEquatable<ResponseCodeRequiredOutputPayload>
    implements
        Built<ResponseCodeRequiredOutputPayload,
            ResponseCodeRequiredOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory ResponseCodeRequiredOutputPayload(
          [void Function(ResponseCodeRequiredOutputPayloadBuilder) updates]) =
      _$ResponseCodeRequiredOutputPayload;

  const ResponseCodeRequiredOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResponseCodeRequiredOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ResponseCodeRequiredOutputPayload');
    return helper.toString();
  }
}

class ResponseCodeRequiredOutputRestJson1Serializer
    extends _i2.StructuredSmithySerializer<ResponseCodeRequiredOutputPayload> {
  const ResponseCodeRequiredOutputRestJson1Serializer()
      : super('ResponseCodeRequiredOutput');

  @override
  Iterable<Type> get types => const [
        ResponseCodeRequiredOutput,
        _$ResponseCodeRequiredOutput,
        ResponseCodeRequiredOutputPayload,
        _$ResponseCodeRequiredOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  ResponseCodeRequiredOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ResponseCodeRequiredOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
