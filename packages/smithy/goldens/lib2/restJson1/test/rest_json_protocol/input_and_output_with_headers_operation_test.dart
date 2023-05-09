// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.input_and_output_with_headers_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i6;
import 'package:rest_json1_v2/src/rest_json_protocol/model/foo_enum.dart'
    as _i8;
import 'package:rest_json1_v2/src/rest_json_protocol/model/input_and_output_with_headers_io.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/model/integer_enum.dart'
    as _i9;
import 'package:rest_json1_v2/src/rest_json_protocol/operation/input_and_output_with_headers_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonInputAndOutputWithStringHeaders (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonInputAndOutputWithStringHeaders',
          documentation: 'Tests requests with string header bindings',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'headerString': 'Hello',
            'headerStringList': [
              'a',
              'b',
              'c',
            ],
            'headerStringSet': [
              'a',
              'b',
              'c',
            ],
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-String': 'Hello',
            'X-StringList': 'a, b, c',
            'X-StringSet': 'a, b, c',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/InputAndOutputWithHeaders',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          InputAndOutputWithHeadersIoRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonInputAndOutputWithQuotedStringHeaders (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonInputAndOutputWithQuotedStringHeaders',
          documentation:
              'Tests requests with string list header bindings that require quoting',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'headerStringList': [
              'b,c',
              '"def"',
              'a',
            ]
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'X-StringList': '"b,c", "\\"def\\"", a'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/InputAndOutputWithHeaders',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          InputAndOutputWithHeadersIoRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonInputAndOutputWithNumericHeaders (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonInputAndOutputWithNumericHeaders',
          documentation: 'Tests requests with numeric header bindings',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'headerByte': 1,
            'headerShort': 123,
            'headerInteger': 123,
            'headerLong': 123,
            'headerFloat': 1.1,
            'headerDouble': 1.1,
            'headerIntegerList': [
              1,
              2,
              3,
            ],
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-Byte': '1',
            'X-Short': '123',
            'X-Integer': '123',
            'X-Long': '123',
            'X-Float': '1.1',
            'X-Double': '1.1',
            'X-IntegerList': '1, 2, 3',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/InputAndOutputWithHeaders',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          InputAndOutputWithHeadersIoRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonInputAndOutputWithBooleanHeaders (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonInputAndOutputWithBooleanHeaders',
          documentation: 'Tests requests with boolean header bindings',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'headerTrueBool': true,
            'headerFalseBool': false,
            'headerBooleanList': [
              true,
              false,
              true,
            ],
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-Boolean1': 'true',
            'X-Boolean2': 'false',
            'X-BooleanList': 'true, false, true',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/InputAndOutputWithHeaders',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          InputAndOutputWithHeadersIoRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonInputAndOutputWithTimestampHeaders (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonInputAndOutputWithTimestampHeaders',
          documentation: 'Tests requests with timestamp header bindings',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'headerTimestampList': [
              1576540098,
              1576540098,
            ]
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-TimestampList':
                'Mon, 16 Dec 2019 23:48:18 GMT, Mon, 16 Dec 2019 23:48:18 GMT'
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/InputAndOutputWithHeaders',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          InputAndOutputWithHeadersIoRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonInputAndOutputWithEnumHeaders (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonInputAndOutputWithEnumHeaders',
          documentation: 'Tests requests with enum header bindings',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'headerEnum': 'Foo',
            'headerEnumList': [
              'Foo',
              'Bar',
              'Baz',
            ],
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-Enum': 'Foo',
            'X-EnumList': 'Foo, Bar, Baz',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/InputAndOutputWithHeaders',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          InputAndOutputWithHeadersIoRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonInputAndOutputWithIntEnumHeaders (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonInputAndOutputWithIntEnumHeaders',
          documentation: 'Tests requests with intEnum header bindings',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'headerIntegerEnum': 1,
            'headerIntegerEnumList': [
              1,
              2,
              3,
            ],
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-IntegerEnum': '1',
            'X-IntegerEnumList': '1, 2, 3',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/InputAndOutputWithHeaders',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          InputAndOutputWithHeadersIoRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonSupportsNaNFloatHeaderInputs (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonSupportsNaNFloatHeaderInputs',
          documentation: 'Supports handling NaN float header values.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'headerFloat': 'NaN',
            'headerDouble': 'NaN',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-Float': 'NaN',
            'X-Double': 'NaN',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/InputAndOutputWithHeaders',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          InputAndOutputWithHeadersIoRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonSupportsInfinityFloatHeaderInputs (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonSupportsInfinityFloatHeaderInputs',
          documentation: 'Supports handling Infinity float header values.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'headerFloat': 'Infinity',
            'headerDouble': 'Infinity',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-Float': 'Infinity',
            'X-Double': 'Infinity',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/InputAndOutputWithHeaders',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          InputAndOutputWithHeadersIoRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonSupportsNegativeInfinityFloatHeaderInputs (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonSupportsNegativeInfinityFloatHeaderInputs',
          documentation: 'Supports handling -Infinity float header values.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'headerFloat': '-Infinity',
            'headerDouble': '-Infinity',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-Float': '-Infinity',
            'X-Double': '-Infinity',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/InputAndOutputWithHeaders',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          InputAndOutputWithHeadersIoRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonInputAndOutputWithStringHeaders (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonInputAndOutputWithStringHeaders',
          documentation: 'Tests responses with string header bindings',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: null,
          bodyMediaType: null,
          params: {
            'headerString': 'Hello',
            'headerStringList': [
              'a',
              'b',
              'c',
            ],
            'headerStringSet': [
              'a',
              'b',
              'c',
            ],
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-String': 'Hello',
            'X-StringList': 'a, b, c',
            'X-StringSet': 'a, b, c',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          InputAndOutputWithHeadersIoRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonInputAndOutputWithQuotedStringHeaders (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonInputAndOutputWithQuotedStringHeaders',
          documentation:
              'Tests responses with string list header bindings that require quoting',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: null,
          bodyMediaType: null,
          params: {
            'headerStringList': [
              'b,c',
              '"def"',
              'a',
            ]
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'X-StringList': '"b,c", "\\"def\\"", a'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          InputAndOutputWithHeadersIoRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonInputAndOutputWithNumericHeaders (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonInputAndOutputWithNumericHeaders',
          documentation: 'Tests responses with numeric header bindings',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: null,
          bodyMediaType: null,
          params: {
            'headerByte': 1,
            'headerShort': 123,
            'headerInteger': 123,
            'headerLong': 123,
            'headerFloat': 1.1,
            'headerDouble': 1.1,
            'headerIntegerList': [
              1,
              2,
              3,
            ],
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-Byte': '1',
            'X-Short': '123',
            'X-Integer': '123',
            'X-Long': '123',
            'X-Float': '1.1',
            'X-Double': '1.1',
            'X-IntegerList': '1, 2, 3',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          InputAndOutputWithHeadersIoRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonInputAndOutputWithBooleanHeaders (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonInputAndOutputWithBooleanHeaders',
          documentation: 'Tests responses with boolean header bindings',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: null,
          bodyMediaType: null,
          params: {
            'headerTrueBool': true,
            'headerFalseBool': false,
            'headerBooleanList': [
              true,
              false,
              true,
            ],
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-Boolean1': 'true',
            'X-Boolean2': 'false',
            'X-BooleanList': 'true, false, true',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          InputAndOutputWithHeadersIoRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonInputAndOutputWithTimestampHeaders (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonInputAndOutputWithTimestampHeaders',
          documentation: 'Tests responses with timestamp header bindings',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: null,
          bodyMediaType: null,
          params: {
            'headerTimestampList': [
              1576540098,
              1576540098,
            ]
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-TimestampList':
                'Mon, 16 Dec 2019 23:48:18 GMT, Mon, 16 Dec 2019 23:48:18 GMT'
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          InputAndOutputWithHeadersIoRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonInputAndOutputWithEnumHeaders (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonInputAndOutputWithEnumHeaders',
          documentation: 'Tests responses with enum header bindings',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: null,
          bodyMediaType: null,
          params: {
            'headerEnum': 'Foo',
            'headerEnumList': [
              'Foo',
              'Bar',
              'Baz',
            ],
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-Enum': 'Foo',
            'X-EnumList': 'Foo, Bar, Baz',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          InputAndOutputWithHeadersIoRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonInputAndOutputWithIntEnumHeaders (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonInputAndOutputWithIntEnumHeaders',
          documentation: 'Tests responses with intEnum header bindings',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: null,
          bodyMediaType: null,
          params: {
            'headerIntegerEnum': 1,
            'headerIntegerEnumList': [
              1,
              2,
              3,
            ],
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-IntegerEnum': '1',
            'X-IntegerEnumList': '1, 2, 3',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          InputAndOutputWithHeadersIoRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonSupportsNaNFloatHeaderOutputs (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonSupportsNaNFloatHeaderOutputs',
          documentation: 'Supports handling NaN float header values.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: null,
          bodyMediaType: null,
          params: {
            'headerFloat': 'NaN',
            'headerDouble': 'NaN',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-Float': 'NaN',
            'X-Double': 'NaN',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          InputAndOutputWithHeadersIoRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonSupportsInfinityFloatHeaderOutputs (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonSupportsInfinityFloatHeaderOutputs',
          documentation: 'Supports handling Infinity float header values.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: null,
          bodyMediaType: null,
          params: {
            'headerFloat': 'Infinity',
            'headerDouble': 'Infinity',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-Float': 'Infinity',
            'X-Double': 'Infinity',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          InputAndOutputWithHeadersIoRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'RestJsonSupportsNegativeInfinityFloatHeaderOutputs (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonSupportsNegativeInfinityFloatHeaderOutputs',
          documentation: 'Supports handling -Infinity float header values.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: null,
          bodyMediaType: null,
          params: {
            'headerFloat': '-Infinity',
            'headerDouble': '-Infinity',
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-Float': '-Infinity',
            'X-Double': '-Infinity',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          InputAndOutputWithHeadersIoRestJson1Serializer()
        ],
      );
    },
  );
}

class InputAndOutputWithHeadersIoRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.InputAndOutputWithHeadersIo> {
  const InputAndOutputWithHeadersIoRestJson1Serializer()
      : super('InputAndOutputWithHeadersIo');

  @override
  Iterable<Type> get types => const [_i5.InputAndOutputWithHeadersIo];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.InputAndOutputWithHeadersIo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.InputAndOutputWithHeadersIoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'headerString':
          result.headerString = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'headerByte':
          result.headerByte = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'headerShort':
          result.headerShort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'headerInteger':
          result.headerInteger = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'headerLong':
          result.headerLong = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.Int64),
          ) as _i6.Int64);
        case 'headerFloat':
          result.headerFloat = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'headerDouble':
          result.headerDouble = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'headerTrueBool':
          result.headerTrueBool = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'headerFalseBool':
          result.headerFalseBool = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'headerStringList':
          result.headerStringList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(String)],
            ),
          ) as _i7.BuiltList<String>));
        case 'headerStringSet':
          result.headerStringSet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i7.BuiltSet,
              [FullType(String)],
            ),
          ) as _i7.BuiltSet<String>));
        case 'headerIntegerList':
          result.headerIntegerList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(int)],
            ),
          ) as _i7.BuiltList<int>));
        case 'headerBooleanList':
          result.headerBooleanList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(bool)],
            ),
          ) as _i7.BuiltList<bool>));
        case 'headerTimestampList':
          result.headerTimestampList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(DateTime)],
            ),
          ) as _i7.BuiltList<DateTime>));
        case 'headerEnum':
          result.headerEnum = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.FooEnum),
          ) as _i8.FooEnum);
        case 'headerEnumList':
          result.headerEnumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(_i8.FooEnum)],
            ),
          ) as _i7.BuiltList<_i8.FooEnum>));
        case 'headerIntegerEnum':
          result.headerIntegerEnum = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i9.IntegerEnum),
          ) as _i9.IntegerEnum);
        case 'headerIntegerEnumList':
          result.headerIntegerEnumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(_i9.IntegerEnum)],
            ),
          ) as _i7.BuiltList<_i9.IntegerEnum>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i5.InputAndOutputWithHeadersIo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
