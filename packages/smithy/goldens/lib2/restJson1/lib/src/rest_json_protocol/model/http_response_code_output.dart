// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.http_response_code_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'http_response_code_output.g.dart';

abstract class HttpResponseCodeOutput
    with _i1.AWSEquatable<HttpResponseCodeOutput>
    implements
        Built<HttpResponseCodeOutput, HttpResponseCodeOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<HttpResponseCodeOutputPayload> {
  factory HttpResponseCodeOutput({int? status}) {
    return _$HttpResponseCodeOutput._(status: status);
  }

  factory HttpResponseCodeOutput.build(
          [void Function(HttpResponseCodeOutputBuilder) updates]) =
      _$HttpResponseCodeOutput;

  const HttpResponseCodeOutput._();

  /// Constructs a [HttpResponseCodeOutput] from a [payload] and [response].
  factory HttpResponseCodeOutput.fromResponse(
    HttpResponseCodeOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      HttpResponseCodeOutput.build((b) {
        b.status = response.statusCode;
      });

  static const List<_i2.SmithySerializer> serializers = [
    HttpResponseCodeOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpResponseCodeOutputBuilder b) {}
  int? get status;
  @override
  HttpResponseCodeOutputPayload getPayload() => HttpResponseCodeOutputPayload();
  @override
  List<Object?> get props => [status];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HttpResponseCodeOutput');
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class HttpResponseCodeOutputPayload
    with
        _i1.AWSEquatable<HttpResponseCodeOutputPayload>
    implements
        Built<HttpResponseCodeOutputPayload,
            HttpResponseCodeOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory HttpResponseCodeOutputPayload(
          [void Function(HttpResponseCodeOutputPayloadBuilder) updates]) =
      _$HttpResponseCodeOutputPayload;

  const HttpResponseCodeOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpResponseCodeOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HttpResponseCodeOutputPayload');
    return helper.toString();
  }
}

class HttpResponseCodeOutputRestJson1Serializer
    extends _i2.StructuredSmithySerializer<HttpResponseCodeOutputPayload> {
  const HttpResponseCodeOutputRestJson1Serializer()
      : super('HttpResponseCodeOutput');

  @override
  Iterable<Type> get types => const [
        HttpResponseCodeOutput,
        _$HttpResponseCodeOutput,
        HttpResponseCodeOutputPayload,
        _$HttpResponseCodeOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  HttpResponseCodeOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return HttpResponseCodeOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
