// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.no_input_and_no_output_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:rest_xml_v2/src/rest_xml_protocol/operation/no_input_and_no_output_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'NoInputAndNoOutput (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.NoInputAndNoOutputOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'NoInputAndNoOutput',
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
              uri: '/NoInputAndNoOutput',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const []);
    },
  );
  _i1.test(
    'NoInputAndNoOutput (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.NoInputAndNoOutputOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'NoInputAndNoOutput',
              documentation: 'No output serializes no payload',
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
          outputSerializers: const []);
    },
  );
}
