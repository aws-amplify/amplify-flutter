// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.flattened_xml_map_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/flattened_xml_map_input_output.dart'
    as _i5;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/foo_enum.dart' as _i7;
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/flattened_xml_map_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'FlattenedXmlMap (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.FlattenedXmlMapOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'FlattenedXmlMap',
          documentation: 'Serializes flattened XML maps in requests',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<FlattenedXmlMapInputOutput>\n    <myMap>\n        <key>foo</key>\n        <value>Foo</value>\n    </myMap>\n    <myMap>\n        <key>baz</key>\n        <value>Baz</value>\n    </myMap>\n</FlattenedXmlMapInputOutput>',
          bodyMediaType: 'application/xml',
          params: {
            'myMap': {
              'foo': 'Foo',
              'baz': 'Baz',
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
          uri: '/FlattenedXmlMap',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [FlattenedXmlMapInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'FlattenedXmlMap (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.FlattenedXmlMapOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'FlattenedXmlMap',
          documentation: 'Serializes flattened XML maps in responses',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<FlattenedXmlMapInputOutput>\n    <myMap>\n        <key>foo</key>\n        <value>Foo</value>\n    </myMap>\n    <myMap>\n        <key>baz</key>\n        <value>Baz</value>\n    </myMap>\n</FlattenedXmlMapInputOutput>',
          bodyMediaType: 'application/xml',
          params: {
            'myMap': {
              'foo': 'Foo',
              'baz': 'Baz',
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
        outputSerializers: const [
          FlattenedXmlMapInputOutputRestXmlSerializer()
        ],
      );
    },
  );
}

class FlattenedXmlMapInputOutputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i5.FlattenedXmlMapInputOutput> {
  const FlattenedXmlMapInputOutputRestXmlSerializer()
      : super('FlattenedXmlMapInputOutput');

  @override
  Iterable<Type> get types => const [_i5.FlattenedXmlMapInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i5.FlattenedXmlMapInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.FlattenedXmlMapInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'myMap':
          result.myMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltMap,
              [
                FullType(String),
                FullType(_i7.FooEnum),
              ],
            ),
          ) as _i6.BuiltMap<String, _i7.FooEnum>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i5.FlattenedXmlMapInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
