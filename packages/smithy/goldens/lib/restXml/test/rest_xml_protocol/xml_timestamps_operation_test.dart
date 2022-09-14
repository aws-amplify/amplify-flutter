// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.xml_timestamps_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_timestamps_input_output.dart'
    as _i5;
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/xml_timestamps_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'XmlTimestamps (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.XmlTimestampsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'XmlTimestamps',
              documentation: 'Tests how normal timestamps are serialized',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<XmlTimestampsInputOutput>\n    <normal>2014-04-29T18:30:38Z</normal>\n</XmlTimestampsInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {'normal': 1398796238},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/xml'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'POST',
              uri: '/XmlTimestamps',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            XmlTimestampsInputOutputRestXmlSerializer()
          ]);
    },
  );
  _i1.test(
    'XmlTimestampsWithDateTimeFormat (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.XmlTimestampsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'XmlTimestampsWithDateTimeFormat',
              documentation:
                  'Ensures that the timestampFormat of date-time works like normal timestamps',
              protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body: '<XmlTimestampsInputOutput>\n    <dateTime>2014-04-29T18:30:38Z</dateTime>\n</XmlTimestampsInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {'dateTime': 1398796238},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/xml'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'POST',
              uri: '/XmlTimestamps',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            XmlTimestampsInputOutputRestXmlSerializer()
          ]);
    },
  );
  _i1.test(
    'XmlTimestampsWithEpochSecondsFormat (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.XmlTimestampsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'XmlTimestampsWithEpochSecondsFormat',
              documentation:
                  'Ensures that the timestampFormat of epoch-seconds works',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<XmlTimestampsInputOutput>\n    <epochSeconds>1398796238</epochSeconds>\n</XmlTimestampsInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {'epochSeconds': 1398796238},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/xml'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'POST',
              uri: '/XmlTimestamps',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            XmlTimestampsInputOutputRestXmlSerializer()
          ]);
    },
  );
  _i1.test(
    'XmlTimestampsWithHttpDateFormat (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.XmlTimestampsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'XmlTimestampsWithHttpDateFormat',
              documentation:
                  'Ensures that the timestampFormat of http-date works',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<XmlTimestampsInputOutput>\n    <httpDate>Tue, 29 Apr 2014 18:30:38 GMT</httpDate>\n</XmlTimestampsInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {'httpDate': 1398796238},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/xml'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'POST',
              uri: '/XmlTimestamps',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            XmlTimestampsInputOutputRestXmlSerializer()
          ]);
    },
  );
  _i1.test(
    'XmlTimestamps (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.XmlTimestampsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'XmlTimestamps',
              documentation: 'Tests how normal timestamps are serialized',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<XmlTimestampsInputOutput>\n    <normal>2014-04-29T18:30:38Z</normal>\n</XmlTimestampsInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {'normal': 1398796238},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/xml'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [
            XmlTimestampsInputOutputRestXmlSerializer()
          ]);
    },
  );
  _i1.test(
    'XmlTimestampsWithDateTimeFormat (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.XmlTimestampsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'XmlTimestampsWithDateTimeFormat',
              documentation:
                  'Ensures that the timestampFormat of date-time works like normal timestamps',
              protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body: '<XmlTimestampsInputOutput>\n    <dateTime>2014-04-29T18:30:38Z</dateTime>\n</XmlTimestampsInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {'dateTime': 1398796238},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/xml'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [
            XmlTimestampsInputOutputRestXmlSerializer()
          ]);
    },
  );
  _i1.test(
    'XmlTimestampsWithEpochSecondsFormat (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.XmlTimestampsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'XmlTimestampsWithEpochSecondsFormat',
              documentation:
                  'Ensures that the timestampFormat of epoch-seconds works',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<XmlTimestampsInputOutput>\n    <epochSeconds>1398796238</epochSeconds>\n</XmlTimestampsInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {'epochSeconds': 1398796238},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/xml'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [
            XmlTimestampsInputOutputRestXmlSerializer()
          ]);
    },
  );
  _i1.test(
    'XmlTimestampsWithHttpDateFormat (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.XmlTimestampsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'XmlTimestampsWithHttpDateFormat',
              documentation:
                  'Ensures that the timestampFormat of http-date works',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body:
                  '<XmlTimestampsInputOutput>\n    <httpDate>Tue, 29 Apr 2014 18:30:38 GMT</httpDate>\n</XmlTimestampsInputOutput>\n',
              bodyMediaType: 'application/xml',
              params: {'httpDate': 1398796238},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/xml'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [
            XmlTimestampsInputOutputRestXmlSerializer()
          ]);
    },
  );
}

class XmlTimestampsInputOutputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i5.XmlTimestampsInputOutput> {
  const XmlTimestampsInputOutputRestXmlSerializer()
      : super('XmlTimestampsInputOutput');

  @override
  Iterable<Type> get types => const [_i5.XmlTimestampsInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  _i5.XmlTimestampsInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.XmlTimestampsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'dateTime':
          if (value != null) {
            result.dateTime = _i4.TimestampSerializer.epochSeconds
                .deserialize(serializers, value);
          }
          break;
        case 'epochSeconds':
          if (value != null) {
            result.epochSeconds = _i4.TimestampSerializer.epochSeconds
                .deserialize(serializers, value);
          }
          break;
        case 'httpDate':
          if (value != null) {
            result.httpDate = _i4.TimestampSerializer.epochSeconds
                .deserialize(serializers, value);
          }
          break;
        case 'normal':
          if (value != null) {
            result.normal = _i4.TimestampSerializer.epochSeconds
                .deserialize(serializers, value);
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
