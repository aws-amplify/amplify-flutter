// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.http_request_with_greedy_label_in_path_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_request_with_greedy_label_in_path_input.dart'
    as _i5;
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/http_request_with_greedy_label_in_path_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'HttpRequestWithGreedyLabelInPath (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.HttpRequestWithGreedyLabelInPathOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'HttpRequestWithGreedyLabelInPath',
          documentation: 'Serializes greedy labels and normal labels',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'foo': 'hello',
            'baz': 'there/guy',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/HttpRequestWithGreedyLabelInPath/foo/hello/baz/there/guy',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          HttpRequestWithGreedyLabelInPathInputRestXmlSerializer()
        ],
      );
    },
  );
}

class HttpRequestWithGreedyLabelInPathInputRestXmlSerializer extends _i4
    .StructuredSmithySerializer<_i5.HttpRequestWithGreedyLabelInPathInput> {
  const HttpRequestWithGreedyLabelInPathInputRestXmlSerializer()
      : super('HttpRequestWithGreedyLabelInPathInput');

  @override
  Iterable<Type> get types => const [_i5.HttpRequestWithGreedyLabelInPathInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i5.HttpRequestWithGreedyLabelInPathInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.HttpRequestWithGreedyLabelInPathInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'baz':
          result.baz = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'foo':
          result.foo = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
