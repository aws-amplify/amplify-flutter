// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.http_prefix_headers_in_response_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'http_prefix_headers_in_response_input.g.dart';

abstract class HttpPrefixHeadersInResponseInput
    with
        _i1.HttpInput<HttpPrefixHeadersInResponseInput>,
        _i2.AWSEquatable<HttpPrefixHeadersInResponseInput>
    implements
        Built<HttpPrefixHeadersInResponseInput,
            HttpPrefixHeadersInResponseInputBuilder>,
        _i1.EmptyPayload {
  factory HttpPrefixHeadersInResponseInput() {
    return _$HttpPrefixHeadersInResponseInput._();
  }

  factory HttpPrefixHeadersInResponseInput.build(
          [void Function(HttpPrefixHeadersInResponseInputBuilder) updates]) =
      _$HttpPrefixHeadersInResponseInput;

  const HttpPrefixHeadersInResponseInput._();

  factory HttpPrefixHeadersInResponseInput.fromRequest(
          HttpPrefixHeadersInResponseInput payload,
          _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    HttpPrefixHeadersInResponseInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPrefixHeadersInResponseInputBuilder b) {}
  @override
  HttpPrefixHeadersInResponseInput getPayload() => this;
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpPrefixHeadersInResponseInput');
    return helper.toString();
  }
}

class HttpPrefixHeadersInResponseInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<HttpPrefixHeadersInResponseInput> {
  const HttpPrefixHeadersInResponseInputRestJson1Serializer()
      : super('HttpPrefixHeadersInResponseInput');

  @override
  Iterable<Type> get types => const [
        HttpPrefixHeadersInResponseInput,
        _$HttpPrefixHeadersInResponseInput
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  HttpPrefixHeadersInResponseInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return HttpPrefixHeadersInResponseInputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
