// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.http_prefix_headers_in_response_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i2;

part 'http_prefix_headers_in_response_output.g.dart';

abstract class HttpPrefixHeadersInResponseOutput
    with
        _i1.AWSEquatable<HttpPrefixHeadersInResponseOutput>
    implements
        Built<HttpPrefixHeadersInResponseOutput,
            HttpPrefixHeadersInResponseOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<HttpPrefixHeadersInResponseOutputPayload> {
  factory HttpPrefixHeadersInResponseOutput(
      {Map<String, String>? prefixHeaders}) {
    return _$HttpPrefixHeadersInResponseOutput._(
        prefixHeaders:
            prefixHeaders == null ? null : _i3.BuiltMap(prefixHeaders));
  }

  factory HttpPrefixHeadersInResponseOutput.build(
          [void Function(HttpPrefixHeadersInResponseOutputBuilder) updates]) =
      _$HttpPrefixHeadersInResponseOutput;

  const HttpPrefixHeadersInResponseOutput._();

  /// Constructs a [HttpPrefixHeadersInResponseOutput] from a [payload] and [response].
  factory HttpPrefixHeadersInResponseOutput.fromResponse(
    HttpPrefixHeadersInResponseOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      HttpPrefixHeadersInResponseOutput.build((b) {
        b.prefixHeaders.addEntries(response.headers.entries);
      });

  static const List<_i2.SmithySerializer> serializers = [
    HttpPrefixHeadersInResponseOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPrefixHeadersInResponseOutputBuilder b) {}
  _i3.BuiltMap<String, String>? get prefixHeaders;
  @override
  HttpPrefixHeadersInResponseOutputPayload getPayload() =>
      HttpPrefixHeadersInResponseOutputPayload();
  @override
  List<Object?> get props => [prefixHeaders];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpPrefixHeadersInResponseOutput');
    helper.add(
      'prefixHeaders',
      prefixHeaders,
    );
    return helper.toString();
  }
}

@_i4.internal
abstract class HttpPrefixHeadersInResponseOutputPayload
    with
        _i1.AWSEquatable<HttpPrefixHeadersInResponseOutputPayload>
    implements
        Built<HttpPrefixHeadersInResponseOutputPayload,
            HttpPrefixHeadersInResponseOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory HttpPrefixHeadersInResponseOutputPayload(
      [void Function(HttpPrefixHeadersInResponseOutputPayloadBuilder)
          updates]) = _$HttpPrefixHeadersInResponseOutputPayload;

  const HttpPrefixHeadersInResponseOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPrefixHeadersInResponseOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpPrefixHeadersInResponseOutputPayload');
    return helper.toString();
  }
}

class HttpPrefixHeadersInResponseOutputRestJson1Serializer extends _i2
    .StructuredSmithySerializer<HttpPrefixHeadersInResponseOutputPayload> {
  const HttpPrefixHeadersInResponseOutputRestJson1Serializer()
      : super('HttpPrefixHeadersInResponseOutput');

  @override
  Iterable<Type> get types => const [
        HttpPrefixHeadersInResponseOutput,
        _$HttpPrefixHeadersInResponseOutput,
        HttpPrefixHeadersInResponseOutputPayload,
        _$HttpPrefixHeadersInResponseOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  HttpPrefixHeadersInResponseOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return HttpPrefixHeadersInResponseOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
