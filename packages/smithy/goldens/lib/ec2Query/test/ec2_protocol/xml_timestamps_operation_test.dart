// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library ec2_query_v1.ec2_protocol.test.xml_timestamps_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:ec2_query_v1/src/ec2_protocol/model/xml_timestamps_output.dart';
import 'package:ec2_query_v1/src/ec2_protocol/operation/xml_timestamps_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('Ec2XmlTimestamps (response)', () async {
    await _i2.httpResponseTest(
      operation: XmlTimestampsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'Ec2XmlTimestamps',
        documentation: 'Tests how normal timestamps are serialized',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'ec2Query'),
        authScheme: null,
        body:
            '<XmlTimestampsResponse xmlns="https://example.com/">\n    <normal>2014-04-29T18:30:38Z</normal>\n    <RequestId>requestid</RequestId>\n</XmlTimestampsResponse>\n',
        bodyMediaType: 'application/xml',
        params: {'normal': 1398796238},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'text/xml;charset=UTF-8'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [XmlTimestampsOutputEc2QuerySerializer()],
    );
  });
  _i1.test('Ec2XmlTimestampsWithDateTimeFormat (response)', () async {
    await _i2.httpResponseTest(
      operation: XmlTimestampsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'Ec2XmlTimestampsWithDateTimeFormat',
        documentation:
            'Ensures that the timestampFormat of date-time works like normal timestamps',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'ec2Query'),
        authScheme: null,
        body:
            '<XmlTimestampsResponse xmlns="https://example.com/">\n    <dateTime>2014-04-29T18:30:38Z</dateTime>\n    <RequestId>requestid</RequestId>\n</XmlTimestampsResponse>\n',
        bodyMediaType: 'application/xml',
        params: {'dateTime': 1398796238},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'text/xml;charset=UTF-8'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [XmlTimestampsOutputEc2QuerySerializer()],
    );
  });
  _i1.test('Ec2XmlTimestampsWithDateTimeOnTargetFormat (response)', () async {
    await _i2.httpResponseTest(
      operation: XmlTimestampsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'Ec2XmlTimestampsWithDateTimeOnTargetFormat',
        documentation:
            'Ensures that the timestampFormat of date-time on the target shape works like normal timestamps',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'ec2Query'),
        authScheme: null,
        body:
            '<XmlTimestampsResponse xmlns="https://example.com/">\n    <dateTimeOnTarget>2014-04-29T18:30:38Z</dateTimeOnTarget>\n    <RequestId>requestid</RequestId>\n</XmlTimestampsResponse>\n',
        bodyMediaType: 'application/xml',
        params: {'dateTimeOnTarget': 1398796238},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'text/xml;charset=UTF-8'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [XmlTimestampsOutputEc2QuerySerializer()],
    );
  });
  _i1.test('Ec2XmlTimestampsWithEpochSecondsFormat (response)', () async {
    await _i2.httpResponseTest(
      operation: XmlTimestampsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'Ec2XmlTimestampsWithEpochSecondsFormat',
        documentation:
            'Ensures that the timestampFormat of epoch-seconds works',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'ec2Query'),
        authScheme: null,
        body:
            '<XmlTimestampsResponse xmlns="https://example.com/">\n    <epochSeconds>1398796238</epochSeconds>\n    <RequestId>requestid</RequestId>\n</XmlTimestampsResponse>\n',
        bodyMediaType: 'application/xml',
        params: {'epochSeconds': 1398796238},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'text/xml;charset=UTF-8'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [XmlTimestampsOutputEc2QuerySerializer()],
    );
  });
  _i1.test('Ec2XmlTimestampsWithEpochSecondsOnTargetFormat (response)', () async {
    await _i2.httpResponseTest(
      operation: XmlTimestampsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'Ec2XmlTimestampsWithEpochSecondsOnTargetFormat',
        documentation:
            'Ensures that the timestampFormat of epoch-seconds on the target shape works',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'ec2Query'),
        authScheme: null,
        body:
            '<XmlTimestampsResponse xmlns="https://example.com/">\n    <epochSecondsOnTarget>1398796238</epochSecondsOnTarget>\n    <RequestId>requestid</RequestId>\n</XmlTimestampsResponse>\n',
        bodyMediaType: 'application/xml',
        params: {'epochSecondsOnTarget': 1398796238},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'text/xml;charset=UTF-8'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [XmlTimestampsOutputEc2QuerySerializer()],
    );
  });
  _i1.test('Ec2XmlTimestampsWithHttpDateFormat (response)', () async {
    await _i2.httpResponseTest(
      operation: XmlTimestampsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'Ec2XmlTimestampsWithHttpDateFormat',
        documentation: 'Ensures that the timestampFormat of http-date works',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'ec2Query'),
        authScheme: null,
        body:
            '<XmlTimestampsResponse xmlns="https://example.com/">\n    <httpDate>Tue, 29 Apr 2014 18:30:38 GMT</httpDate>\n    <RequestId>requestid</RequestId>\n</XmlTimestampsResponse>\n',
        bodyMediaType: 'application/xml',
        params: {'httpDate': 1398796238},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'text/xml;charset=UTF-8'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [XmlTimestampsOutputEc2QuerySerializer()],
    );
  });
  _i1.test('Ec2XmlTimestampsWithHttpDateOnTargetFormat (response)', () async {
    await _i2.httpResponseTest(
      operation: XmlTimestampsOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'Ec2XmlTimestampsWithHttpDateOnTargetFormat',
        documentation:
            'Ensures that the timestampFormat of http-date on the target shape works',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'ec2Query'),
        authScheme: null,
        body:
            '<XmlTimestampsResponse xmlns="https://example.com/">\n    <httpDateOnTarget>Tue, 29 Apr 2014 18:30:38 GMT</httpDateOnTarget>\n    <RequestId>requestid</RequestId>\n</XmlTimestampsResponse>\n',
        bodyMediaType: 'application/xml',
        params: {'httpDateOnTarget': 1398796238},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'text/xml;charset=UTF-8'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [XmlTimestampsOutputEc2QuerySerializer()],
    );
  });
}

class XmlTimestampsOutputEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<XmlTimestampsOutput> {
  const XmlTimestampsOutputEc2QuerySerializer() : super('XmlTimestampsOutput');

  @override
  Iterable<Type> get types => const [XmlTimestampsOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'ec2Query'),
  ];

  @override
  XmlTimestampsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlTimestampsOutputBuilder();
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
          result.dateTimeOnTarget = _i3.TimestampSerializer.epochSeconds
              .deserialize(serializers, value);
        case 'epochSeconds':
          result.epochSeconds = _i3.TimestampSerializer.epochSeconds
              .deserialize(serializers, value);
        case 'epochSecondsOnTarget':
          result.epochSecondsOnTarget = _i3.TimestampSerializer.epochSeconds
              .deserialize(serializers, value);
        case 'httpDate':
          result.httpDate = _i3.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'httpDateOnTarget':
          result.httpDateOnTarget = _i3.TimestampSerializer.epochSeconds
              .deserialize(serializers, value);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlTimestampsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
