// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.http_request_with_float_labels_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_request_with_float_labels_input.dart'
    as _i5;
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/http_request_with_float_labels_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestXmlSupportsNaNFloatLabels (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.HttpRequestWithFloatLabelsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestXmlSupportsNaNFloatLabels',
              documentation: 'Supports handling NaN float label values.',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body: '',
              bodyMediaType: null,
              params: {'float': 'NaN', 'double': 'NaN'},
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
              requireQueryParams: []),
          inputSerializers: const [
            HttpRequestWithFloatLabelsInputRestXmlSerializer()
          ]);
    },
  );
  _i1.test(
    'RestXmlSupportsInfinityFloatLabels (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.HttpRequestWithFloatLabelsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestXmlSupportsInfinityFloatLabels',
              documentation: 'Supports handling Infinity float label values.',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body: '',
              bodyMediaType: null,
              params: {'float': 'Infinity', 'double': 'Infinity'},
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
              requireQueryParams: []),
          inputSerializers: const [
            HttpRequestWithFloatLabelsInputRestXmlSerializer()
          ]);
    },
  );
  _i1.test(
    'RestXmlSupportsNegativeInfinityFloatLabels (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.HttpRequestWithFloatLabelsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestXmlSupportsNegativeInfinityFloatLabels',
              documentation: 'Supports handling -Infinity float label values.',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body: '',
              bodyMediaType: null,
              params: {'float': '-Infinity', 'double': '-Infinity'},
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
              requireQueryParams: []),
          inputSerializers: const [
            HttpRequestWithFloatLabelsInputRestXmlSerializer()
          ]);
    },
  );
}

class HttpRequestWithFloatLabelsInputRestXmlSerializer extends _i4
    .StructuredSmithySerializer<_i5.HttpRequestWithFloatLabelsInput> {
  const HttpRequestWithFloatLabelsInputRestXmlSerializer()
      : super('HttpRequestWithFloatLabelsInput');

  @override
  Iterable<Type> get types => const [_i5.HttpRequestWithFloatLabelsInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  _i5.HttpRequestWithFloatLabelsInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.HttpRequestWithFloatLabelsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'double':
          result.double_ = (serializers.deserialize(value!,
              specifiedType: const FullType(double)) as double);
          break;
        case 'float':
          result.float = (serializers.deserialize(value!,
              specifiedType: const FullType(double)) as double);
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
