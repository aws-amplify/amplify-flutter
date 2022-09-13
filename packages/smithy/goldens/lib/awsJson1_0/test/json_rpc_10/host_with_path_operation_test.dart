// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library aws_json1_0.json_rpc_10.test.host_with_path_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_0/src/json_rpc_10/operation/host_with_path_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'AwsJson10HostWithPath (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.HostWithPathOperation(
              region: 'us-east-1',
              baseUri: Uri.parse('https://example.com/custom')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'AwsJson10HostWithPath',
              documentation:
                  'Custom endpoints supplied by users can have paths',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
              authScheme: null,
              body: '{}',
              bodyMediaType: null,
              params: {},
              vendorParamsShape: null,
              vendorParams: {},
              headers: {},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: _i2.AppliesTo.client,
              method: 'POST',
              uri: '/custom/',
              host: 'example.com/custom',
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const []);
    },
  );
}
