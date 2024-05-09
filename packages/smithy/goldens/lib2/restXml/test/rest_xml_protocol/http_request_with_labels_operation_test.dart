// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.http_request_with_labels_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_request_with_labels_input.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/http_request_with_labels_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'InputWithHeadersAndAllParams (request)',
    () async {
      await _i2.httpRequestTest(
        operation: HttpRequestWithLabelsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'InputWithHeadersAndAllParams',
          documentation: 'Sends a GET request that uses URI label bindings',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'string': 'string',
            'short': 1,
            'integer': 2,
            'long': 3,
            'float': 4.1,
            'double': 5.1,
            'boolean': true,
            'timestamp': 1576540098,
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri:
              '/HttpRequestWithLabels/string/1/2/3/4.1/5.1/true/2019-12-16T23%3A48%3A18Z',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [HttpRequestWithLabelsInputRestXmlSerializer()],
      );
    },
  );
  _i1.test(
    'HttpRequestLabelEscaping (request)',
    () async {
      await _i2.httpRequestTest(
        operation: HttpRequestWithLabelsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'HttpRequestLabelEscaping',
          documentation: 'Sends a GET request that uses URI label bindings',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restXml',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'string': ' %:/?#[]@!\$&\'()*+,;=😹',
            'short': 1,
            'integer': 2,
            'long': 3,
            'float': 4.1,
            'double': 5.1,
            'boolean': true,
            'timestamp': 1576540098,
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri:
              '/HttpRequestWithLabels/%20%25%3A%2F%3F%23%5B%5D%40%21%24%26%27%28%29%2A%2B%2C%3B%3D%F0%9F%98%B9/1/2/3/4.1/5.1/true/2019-12-16T23%3A48%3A18Z',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [HttpRequestWithLabelsInputRestXmlSerializer()],
      );
    },
  );
}

class HttpRequestWithLabelsInputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<HttpRequestWithLabelsInput> {
  const HttpRequestWithLabelsInputRestXmlSerializer()
      : super('HttpRequestWithLabelsInput');

  @override
  Iterable<Type> get types => const [HttpRequestWithLabelsInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  HttpRequestWithLabelsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpRequestWithLabelsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'string':
          result.string = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'short':
          result.short = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'integer':
          result.integer = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'long':
          result.long = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.Int64),
          ) as _i4.Int64);
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
        case 'boolean':
          result.boolean = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'timestamp':
          result.timestamp = _i3.TimestampSerializer.epochSeconds.deserialize(
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
    HttpRequestWithLabelsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
