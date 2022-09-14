// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.http_prefix_headers_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i2;

part 'http_prefix_headers_output.g.dart';

abstract class HttpPrefixHeadersOutput
    with _i1.AWSEquatable<HttpPrefixHeadersOutput>
    implements
        Built<HttpPrefixHeadersOutput, HttpPrefixHeadersOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<HttpPrefixHeadersOutputPayload> {
  factory HttpPrefixHeadersOutput(
      {String? foo, _i3.BuiltMap<String, String>? fooMap}) {
    return _$HttpPrefixHeadersOutput._(foo: foo, fooMap: fooMap);
  }

  factory HttpPrefixHeadersOutput.build(
          [void Function(HttpPrefixHeadersOutputBuilder) updates]) =
      _$HttpPrefixHeadersOutput;

  const HttpPrefixHeadersOutput._();

  /// Constructs a [HttpPrefixHeadersOutput] from a [payload] and [response].
  factory HttpPrefixHeadersOutput.fromResponse(
          HttpPrefixHeadersOutputPayload payload,
          _i1.AWSBaseHttpResponse response) =>
      HttpPrefixHeadersOutput.build((b) {
        if (response.headers['X-Foo'] != null) {
          b.foo = response.headers['X-Foo']!;
        }
        b.fooMap.addEntries(response.headers.entries
            .where((el) => el.key.startsWith('X-Foo-'))
            .map(
                (el) => MapEntry(el.key.replaceFirst('X-Foo-', ''), el.value)));
      });

  static const List<_i2.SmithySerializer> serializers = [
    HttpPrefixHeadersOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPrefixHeadersOutputBuilder b) {}
  String? get foo;
  _i3.BuiltMap<String, String>? get fooMap;
  @override
  HttpPrefixHeadersOutputPayload getPayload() =>
      HttpPrefixHeadersOutputPayload();
  @override
  List<Object?> get props => [foo, fooMap];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HttpPrefixHeadersOutput');
    helper.add('foo', foo);
    helper.add('fooMap', fooMap);
    return helper.toString();
  }
}

@_i4.internal
abstract class HttpPrefixHeadersOutputPayload
    with
        _i1.AWSEquatable<HttpPrefixHeadersOutputPayload>
    implements
        Built<HttpPrefixHeadersOutputPayload,
            HttpPrefixHeadersOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory HttpPrefixHeadersOutputPayload(
          [void Function(HttpPrefixHeadersOutputPayloadBuilder) updates]) =
      _$HttpPrefixHeadersOutputPayload;

  const HttpPrefixHeadersOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPrefixHeadersOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpPrefixHeadersOutputPayload');
    return helper.toString();
  }
}

class HttpPrefixHeadersOutputRestJson1Serializer
    extends _i2.StructuredSmithySerializer<HttpPrefixHeadersOutputPayload> {
  const HttpPrefixHeadersOutputRestJson1Serializer()
      : super('HttpPrefixHeadersOutput');

  @override
  Iterable<Type> get types => const [
        HttpPrefixHeadersOutput,
        _$HttpPrefixHeadersOutput,
        HttpPrefixHeadersOutputPayload,
        _$HttpPrefixHeadersOutputPayload
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  HttpPrefixHeadersOutputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return HttpPrefixHeadersOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
