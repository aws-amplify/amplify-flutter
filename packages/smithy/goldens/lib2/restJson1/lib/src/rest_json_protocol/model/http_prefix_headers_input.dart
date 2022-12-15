// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.http_prefix_headers_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'http_prefix_headers_input.g.dart';

abstract class HttpPrefixHeadersInput
    with
        _i1.HttpInput<HttpPrefixHeadersInputPayload>,
        _i2.AWSEquatable<HttpPrefixHeadersInput>
    implements
        Built<HttpPrefixHeadersInput, HttpPrefixHeadersInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<HttpPrefixHeadersInputPayload> {
  factory HttpPrefixHeadersInput({
    String? foo,
    Map<String, String>? fooMap,
  }) {
    return _$HttpPrefixHeadersInput._(
      foo: foo,
      fooMap: fooMap == null ? null : _i3.BuiltMap(fooMap),
    );
  }

  factory HttpPrefixHeadersInput.build(
          [void Function(HttpPrefixHeadersInputBuilder) updates]) =
      _$HttpPrefixHeadersInput;

  const HttpPrefixHeadersInput._();

  factory HttpPrefixHeadersInput.fromRequest(
    HttpPrefixHeadersInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      HttpPrefixHeadersInput.build((b) {
        if (request.headers['X-Foo'] != null) {
          b.foo = request.headers['X-Foo']!;
        }
        b.fooMap.addEntries(request.headers.entries
            .where((el) => el.key.startsWith('X-Foo-'))
            .map((el) => MapEntry(
                  el.key.replaceFirst(
                    'X-Foo-',
                    '',
                  ),
                  el.value,
                )));
      });

  static const List<_i1.SmithySerializer> serializers = [
    HttpPrefixHeadersInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPrefixHeadersInputBuilder b) {}
  String? get foo;
  _i3.BuiltMap<String, String>? get fooMap;
  @override
  HttpPrefixHeadersInputPayload getPayload() => HttpPrefixHeadersInputPayload();
  @override
  List<Object?> get props => [
        foo,
        fooMap,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HttpPrefixHeadersInput');
    helper.add(
      'foo',
      foo,
    );
    helper.add(
      'fooMap',
      fooMap,
    );
    return helper.toString();
  }
}

@_i4.internal
abstract class HttpPrefixHeadersInputPayload
    with
        _i2.AWSEquatable<HttpPrefixHeadersInputPayload>
    implements
        Built<HttpPrefixHeadersInputPayload,
            HttpPrefixHeadersInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory HttpPrefixHeadersInputPayload(
          [void Function(HttpPrefixHeadersInputPayloadBuilder) updates]) =
      _$HttpPrefixHeadersInputPayload;

  const HttpPrefixHeadersInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpPrefixHeadersInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HttpPrefixHeadersInputPayload');
    return helper.toString();
  }
}

class HttpPrefixHeadersInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<HttpPrefixHeadersInputPayload> {
  const HttpPrefixHeadersInputRestJson1Serializer()
      : super('HttpPrefixHeadersInput');

  @override
  Iterable<Type> get types => const [
        HttpPrefixHeadersInput,
        _$HttpPrefixHeadersInput,
        HttpPrefixHeadersInputPayload,
        _$HttpPrefixHeadersInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  HttpPrefixHeadersInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return HttpPrefixHeadersInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
