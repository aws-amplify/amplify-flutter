// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml.rest_xml_protocol.test.constant_query_string_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml/src/rest_xml_protocol/model/constant_query_string_input.dart'
    as _i5;
import 'package:rest_xml/src/rest_xml_protocol/operation/constant_query_string_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'ConstantQueryString (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.ConstantQueryStringOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'ConstantQueryString',
              documentation: 'Includes constant query string parameters',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body: '',
              bodyMediaType: null,
              params: {'hello': 'hi'},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'GET',
              uri: '/ConstantQueryString/hi',
              host: null,
              resolvedHost: null,
              queryParams: ['foo=bar', 'hello'],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            ConstantQueryStringInputRestXmlSerializer()
          ]);
    },
  );
}

class ConstantQueryStringInputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i5.ConstantQueryStringInput> {
  const ConstantQueryStringInputRestXmlSerializer()
      : super('ConstantQueryStringInput');

  @override
  Iterable<Type> get types => const [_i5.ConstantQueryStringInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  _i5.ConstantQueryStringInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.ConstantQueryStringInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'hello':
          result.hello = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
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
