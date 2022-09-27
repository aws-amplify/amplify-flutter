// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.xml_enums_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/foo_enum.dart' as _i6;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_enums_input_output.dart'
    as _i5;
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/xml_enums_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'XmlEnums (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.XmlEnumsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'XmlEnums',
          documentation: 'Serializes simple scalar properties',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlEnumsInputOutput>\n    <fooEnum1>Foo</fooEnum1>\n    <fooEnum2>0</fooEnum2>\n    <fooEnum3>1</fooEnum3>\n    <fooEnumList>\n        <member>Foo</member>\n        <member>0</member>\n    </fooEnumList>\n    <fooEnumSet>\n        <member>Foo</member>\n        <member>0</member>\n    </fooEnumSet>\n    <fooEnumMap>\n        <entry>\n            <key>hi</key>\n            <value>Foo</value>\n        </entry>\n        <entry>\n            <key>zero</key>\n            <value>0</value>\n        </entry>\n    </fooEnumMap>\n</XmlEnumsInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {
            'fooEnum1': 'Foo',
            'fooEnum2': '0',
            'fooEnum3': '1',
            'fooEnumList': [
              'Foo',
              '0',
            ],
            'fooEnumSet': [
              'Foo',
              '0',
            ],
            'fooEnumMap': {
              'hi': 'Foo',
              'zero': '0',
            },
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/XmlEnums',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [XmlEnumsInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'XmlEnums (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.XmlEnumsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'XmlEnums',
          documentation: 'Serializes simple scalar properties',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlEnumsInputOutput>\n    <fooEnum1>Foo</fooEnum1>\n    <fooEnum2>0</fooEnum2>\n    <fooEnum3>1</fooEnum3>\n    <fooEnumList>\n        <member>Foo</member>\n        <member>0</member>\n    </fooEnumList>\n    <fooEnumSet>\n        <member>Foo</member>\n        <member>0</member>\n    </fooEnumSet>\n    <fooEnumMap>\n        <entry>\n            <key>hi</key>\n            <value>Foo</value>\n        </entry>\n        <entry>\n            <key>zero</key>\n            <value>0</value>\n        </entry>\n    </fooEnumMap>\n</XmlEnumsInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {
            'fooEnum1': 'Foo',
            'fooEnum2': '0',
            'fooEnum3': '1',
            'fooEnumList': [
              'Foo',
              '0',
            ],
            'fooEnumSet': [
              'Foo',
              '0',
            ],
            'fooEnumMap': {
              'hi': 'Foo',
              'zero': '0',
            },
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
        outputSerializers: const [XmlEnumsInputOutputRestXmlSerializer()],
      );
    },
  );
}

class XmlEnumsInputOutputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i5.XmlEnumsInputOutput> {
  const XmlEnumsInputOutputRestXmlSerializer() : super('XmlEnumsInputOutput');

  @override
  Iterable<Type> get types => const [_i5.XmlEnumsInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i5.XmlEnumsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.XmlEnumsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'fooEnum1':
          if (value != null) {
            result.fooEnum1 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.FooEnum),
            ) as _i6.FooEnum);
          }
          break;
        case 'fooEnum2':
          if (value != null) {
            result.fooEnum2 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.FooEnum),
            ) as _i6.FooEnum);
          }
          break;
        case 'fooEnum3':
          if (value != null) {
            result.fooEnum3 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.FooEnum),
            ) as _i6.FooEnum);
          }
          break;
        case 'fooEnumList':
          if (value != null) {
            result.fooEnumList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i6.FooEnum)],
              ),
            ) as _i7.BuiltList<_i6.FooEnum>));
          }
          break;
        case 'fooEnumMap':
          if (value != null) {
            result.fooEnumMap.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltMap,
                [
                  FullType(String),
                  FullType(_i6.FooEnum),
                ],
              ),
            ) as _i7.BuiltMap<String, _i6.FooEnum>));
          }
          break;
        case 'fooEnumSet':
          if (value != null) {
            result.fooEnumSet.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltSet,
                [FullType(_i6.FooEnum)],
              ),
            ) as _i7.BuiltSet<_i6.FooEnum>));
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
