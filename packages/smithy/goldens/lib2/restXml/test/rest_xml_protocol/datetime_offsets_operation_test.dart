// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.datetime_offsets_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/datetime_offsets_output.dart'
    as _i5;
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/datetime_offsets_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestXmlDateTimeWithNegativeOffset (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.DatetimeOffsetsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestXmlDateTimeWithNegativeOffset',
          documentation:
              'Ensures that clients can correctly parse datetime (timestamps) with offsets',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<DatetimeOffsetsOutput>\n    <datetime>2019-12-16T22:48:18-01:00</datetime>\n</DatetimeOffsetsOutput>\n',
          bodyMediaType: 'application/xml',
          params: {'datetime': 1576540098},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [DatetimeOffsetsOutputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'RestXmlDateTimeWithPositiveOffset (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.DatetimeOffsetsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestXmlDateTimeWithPositiveOffset',
          documentation:
              'Ensures that clients can correctly parse datetime (timestamps) with offsets',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body:
              '<DatetimeOffsetsOutput>\n    <datetime>2019-12-17T00:48:18+01:00</datetime>\n</DatetimeOffsetsOutput>\n',
          bodyMediaType: 'application/xml',
          params: {'datetime': 1576540098},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [DatetimeOffsetsOutputRestXmlSerializer()],
      );
    },
  );
}

class DatetimeOffsetsOutputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i5.DatetimeOffsetsOutput> {
  const DatetimeOffsetsOutputRestXmlSerializer()
      : super('DatetimeOffsetsOutput');

  @override
  Iterable<Type> get types => const [_i5.DatetimeOffsetsOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i5.DatetimeOffsetsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.DatetimeOffsetsOutputBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i5.DatetimeOffsetsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
