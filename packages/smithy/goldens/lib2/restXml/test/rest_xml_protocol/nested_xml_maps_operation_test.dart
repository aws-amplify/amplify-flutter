// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.nested_xml_maps_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/foo_enum.dart' as _i7;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/nested_xml_maps_input_output.dart'
    as _i5;
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/nested_xml_maps_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'NestedXmlMapRequest (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.NestedXmlMapsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'NestedXmlMapRequest',
          documentation: 'Tests requests with nested maps.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<NestedXmlMapsInputOutput>\n    <nestedMap>\n        <entry>\n            <key>foo</key>\n            <value>\n                <entry>\n                    <key>bar</key>\n                    <value>Bar</value>\n                </entry>\n            </value>\n        </entry>\n    </nestedMap>\n</NestedXmlMapsInputOutput>',
          bodyMediaType: 'application/xml',
          params: {
            'nestedMap': {
              'foo': {'bar': 'Bar'}
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/NestedXmlMaps',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [NestedXmlMapsInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'FlatNestedXmlMapRequest (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.NestedXmlMapsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'FlatNestedXmlMapRequest',
          documentation:
              'Tests requests with nested flat maps. Since maps can only be\nflattened when they\'re structure members, only the outer map is flat.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<NestedXmlMapsInputOutput>\n    <flatNestedMap>\n        <key>foo</key>\n        <value>\n            <entry>\n                <key>bar</key>\n                <value>Bar</value>\n            </entry>\n        </value>\n    </flatNestedMap>\n</NestedXmlMapsInputOutput>',
          bodyMediaType: 'application/xml',
          params: {
            'flatNestedMap': {
              'foo': {'bar': 'Bar'}
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/NestedXmlMaps',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [NestedXmlMapsInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'NestedXmlMapResponse (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.NestedXmlMapsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'NestedXmlMapResponse',
          documentation: 'Tests responses with nested maps.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<NestedXmlMapsInputOutput>\n    <nestedMap>\n        <entry>\n            <key>foo</key>\n            <value>\n                <entry>\n                    <key>bar</key>\n                    <value>Bar</value>\n                </entry>\n            </value>\n        </entry>\n    </nestedMap>\n</NestedXmlMapsInputOutput>',
          bodyMediaType: 'application/xml',
          params: {
            'nestedMap': {
              'foo': {'bar': 'Bar'}
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [NestedXmlMapsInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'FlatNestedXmlMapResponse (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.NestedXmlMapsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'FlatNestedXmlMapResponse',
          documentation:
              'Tests responses with nested flat maps. Since maps can only be\nflattened when they\'re structure members, only the outer map is flat.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<NestedXmlMapsInputOutput>\n    <flatNestedMap>\n        <key>foo</key>\n        <value>\n            <entry>\n                <key>bar</key>\n                <value>Bar</value>\n            </entry>\n        </value>\n    </flatNestedMap>\n</NestedXmlMapsInputOutput>',
          bodyMediaType: 'application/xml',
          params: {
            'flatNestedMap': {
              'foo': {'bar': 'Bar'}
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [NestedXmlMapsInputOutputRestXmlSerializer()],
      );
    },
  );
}

class NestedXmlMapsInputOutputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i5.NestedXmlMapsInputOutput> {
  const NestedXmlMapsInputOutputRestXmlSerializer()
      : super('NestedXmlMapsInputOutput');

  @override
  Iterable<Type> get types => const [_i5.NestedXmlMapsInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i5.NestedXmlMapsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.NestedXmlMapsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'flatNestedMap':
          if (value != null) {
            result.flatNestedMap.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltMap,
                [
                  FullType(String),
                  FullType(
                    _i6.BuiltMap,
                    [
                      FullType(String),
                      FullType(_i7.FooEnum),
                    ],
                  ),
                ],
              ),
            ) as _i6.BuiltMap<String, _i6.BuiltMap<String, _i7.FooEnum>>));
          }
          break;
        case 'nestedMap':
          if (value != null) {
            result.nestedMap.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltMap,
                [
                  FullType(String),
                  FullType(
                    _i6.BuiltMap,
                    [
                      FullType(String),
                      FullType(_i7.FooEnum),
                    ],
                  ),
                ],
              ),
            ) as _i6.BuiltMap<String, _i6.BuiltMap<String, _i7.FooEnum>>));
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
