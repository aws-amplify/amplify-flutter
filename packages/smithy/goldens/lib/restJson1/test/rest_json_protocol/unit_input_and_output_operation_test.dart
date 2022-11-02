// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.unit_input_and_output_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:rest_json1_v1/src/rest_json_protocol/operation/unit_input_and_output_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonUnitInputAndOutput (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.UnitInputAndOutputOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonUnitInputAndOutput',
          documentation:
              'A unit type input serializes no payload. When clients do not\nneed to serialize any data in the payload, they should omit\na payload altogether.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
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
          uri: '/UnitInputAndOutput',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [],
      );
    },
  );
  _i1.test(
    'RestJsonUnitInputAndOutputNoOutput (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.UnitInputAndOutputOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonUnitInputAndOutputNoOutput',
          documentation:
              'When an operation defines Unit output, the service will respond\nwith an empty payload, and may optionally include the content-type\nheader.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
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
          code: 200,
        ),
        outputSerializers: const [],
      );
    },
  );
}
