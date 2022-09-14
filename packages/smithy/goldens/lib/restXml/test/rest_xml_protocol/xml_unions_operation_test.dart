// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml.rest_xml_protocol.test.xml_unions_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml/src/rest_xml_protocol/model/xml_union_shape.dart'
    as _i6;
import 'package:rest_xml/src/rest_xml_protocol/model/xml_unions_input_output.dart'
    as _i5;
import 'package:rest_xml/src/rest_xml_protocol/operation/xml_unions_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'XmlUnionsWithStructMember (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.XmlUnionsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'XmlUnionsWithStructMember',
              documentation: 'Serializes union struct member',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<XmlUnionsInputOutput>\n    <unionValue>\n       <structValue>\n          <stringValue>string</stringValue>\n          <booleanValue>true</booleanValue>\n          <byteValue>1</byteValue>\n          <shortValue>2</shortValue>\n          <integerValue>3</integerValue>\n          <longValue>4</longValue>\n          <floatValue>5.5</floatValue>\n          <doubleValue>6.5</doubleValue>\n       </structValue>\n    </unionValue>\n</XmlUnionsInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {
                'unionValue': {
                  'structValue': {
                    'stringValue': 'string',
                    'booleanValue': true,
                    'byteValue': 1,
                    'shortValue': 2,
                    'integerValue': 3,
                    'longValue': 4,
                    'floatValue': 5.5,
                    'doubleValue': 6.5
                  }
                }
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/xml'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'PUT',
              uri: '/XmlUnions',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [XmlUnionsInputOutputRestXmlSerializer()]);
    },
  );
  _i1.test(
    'XmlUnionsWithStringMember (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.XmlUnionsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'XmlUnionsWithStringMember',
              documentation: 'serialize union string member',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<XmlUnionsInputOutput>\n   <unionValue>\n      <stringValue>some string</stringValue>\n   </unionValue>\n</XmlUnionsInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {
                'unionValue': {'stringValue': 'some string'}
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/xml'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'PUT',
              uri: '/XmlUnions',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [XmlUnionsInputOutputRestXmlSerializer()]);
    },
  );
  _i1.test(
    'XmlUnionsWithBooleanMember (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.XmlUnionsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'XmlUnionsWithBooleanMember',
              documentation: 'Serializes union boolean member',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<XmlUnionsInputOutput>\n   <unionValue>\n      <booleanValue>true</booleanValue>\n   </unionValue>\n</XmlUnionsInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {
                'unionValue': {'booleanValue': true}
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/xml'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'PUT',
              uri: '/XmlUnions',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [XmlUnionsInputOutputRestXmlSerializer()]);
    },
  );
  _i1.test(
    'XmlUnionsWithUnionMember (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.XmlUnionsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'XmlUnionsWithUnionMember',
              documentation: 'Serializes union member',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<XmlUnionsInputOutput>\n   <unionValue>\n      <unionValue>\n         <booleanValue>true</booleanValue>\n      </unionValue>\n   </unionValue>\n</XmlUnionsInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {
                'unionValue': {
                  'unionValue': {'booleanValue': true}
                }
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/xml'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'PUT',
              uri: '/XmlUnions',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [XmlUnionsInputOutputRestXmlSerializer()]);
    },
  );
  _i1.test(
    'XmlUnionsWithStructMember (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.XmlUnionsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'XmlUnionsWithStructMember',
              documentation: 'Serializes union struct member',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<XmlUnionsInputOutput>\n    <unionValue>\n       <structValue>\n          <stringValue>string</stringValue>\n          <booleanValue>true</booleanValue>\n          <byteValue>1</byteValue>\n          <shortValue>2</shortValue>\n          <integerValue>3</integerValue>\n          <longValue>4</longValue>\n          <floatValue>5.5</floatValue>\n          <doubleValue>6.5</doubleValue>\n       </structValue>\n    </unionValue>\n</XmlUnionsInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {
                'unionValue': {
                  'structValue': {
                    'stringValue': 'string',
                    'booleanValue': true,
                    'byteValue': 1,
                    'shortValue': 2,
                    'integerValue': 3,
                    'longValue': 4,
                    'floatValue': 5.5,
                    'doubleValue': 6.5
                  }
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
          outputSerializers: const [XmlUnionsInputOutputRestXmlSerializer()]);
    },
  );
  _i1.test(
    'XmlUnionsWithStringMember (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.XmlUnionsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'XmlUnionsWithStringMember',
              documentation: 'Serializes union string member',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<XmlUnionsInputOutput>\n   <unionValue>\n      <stringValue>some string</stringValue>\n   </unionValue>\n</XmlUnionsInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {
                'unionValue': {'stringValue': 'some string'}
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/xml'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [XmlUnionsInputOutputRestXmlSerializer()]);
    },
  );
  _i1.test(
    'XmlUnionsWithBooleanMember (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.XmlUnionsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'XmlUnionsWithBooleanMember',
              documentation: 'Serializes union boolean member',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<XmlUnionsInputOutput>\n   <unionValue>\n      <booleanValue>true</booleanValue>\n   </unionValue>\n</XmlUnionsInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {
                'unionValue': {'booleanValue': true}
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/xml'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [XmlUnionsInputOutputRestXmlSerializer()]);
    },
  );
  _i1.test(
    'XmlUnionsWithUnionMember (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.XmlUnionsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'XmlUnionsWithUnionMember',
              documentation: 'Serializes union member',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<XmlUnionsInputOutput>\n   <unionValue>\n      <unionValue>\n         <booleanValue>true</booleanValue>\n      </unionValue>\n   </unionValue>\n</XmlUnionsInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {
                'unionValue': {
                  'unionValue': {'booleanValue': true}
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
          outputSerializers: const [XmlUnionsInputOutputRestXmlSerializer()]);
    },
  );
}

class XmlUnionsInputOutputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i5.XmlUnionsInputOutput> {
  const XmlUnionsInputOutputRestXmlSerializer() : super('XmlUnionsInputOutput');

  @override
  Iterable<Type> get types => const [_i5.XmlUnionsInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  _i5.XmlUnionsInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.XmlUnionsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'unionValue':
          if (value != null) {
            result.unionValue = (serializers.deserialize(value,
                    specifiedType: const FullType(_i6.XmlUnionShape))
                as _i6.XmlUnionShape);
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
