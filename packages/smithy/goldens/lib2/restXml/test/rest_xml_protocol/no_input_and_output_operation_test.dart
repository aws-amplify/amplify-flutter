// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.no_input_and_output_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/no_input_and_output_output.dart'
    as _i5;
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/no_input_and_output_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'NoInputAndOutput (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.NoInputAndOutputOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'NoInputAndOutput',
              documentation: 'No input serializes no payload',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body: '',
              bodyMediaType: null,
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'POST',
              uri: '/NoInputAndOutputOutput',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const []);
    },
  );
  _i1.test(
    'NoInputAndOutput (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.NoInputAndOutputOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'NoInputAndOutput',
              documentation: 'Empty output serializes no payload',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
              authScheme: null,
              body: '',
              bodyMediaType: null,
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [NoInputAndOutputOutputRestXmlSerializer()]);
    },
  );
}

class NoInputAndOutputOutputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<_i5.NoInputAndOutputOutput> {
  const NoInputAndOutputOutputRestXmlSerializer()
      : super('NoInputAndOutputOutput');

  @override
  Iterable<Type> get types => const [_i5.NoInputAndOutputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  _i5.NoInputAndOutputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return _i5.NoInputAndOutputOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}
