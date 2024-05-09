// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library aws_query_v2.query_protocol.test.xml_timestamps_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v2/src/query_protocol/model/xml_timestamps_output.dart';
import 'package:aws_query_v2/src/query_protocol/operation/xml_timestamps_operation.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QueryXmlTimestamps (response)',
    () async {
      await _i2.httpResponseTest(
        operation: XmlTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryXmlTimestamps',
          documentation: 'Tests how normal timestamps are serialized',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<XmlTimestampsResponse xmlns="https://example.com/">\n    <XmlTimestampsResult>\n        <normal>2014-04-29T18:30:38Z</normal>\n    </XmlTimestampsResult>\n</XmlTimestampsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'normal': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [XmlTimestampsOutputAwsQuerySerializer()],
      );
    },
  );
  _i1.test(
    'QueryXmlTimestampsWithDateTimeFormat (response)',
    () async {
      await _i2.httpResponseTest(
        operation: XmlTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryXmlTimestampsWithDateTimeFormat',
          documentation:
              'Ensures that the timestampFormat of date-time works like normal timestamps',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<XmlTimestampsResponse xmlns="https://example.com/">\n    <XmlTimestampsResult>\n        <dateTime>2014-04-29T18:30:38Z</dateTime>\n    </XmlTimestampsResult>\n</XmlTimestampsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'dateTime': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [XmlTimestampsOutputAwsQuerySerializer()],
      );
    },
  );
  _i1.test(
    'QueryXmlTimestampsWithDateTimeOnTargetFormat (response)',
    () async {
      await _i2.httpResponseTest(
        operation: XmlTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryXmlTimestampsWithDateTimeOnTargetFormat',
          documentation:
              'Ensures that the timestampFormat of date-time on the target shape works like normal timestamps',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<XmlTimestampsResponse xmlns="https://example.com/">\n    <XmlTimestampsResult>\n        <dateTimeOnTarget>2014-04-29T18:30:38Z</dateTimeOnTarget>\n    </XmlTimestampsResult>\n</XmlTimestampsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'dateTimeOnTarget': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [XmlTimestampsOutputAwsQuerySerializer()],
      );
    },
  );
  _i1.test(
    'QueryXmlTimestampsWithEpochSecondsFormat (response)',
    () async {
      await _i2.httpResponseTest(
        operation: XmlTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryXmlTimestampsWithEpochSecondsFormat',
          documentation:
              'Ensures that the timestampFormat of epoch-seconds works',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<XmlTimestampsResponse xmlns="https://example.com/">\n    <XmlTimestampsResult>\n        <epochSeconds>1398796238</epochSeconds>\n    </XmlTimestampsResult>\n</XmlTimestampsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'epochSeconds': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [XmlTimestampsOutputAwsQuerySerializer()],
      );
    },
  );
  _i1.test(
    'QueryXmlTimestampsWithEpochSecondsOnTargetFormat (response)',
    () async {
      await _i2.httpResponseTest(
        operation: XmlTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryXmlTimestampsWithEpochSecondsOnTargetFormat',
          documentation:
              'Ensures that the timestampFormat of epoch-seconds on the target shape works',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<XmlTimestampsResponse xmlns="https://example.com/">\n    <XmlTimestampsResult>\n        <epochSecondsOnTarget>1398796238</epochSecondsOnTarget>\n    </XmlTimestampsResult>\n</XmlTimestampsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'epochSecondsOnTarget': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [XmlTimestampsOutputAwsQuerySerializer()],
      );
    },
  );
  _i1.test(
    'QueryXmlTimestampsWithHttpDateFormat (response)',
    () async {
      await _i2.httpResponseTest(
        operation: XmlTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryXmlTimestampsWithHttpDateFormat',
          documentation: 'Ensures that the timestampFormat of http-date works',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<XmlTimestampsResponse xmlns="https://example.com/">\n    <XmlTimestampsResult>\n        <httpDate>Tue, 29 Apr 2014 18:30:38 GMT</httpDate>\n    </XmlTimestampsResult>\n</XmlTimestampsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'httpDate': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [XmlTimestampsOutputAwsQuerySerializer()],
      );
    },
  );
  _i1.test(
    'QueryXmlTimestampsWithHttpDateOnTargetFormat (response)',
    () async {
      await _i2.httpResponseTest(
        operation: XmlTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryXmlTimestampsWithHttpDateOnTargetFormat',
          documentation:
              'Ensures that the timestampFormat of http-date on the target shape works',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<XmlTimestampsResponse xmlns="https://example.com/">\n    <XmlTimestampsResult>\n        <httpDateOnTarget>Tue, 29 Apr 2014 18:30:38 GMT</httpDateOnTarget>\n    </XmlTimestampsResult>\n</XmlTimestampsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'httpDateOnTarget': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [XmlTimestampsOutputAwsQuerySerializer()],
      );
    },
  );
}

class XmlTimestampsOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<XmlTimestampsOutput> {
  const XmlTimestampsOutputAwsQuerySerializer() : super('XmlTimestampsOutput');

  @override
  Iterable<Type> get types => const [XmlTimestampsOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
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
    XmlTimestampsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
