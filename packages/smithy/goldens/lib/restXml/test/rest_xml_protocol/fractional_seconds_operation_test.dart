// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.fractional_seconds_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/fractional_seconds_output.dart'
    as _i5;
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/fractional_seconds_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestXmlDateTimeWithFractionalSeconds (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.FractionalSecondsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestXmlDateTimeWithFractionalSeconds',
          documentation:
              'Ensures that clients can correctly parse datetime timestamps with fractional seconds',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<FractionalSecondsOutput>\n    <datetime>2000-01-02T20:34:56.123Z</datetime>\n</FractionalSecondsOutput>\n',
          bodyMediaType: 'application/xml',
          params: {'datetime': 946845296.123},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [FractionalSecondsOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'RestXmlHttpDateWithFractionalSeconds (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.FractionalSecondsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestXmlHttpDateWithFractionalSeconds',
          documentation:
              'Ensures that clients can correctly parse http-date timestamps with fractional seconds',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<FractionalSecondsOutput>\n    <httpdate>Sun, 02 Jan 2000 20:34:56.456 GMT</httpdate>\n</FractionalSecondsOutput>\n',
          bodyMediaType: 'application/xml',
          params: {'httpdate': 946845296.456},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [FractionalSecondsOutputRestXmlSerializer()],
      );
    },
  );
}

class FractionalSecondsOutputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i5.FractionalSecondsOutput> {
  const FractionalSecondsOutputRestXmlSerializer()
      : super('FractionalSecondsOutput');

  @override
  Iterable<Type> get types => const [_i5.FractionalSecondsOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i5.FractionalSecondsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.FractionalSecondsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'datetime':
          result.datetime = _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'httpdate':
          result.httpdate = _i4.TimestampSerializer.epochSeconds.deserialize(
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
    _i5.FractionalSecondsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
