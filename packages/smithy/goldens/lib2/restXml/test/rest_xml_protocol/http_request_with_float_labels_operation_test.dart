// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.http_request_with_float_labels_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_request_with_float_labels_input.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/http_request_with_float_labels_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestXmlSupportsNaNFloatLabels (request)',
    () async {
      await _i2.httpRequestTest(
        operation: HttpRequestWithFloatLabelsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestXmlSupportsNaNFloatLabels',
          documentation: 'Supports handling NaN float label values.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'float': 'NaN',
            'double': 'NaN',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/FloatHttpLabels/NaN/NaN',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          HttpRequestWithFloatLabelsInputRestXmlSerializer()
        ],
      );
    },
  );
  _i1.test(
    'RestXmlSupportsInfinityFloatLabels (request)',
    () async {
      await _i2.httpRequestTest(
        operation: HttpRequestWithFloatLabelsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestXmlSupportsInfinityFloatLabels',
          documentation: 'Supports handling Infinity float label values.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'float': 'Infinity',
            'double': 'Infinity',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/FloatHttpLabels/Infinity/Infinity',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          HttpRequestWithFloatLabelsInputRestXmlSerializer()
        ],
      );
    },
  );
  _i1.test(
    'RestXmlSupportsNegativeInfinityFloatLabels (request)',
    () async {
      await _i2.httpRequestTest(
        operation: HttpRequestWithFloatLabelsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestXmlSupportsNegativeInfinityFloatLabels',
          documentation: 'Supports handling -Infinity float label values.',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'float': '-Infinity',
            'double': '-Infinity',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/FloatHttpLabels/-Infinity/-Infinity',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          HttpRequestWithFloatLabelsInputRestXmlSerializer()
        ],
      );
    },
  );
}

class HttpRequestWithFloatLabelsInputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<HttpRequestWithFloatLabelsInput> {
  const HttpRequestWithFloatLabelsInputRestXmlSerializer()
      : super('HttpRequestWithFloatLabelsInput');

  @override
  Iterable<Type> get types => const [HttpRequestWithFloatLabelsInput];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  HttpRequestWithFloatLabelsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpRequestWithFloatLabelsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'float':
          result.float = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'double':
          result.double_ = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    HttpRequestWithFloatLabelsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
