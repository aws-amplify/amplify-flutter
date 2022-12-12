// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.http_request_with_labels_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i6;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/http_request_with_labels_input.dart'
    as _i5;
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/http_request_with_labels_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'InputWithHeadersAndAllParams (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.HttpRequestWithLabelsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'InputWithHeadersAndAllParams',
          documentation: 'Sends a GET request that uses URI label bindings',
          protocol: _i4.ShapeId(
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
}

class HttpRequestWithLabelsInputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i5.HttpRequestWithLabelsInput> {
  const HttpRequestWithLabelsInputRestXmlSerializer()
      : super('HttpRequestWithLabelsInput');

  @override
  Iterable<Type> get types => const [_i5.HttpRequestWithLabelsInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i5.HttpRequestWithLabelsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.HttpRequestWithLabelsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'boolean':
          result.boolean = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'double':
          result.double_ = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
          break;
        case 'float':
          result.float = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
          break;
        case 'integer':
          result.integer = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'long':
          result.long = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i6.Int64),
          ) as _i6.Int64);
          break;
        case 'short':
          result.short = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'string':
          result.string = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'timestamp':
          result.timestamp = _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value!,
          );
          break;
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
