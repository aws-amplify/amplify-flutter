// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.xml_timestamps_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_timestamps_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/xml_timestamps_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'XmlTimestamps (request)',
    () async {
      await _i2.httpRequestTest(
        operation: XmlTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'XmlTimestamps',
          documentation: 'Tests how normal timestamps are serialized',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
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
          requireQueryParams: [],
        ),
        inputSerializers: const [XmlTimestampsInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'XmlTimestampsWithDateTimeFormat (request)',
    () async {
      await _i2.httpRequestTest(
        operation: XmlTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'XmlTimestampsWithDateTimeFormat',
          documentation:
              'Ensures that the timestampFormat of date-time works like normal timestamps',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlTimestampsInputOutput>\n    <dateTime>2014-04-29T18:30:38Z</dateTime>\n</XmlTimestampsInputOutput>\n',
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
          requireQueryParams: [],
        ),
        inputSerializers: const [XmlTimestampsInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'XmlTimestampsWithDateTimeOnTargetFormat (request)',
    () async {
      await _i2.httpRequestTest(
        operation: XmlTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'XmlTimestampsWithDateTimeOnTargetFormat',
          documentation:
              'Ensures that the timestampFormat of date-time on the target shape works like normal timestamps',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlTimestampsInputOutput>\n    <dateTimeOnTarget>2014-04-29T18:30:38Z</dateTimeOnTarget>\n</XmlTimestampsInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {'dateTimeOnTarget': 1398796238},
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
          requireQueryParams: [],
        ),
        inputSerializers: const [XmlTimestampsInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'XmlTimestampsWithEpochSecondsFormat (request)',
    () async {
      await _i2.httpRequestTest(
        operation: XmlTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'XmlTimestampsWithEpochSecondsFormat',
          documentation:
              'Ensures that the timestampFormat of epoch-seconds works',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
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
          requireQueryParams: [],
        ),
        inputSerializers: const [XmlTimestampsInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'XmlTimestampsWithEpochSecondsOnTargetFormat (request)',
    () async {
      await _i2.httpRequestTest(
        operation: XmlTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'XmlTimestampsWithEpochSecondsOnTargetFormat',
          documentation:
              'Ensures that the timestampFormat of epoch-seconds on the target shape works',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlTimestampsInputOutput>\n    <epochSecondsOnTarget>1398796238</epochSecondsOnTarget>\n</XmlTimestampsInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {'epochSecondsOnTarget': 1398796238},
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
          requireQueryParams: [],
        ),
        inputSerializers: const [XmlTimestampsInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'XmlTimestampsWithHttpDateFormat (request)',
    () async {
      await _i2.httpRequestTest(
        operation: XmlTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'XmlTimestampsWithHttpDateFormat',
          documentation: 'Ensures that the timestampFormat of http-date works',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
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
          requireQueryParams: [],
        ),
        inputSerializers: const [XmlTimestampsInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'XmlTimestampsWithHttpDateOnTargetFormat (request)',
    () async {
      await _i2.httpRequestTest(
        operation: XmlTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'XmlTimestampsWithHttpDateOnTargetFormat',
          documentation:
              'Ensures that the timestampFormat of http-date on the target shape works',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlTimestampsInputOutput>\n    <httpDateOnTarget>Tue, 29 Apr 2014 18:30:38 GMT</httpDateOnTarget>\n</XmlTimestampsInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {'httpDateOnTarget': 1398796238},
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
          requireQueryParams: [],
        ),
        inputSerializers: const [XmlTimestampsInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'XmlTimestamps (response)',
    () async {
      await _i2.httpResponseTest(
        operation: XmlTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'XmlTimestamps',
          documentation: 'Tests how normal timestamps are serialized',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
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
          code: 200,
        ),
        outputSerializers: const [XmlTimestampsInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'XmlTimestampsWithDateTimeFormat (response)',
    () async {
      await _i2.httpResponseTest(
        operation: XmlTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'XmlTimestampsWithDateTimeFormat',
          documentation:
              'Ensures that the timestampFormat of date-time works like normal timestamps',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlTimestampsInputOutput>\n    <dateTime>2014-04-29T18:30:38Z</dateTime>\n</XmlTimestampsInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {'dateTime': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [XmlTimestampsInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'XmlTimestampsWithDateTimeOnTargetFormat (response)',
    () async {
      await _i2.httpResponseTest(
        operation: XmlTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'XmlTimestampsWithDateTimeOnTargetFormat',
          documentation:
              'Ensures that the timestampFormat of date-time on the target shape works like normal timestamps',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlTimestampsInputOutput>\n    <dateTimeOnTarget>2014-04-29T18:30:38Z</dateTimeOnTarget>\n</XmlTimestampsInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {'dateTimeOnTarget': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [XmlTimestampsInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'XmlTimestampsWithEpochSecondsFormat (response)',
    () async {
      await _i2.httpResponseTest(
        operation: XmlTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'XmlTimestampsWithEpochSecondsFormat',
          documentation:
              'Ensures that the timestampFormat of epoch-seconds works',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
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
          code: 200,
        ),
        outputSerializers: const [XmlTimestampsInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'XmlTimestampsWithEpochSecondsOnTargetFormat (response)',
    () async {
      await _i2.httpResponseTest(
        operation: XmlTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'XmlTimestampsWithEpochSecondsOnTargetFormat',
          documentation:
              'Ensures that the timestampFormat of epoch-seconds on the target shape works',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlTimestampsInputOutput>\n    <epochSecondsOnTarget>1398796238</epochSecondsOnTarget>\n</XmlTimestampsInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {'epochSecondsOnTarget': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [XmlTimestampsInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'XmlTimestampsWithHttpDateFormat (response)',
    () async {
      await _i2.httpResponseTest(
        operation: XmlTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'XmlTimestampsWithHttpDateFormat',
          documentation: 'Ensures that the timestampFormat of http-date works',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
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
          code: 200,
        ),
        outputSerializers: const [XmlTimestampsInputOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'XmlTimestampsWithHttpDateOnTargetFormat (response)',
    () async {
      await _i2.httpResponseTest(
        operation: XmlTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'XmlTimestampsWithHttpDateOnTargetFormat',
          documentation:
              'Ensures that the timestampFormat of http-date on the target shape works',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<XmlTimestampsInputOutput>\n    <httpDateOnTarget>Tue, 29 Apr 2014 18:30:38 GMT</httpDateOnTarget>\n</XmlTimestampsInputOutput>\n',
          bodyMediaType: 'application/xml',
          params: {'httpDateOnTarget': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [XmlTimestampsInputOutputRestXmlSerializer()],
      );
    },
  );
}

class XmlTimestampsInputOutputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<XmlTimestampsInputOutput> {
  const XmlTimestampsInputOutputRestXmlSerializer()
      : super('XmlTimestampsInputOutput');

  @override
  Iterable<Type> get types => const [XmlTimestampsInputOutput];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  XmlTimestampsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlTimestampsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'normal':
          result.normal = _i3.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'dateTime':
          result.dateTime = _i3.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'dateTimeOnTarget':
          result.dateTimeOnTarget =
              _i3.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'epochSeconds':
          result.epochSeconds =
              _i3.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'epochSecondsOnTarget':
          result.epochSecondsOnTarget =
              _i3.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'httpDate':
          result.httpDate = _i3.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'httpDateOnTarget':
          result.httpDateOnTarget =
              _i3.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlTimestampsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
