// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.endpoint_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:rest_xml_v1/src/rest_xml_protocol/operation/endpoint_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestXmlEndpointTrait (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.EndpointOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestXmlEndpointTrait',
              documentation:
                  'Operations can prepend to the given host if they define the\nendpoint trait.',
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
              uri: '/EndpointOperation',
              host: 'example.com',
              resolvedHost: 'foo.example.com',
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const []);
    },
  );
}
