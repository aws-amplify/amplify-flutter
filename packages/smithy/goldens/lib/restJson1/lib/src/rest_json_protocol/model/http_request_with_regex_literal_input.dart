// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_protocol.model.http_request_with_regex_literal_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'http_request_with_regex_literal_input.g.dart';

abstract class HttpRequestWithRegexLiteralInput
    with
        _i1.HttpInput<HttpRequestWithRegexLiteralInputPayload>,
        _i2.AWSEquatable<HttpRequestWithRegexLiteralInput>
    implements
        Built<HttpRequestWithRegexLiteralInput,
            HttpRequestWithRegexLiteralInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<HttpRequestWithRegexLiteralInputPayload> {
  factory HttpRequestWithRegexLiteralInput({required String str}) {
    return _$HttpRequestWithRegexLiteralInput._(str: str);
  }

  factory HttpRequestWithRegexLiteralInput.build(
          [void Function(HttpRequestWithRegexLiteralInputBuilder) updates]) =
      _$HttpRequestWithRegexLiteralInput;

  const HttpRequestWithRegexLiteralInput._();

  factory HttpRequestWithRegexLiteralInput.fromRequest(
    HttpRequestWithRegexLiteralInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      HttpRequestWithRegexLiteralInput.build((b) {
        if (labels['str'] != null) {
          b.str = labels['str']!;
        }
      });

  static const List<
          _i1.SmithySerializer<HttpRequestWithRegexLiteralInputPayload>>
      serializers = [HttpRequestWithRegexLiteralInputRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpRequestWithRegexLiteralInputBuilder b) {}
  String get str;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'str':
        return str;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  HttpRequestWithRegexLiteralInputPayload getPayload() =>
      HttpRequestWithRegexLiteralInputPayload();
  @override
  List<Object?> get props => [str];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpRequestWithRegexLiteralInput')
          ..add(
            'str',
            str,
          );
    return helper.toString();
  }
}

@_i3.internal
abstract class HttpRequestWithRegexLiteralInputPayload
    with
        _i2.AWSEquatable<HttpRequestWithRegexLiteralInputPayload>
    implements
        Built<HttpRequestWithRegexLiteralInputPayload,
            HttpRequestWithRegexLiteralInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory HttpRequestWithRegexLiteralInputPayload(
      [void Function(HttpRequestWithRegexLiteralInputPayloadBuilder)
          updates]) = _$HttpRequestWithRegexLiteralInputPayload;

  const HttpRequestWithRegexLiteralInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpRequestWithRegexLiteralInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpRequestWithRegexLiteralInputPayload');
    return helper.toString();
  }
}

class HttpRequestWithRegexLiteralInputRestJson1Serializer extends _i1
    .StructuredSmithySerializer<HttpRequestWithRegexLiteralInputPayload> {
  const HttpRequestWithRegexLiteralInputRestJson1Serializer()
      : super('HttpRequestWithRegexLiteralInput');

  @override
  Iterable<Type> get types => const [
        HttpRequestWithRegexLiteralInput,
        _$HttpRequestWithRegexLiteralInput,
        HttpRequestWithRegexLiteralInputPayload,
        _$HttpRequestWithRegexLiteralInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  HttpRequestWithRegexLiteralInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return HttpRequestWithRegexLiteralInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    HttpRequestWithRegexLiteralInputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
