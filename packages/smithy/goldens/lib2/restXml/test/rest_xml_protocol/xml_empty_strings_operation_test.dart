// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.xml_empty_strings_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_empty_strings_input_output.dart'
    as _i5;
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/xml_empty_strings_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'XmlEmptyStrings (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.XmlEmptyStringsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'XmlEmptyStrings',
              documentation: 'Serializes xml empty strings',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<XmlEmptyStringsInputOutput>\n    <emptyString></emptyString>\n</XmlEmptyStringsInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {'emptyString': ''},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/xml'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: _i2.AppliesTo.client,
              method: 'PUT',
              uri: '/XmlEmptyStrings',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            XmlEmptyStringsInputOutputRestXmlSerializer()
          ]);
    },
  );
  _i1.test(
    'XmlEmptyStrings (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.XmlEmptyStringsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'XmlEmptyStrings',
              documentation: 'Deserializes xml empty strings',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<XmlEmptyStringsInputOutput>\n    <emptyString></emptyString>\n</XmlEmptyStringsInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {'emptyString': ''},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/xml'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: _i2.AppliesTo.client,
              code: 200),
          outputSerializers: const [
            XmlEmptyStringsInputOutputRestXmlSerializer()
          ]);
    },
  );
  _i1.test(
    'XmlEmptySelfClosedStrings (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.XmlEmptyStringsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'XmlEmptySelfClosedStrings',
              documentation:
                  'Empty self closed string are deserialized as empty string',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<XmlEmptyStringsInputOutput>\n    <emptyString/>\n</XmlEmptyStringsInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {'emptyString': ''},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/xml'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: _i2.AppliesTo.client,
              code: 200),
          outputSerializers: const [
            XmlEmptyStringsInputOutputRestXmlSerializer()
          ]);
    },
  );
}

class XmlEmptyStringsInputOutputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i5.XmlEmptyStringsInputOutput> {
  const XmlEmptyStringsInputOutputRestXmlSerializer()
      : super('XmlEmptyStringsInputOutput');

  @override
  Iterable<Type> get types => const [_i5.XmlEmptyStringsInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  _i5.XmlEmptyStringsInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.XmlEmptyStringsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'emptyString':
          if (value != null) {
            result.emptyString = (serializers.deserialize(value,
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
