// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.json_timestamps_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_timestamps_input_output.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/operation/json_timestamps_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonJsonTimestamps (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonJsonTimestamps',
          documentation: 'Tests how normal timestamps are serialized',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "normal": 1398796238\n}',
          bodyMediaType: 'application/json',
          params: {'normal': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/JsonTimestamps',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          JsonTimestampsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonJsonTimestampsWithDateTimeFormat (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonJsonTimestampsWithDateTimeFormat',
          documentation:
              'Ensures that the timestampFormat of date-time works like normal timestamps',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "dateTime": "2014-04-29T18:30:38Z"\n}',
          bodyMediaType: 'application/json',
          params: {'dateTime': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/JsonTimestamps',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          JsonTimestampsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonJsonTimestampsWithDateTimeOnTargetFormat (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonJsonTimestampsWithDateTimeOnTargetFormat',
          documentation:
              'Ensures that the timestampFormat of date-time on the target shape works like normal timestamps',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "dateTimeOnTarget": "2014-04-29T18:30:38Z"\n}',
          bodyMediaType: 'application/json',
          params: {'dateTimeOnTarget': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/JsonTimestamps',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          JsonTimestampsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonJsonTimestampsWithEpochSecondsFormat (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonJsonTimestampsWithEpochSecondsFormat',
          documentation:
              'Ensures that the timestampFormat of epoch-seconds works',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "epochSeconds": 1398796238\n}',
          bodyMediaType: 'application/json',
          params: {'epochSeconds': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/JsonTimestamps',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          JsonTimestampsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonJsonTimestampsWithEpochSecondsOnTargetFormat (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonJsonTimestampsWithEpochSecondsOnTargetFormat',
          documentation:
              'Ensures that the timestampFormat of epoch-seconds on the target shape works',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "epochSecondsOnTarget": 1398796238\n}',
          bodyMediaType: 'application/json',
          params: {'epochSecondsOnTarget': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/JsonTimestamps',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          JsonTimestampsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonJsonTimestampsWithHttpDateFormat (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonJsonTimestampsWithHttpDateFormat',
          documentation: 'Ensures that the timestampFormat of http-date works',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "httpDate": "Tue, 29 Apr 2014 18:30:38 GMT"\n}',
          bodyMediaType: 'application/json',
          params: {'httpDate': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/JsonTimestamps',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          JsonTimestampsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonJsonTimestampsWithHttpDateOnTargetFormat (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.JsonTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonJsonTimestampsWithHttpDateOnTargetFormat',
          documentation:
              'Ensures that the timestampFormat of http-date on the target shape works',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "httpDateOnTarget": "Tue, 29 Apr 2014 18:30:38 GMT"\n}',
          bodyMediaType: 'application/json',
          params: {'httpDateOnTarget': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/JsonTimestamps',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          JsonTimestampsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonJsonTimestamps (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonJsonTimestamps',
          documentation: 'Tests how normal timestamps are serialized',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "normal": 1398796238\n}',
          bodyMediaType: 'application/json',
          params: {'normal': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          JsonTimestampsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonJsonTimestampsWithDateTimeFormat (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonJsonTimestampsWithDateTimeFormat',
          documentation:
              'Ensures that the timestampFormat of date-time works like normal timestamps',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "dateTime": "2014-04-29T18:30:38Z"\n}',
          bodyMediaType: 'application/json',
          params: {'dateTime': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          JsonTimestampsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonJsonTimestampsWithDateTimeOnTargetFormat (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonJsonTimestampsWithDateTimeOnTargetFormat',
          documentation:
              'Ensures that the timestampFormat of date-time on the target shape works like normal timestamps',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "dateTimeOnTarget": "2014-04-29T18:30:38Z"\n}',
          bodyMediaType: 'application/json',
          params: {'dateTimeOnTarget': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          JsonTimestampsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonJsonTimestampsWithEpochSecondsFormat (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonJsonTimestampsWithEpochSecondsFormat',
          documentation:
              'Ensures that the timestampFormat of epoch-seconds works',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "epochSeconds": 1398796238\n}',
          bodyMediaType: 'application/json',
          params: {'epochSeconds': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          JsonTimestampsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonJsonTimestampsWithEpochSecondsOnTargetFormat (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonJsonTimestampsWithEpochSecondsOnTargetFormat',
          documentation:
              'Ensures that the timestampFormat of epoch-seconds on the target shape works',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "epochSecondsOnTarget": 1398796238\n}',
          bodyMediaType: 'application/json',
          params: {'epochSecondsOnTarget': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          JsonTimestampsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonJsonTimestampsWithHttpDateFormat (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonJsonTimestampsWithHttpDateFormat',
          documentation: 'Ensures that the timestampFormat of http-date works',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "httpDate": "Tue, 29 Apr 2014 18:30:38 GMT"\n}',
          bodyMediaType: 'application/json',
          params: {'httpDate': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          JsonTimestampsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonJsonTimestampsWithHttpDateOnTargetFormat (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.JsonTimestampsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonJsonTimestampsWithHttpDateOnTargetFormat',
          documentation:
              'Ensures that the timestampFormat of http-date on the target shape works',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "httpDateOnTarget": "Tue, 29 Apr 2014 18:30:38 GMT"\n}',
          bodyMediaType: 'application/json',
          params: {'httpDateOnTarget': 1398796238},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          JsonTimestampsInputOutputRestJson1Serializer()
        ],
      );
    },
  );
}

class JsonTimestampsInputOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.JsonTimestampsInputOutput> {
  const JsonTimestampsInputOutputRestJson1Serializer()
      : super('JsonTimestampsInputOutput');

  @override
  Iterable<Type> get types => const [_i5.JsonTimestampsInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.JsonTimestampsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.JsonTimestampsInputOutputBuilder();
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
          result.normal = _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'dateTime':
          result.dateTime = _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'dateTimeOnTarget':
          result.dateTimeOnTarget =
              _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'epochSeconds':
          result.epochSeconds =
              _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'epochSecondsOnTarget':
          result.epochSecondsOnTarget =
              _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'httpDate':
          result.httpDate = _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'httpDateOnTarget':
          result.httpDateOnTarget =
              _i4.TimestampSerializer.epochSeconds.deserialize(
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
