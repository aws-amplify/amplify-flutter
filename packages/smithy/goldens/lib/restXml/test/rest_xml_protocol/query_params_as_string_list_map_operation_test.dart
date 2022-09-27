// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.query_params_as_string_list_map_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/query_params_as_string_list_map_input.dart'
    as _i5;
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/query_params_as_string_list_map_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestXmlQueryParamsStringListMap (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.QueryParamsAsStringListMapOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestXmlQueryParamsStringListMap',
          documentation: 'Serialize query params from map of list strings',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'qux': 'named',
            'foo': {
              'baz': [
                'bar',
                'qux',
              ]
            },
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          method: 'POST',
          uri: '/StringListMap',
          host: null,
          resolvedHost: null,
          queryParams: [
            'corge=named',
            'baz=bar',
            'baz=qux',
          ],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          QueryParamsAsStringListMapInputRestXmlSerializer()
        ],
      );
    },
  );
}

class QueryParamsAsStringListMapInputRestXmlSerializer extends _i4
    .StructuredSmithySerializer<_i5.QueryParamsAsStringListMapInput> {
  const QueryParamsAsStringListMapInputRestXmlSerializer()
      : super('QueryParamsAsStringListMapInput');

  @override
  Iterable<Type> get types => const [_i5.QueryParamsAsStringListMapInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i5.QueryParamsAsStringListMapInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.QueryParamsAsStringListMapInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'foo':
          if (value != null) {
            result.foo.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltListMultimap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i6.BuiltListMultimap<String, String>));
          }
          break;
        case 'qux':
          if (value != null) {
            result.qux = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
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
