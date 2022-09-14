// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.xml_maps_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/greeting_struct.dart'
    as _i7;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_maps_input_output.dart'
    as _i5;
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/xml_maps_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'XmlMaps (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.XmlMapsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'XmlMaps',
              documentation: 'Tests for XML map serialization',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<XmlMapsInputOutput>\n    <myMap>\n        <entry>\n            <key>foo</key>\n            <value>\n                <hi>there</hi>\n            </value>\n        </entry>\n        <entry>\n            <key>baz</key>\n            <value>\n                <hi>bye</hi>\n            </value>\n        </entry>\n    </myMap>\n</XmlMapsInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {
                'myMap': {
                  'foo': {'hi': 'there'},
                  'baz': {'hi': 'bye'}
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
              uri: '/XmlMaps',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            XmlMapsInputOutputRestXmlSerializer(),
            GreetingStructRestXmlSerializer()
          ]);
    },
  );
  _i1.test(
    'XmlMaps (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.XmlMapsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'XmlMaps',
              documentation: 'Tests for XML map serialization',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<XmlMapsInputOutput>\n    <myMap>\n        <entry>\n            <key>foo</key>\n            <value>\n                <hi>there</hi>\n            </value>\n        </entry>\n        <entry>\n            <key>baz</key>\n            <value>\n                <hi>bye</hi>\n            </value>\n        </entry>\n    </myMap>\n</XmlMapsInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {
                'myMap': {
                  'foo': {'hi': 'there'},
                  'baz': {'hi': 'bye'}
                }
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/xml'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [
            XmlMapsInputOutputRestXmlSerializer(),
            GreetingStructRestXmlSerializer()
          ]);
    },
  );
}

class XmlMapsInputOutputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i5.XmlMapsInputOutput> {
  const XmlMapsInputOutputRestXmlSerializer() : super('XmlMapsInputOutput');

  @override
  Iterable<Type> get types => const [_i5.XmlMapsInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  _i5.XmlMapsInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.XmlMapsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'myMap':
          if (value != null) {
            result.myMap.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i6.BuiltMap, [
                  FullType(String),
                  FullType(_i7.GreetingStruct)
                ])) as _i6.BuiltMap<String, _i7.GreetingStruct>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}

class GreetingStructRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i7.GreetingStruct> {
  const GreetingStructRestXmlSerializer() : super('GreetingStruct');

  @override
  Iterable<Type> get types => const [_i7.GreetingStruct];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  _i7.GreetingStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i7.GreetingStructBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'hi':
          if (value != null) {
            result.hi = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}
