// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.host_with_path_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:rest_json1_v2/src/rest_json_protocol/operation/host_with_path_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonHostWithPath (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.HostWithPathOperation(
              region: 'us-east-1',
              baseUri: Uri.parse('https://example.com/custom')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestJsonHostWithPath',
              documentation:
                  'Custom endpoints supplied by users can have paths',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
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
              appliesTo: _i2.AppliesTo.client,
              method: 'GET',
              uri: '/custom/HostWithPathOperation',
              host: 'example.com/custom',
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const []);
    },
  );
}
