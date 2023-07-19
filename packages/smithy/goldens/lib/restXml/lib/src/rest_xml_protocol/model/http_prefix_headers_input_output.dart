// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v1.rest_xml_protocol.model.http_prefix_headers_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'http_prefix_headers_input_output.g.dart';

abstract class HttpPrefixHeadersInputOutput
    with
        _i1.HttpInput<HttpPrefixHeadersInputOutputPayload>,
        _i2.AWSEquatable<HttpPrefixHeadersInputOutput>
    implements
        Built<HttpPrefixHeadersInputOutput,
            HttpPrefixHeadersInputOutputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<HttpPrefixHeadersInputOutputPayload> {
  factory HttpPrefixHeadersInputOutput({
    String? foo,
    Map<String, String>? fooMap,
  }) {
    return _$HttpPrefixHeadersInputOutput._(
      foo: foo,
      fooMap: fooMap == null ? null : _i3.BuiltMap(fooMap),
    );
  }

  factory HttpPrefixHeadersInputOutput.build(
          [void Function(HttpPrefixHeadersInputOutputBuilder) updates]) =
      _$HttpPrefixHeadersInputOutput;

  const HttpPrefixHeadersInputOutput._();

  factory HttpPrefixHeadersInputOutput.fromRequest(
    HttpPrefixHeadersInputOutputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      HttpPrefixHeadersInputOutput.build((b) {
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

  /// Constructs a [HttpPrefixHeadersInputOutput] from a [payload] and [response].
  factory HttpPrefixHeadersInputOutput.fromResponse(
    HttpPrefixHeadersInputOutputPayload payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      HttpPrefixHeadersInputOutput.build((b) {
        if (response.headers['X-Foo'] != null) {
          b.foo = response.headers['X-Foo']!;
        }
        b.fooMap.addEntries(response.headers.entries
            .where((el) => el.key.startsWith('X-Foo-'))
            .map((el) => MapEntry(
                  el.key.replaceFirst(
                    'X-Foo-',
                    '',
                  ),
                  el.value,
                )));
      });

  static const List<_i1.SmithySerializer<HttpPrefixHeadersInputOutputPayload>>
      serializers = [HttpPrefixHeadersInputOutputRestXmlSerializer()];

  String? get foo;
  _i3.BuiltMap<String, String>? get fooMap;
  @override
  HttpPrefixHeadersInputOutputPayload getPayload() =>
      HttpPrefixHeadersInputOutputPayload();
  @override
  List<Object?> get props => [
        foo,
        fooMap,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HttpPrefixHeadersInputOutput')
      ..add(
        'foo',
        foo,
      )
      ..add(
        'fooMap',
        fooMap,
      );
    return helper.toString();
  }
}

@_i4.internal
abstract class HttpPrefixHeadersInputOutputPayload
    with
        _i2.AWSEquatable<HttpPrefixHeadersInputOutputPayload>
    implements
        Built<HttpPrefixHeadersInputOutputPayload,
            HttpPrefixHeadersInputOutputPayloadBuilder>,
        _i1.EmptyPayload {
  factory HttpPrefixHeadersInputOutputPayload(
          [void Function(HttpPrefixHeadersInputOutputPayloadBuilder) updates]) =
      _$HttpPrefixHeadersInputOutputPayload;

  const HttpPrefixHeadersInputOutputPayload._();

  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpPrefixHeadersInputOutputPayload');
    return helper.toString();
  }
}

class HttpPrefixHeadersInputOutputRestXmlSerializer extends _i1
    .StructuredSmithySerializer<HttpPrefixHeadersInputOutputPayload> {
  const HttpPrefixHeadersInputOutputRestXmlSerializer()
      : super('HttpPrefixHeadersInputOutput');

  @override
  Iterable<Type> get types => const [
        HttpPrefixHeadersInputOutput,
        _$HttpPrefixHeadersInputOutput,
        HttpPrefixHeadersInputOutputPayload,
        _$HttpPrefixHeadersInputOutputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  HttpPrefixHeadersInputOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return HttpPrefixHeadersInputOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    HttpPrefixHeadersInputOutputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName('HttpPrefixHeadersInputOutput')
    ];

    return result$;
  }
}
