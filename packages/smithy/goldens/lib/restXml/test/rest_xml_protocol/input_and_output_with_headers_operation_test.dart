// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.input_and_output_with_headers_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:rest_xml_v1/src/rest_xml_protocol/model/foo_enum.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/input_and_output_with_headers_io.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/input_and_output_with_headers_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('InputAndOutputWithStringHeaders (request)', () async {
    await _i2.httpRequestTest(
      operation: InputAndOutputWithHeadersOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'InputAndOutputWithStringHeaders',
        documentation: 'Tests requests with string header bindings',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {
          'headerString': 'Hello',
          'headerStringList': ['a', 'b', 'c'],
          'headerStringSet': ['a', 'b', 'c'],
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
      inputSerializers: const [InputAndOutputWithHeadersIoRestXmlSerializer()],
    );
  });
  _i1.test('InputAndOutputWithNumericHeaders (request)', () async {
    await _i2.httpRequestTest(
      operation: InputAndOutputWithHeadersOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'InputAndOutputWithNumericHeaders',
        documentation: 'Tests requests with numeric header bindings',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
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
          'headerIntegerList': [1, 2, 3],
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
      inputSerializers: const [InputAndOutputWithHeadersIoRestXmlSerializer()],
    );
  });
  _i1.test('InputAndOutputWithBooleanHeaders (request)', () async {
    await _i2.httpRequestTest(
      operation: InputAndOutputWithHeadersOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'InputAndOutputWithBooleanHeaders',
        documentation: 'Tests requests with boolean header bindings',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {
          'headerTrueBool': true,
          'headerFalseBool': false,
          'headerBooleanList': [true, false, true],
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
      inputSerializers: const [InputAndOutputWithHeadersIoRestXmlSerializer()],
    );
  });
  _i1.test('InputAndOutputWithTimestampHeaders (request)', () async {
    await _i2.httpRequestTest(
      operation: InputAndOutputWithHeadersOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'InputAndOutputWithTimestampHeaders',
        documentation: 'Tests requests with timestamp header bindings',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {
          'headerTimestampList': [1576540098, 1576540098],
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'X-TimestampList':
              'Mon, 16 Dec 2019 23:48:18 GMT, Mon, 16 Dec 2019 23:48:18 GMT',
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
      inputSerializers: const [InputAndOutputWithHeadersIoRestXmlSerializer()],
    );
  });
  _i1.test('InputAndOutputWithEnumHeaders (request)', () async {
    await _i2.httpRequestTest(
      operation: InputAndOutputWithHeadersOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'InputAndOutputWithEnumHeaders',
        documentation: 'Tests requests with enum header bindings',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {
          'headerEnum': 'Foo',
          'headerEnumList': ['Foo', 'Bar', 'Baz'],
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'X-Enum': 'Foo', 'X-EnumList': 'Foo, Bar, Baz'},
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
      inputSerializers: const [InputAndOutputWithHeadersIoRestXmlSerializer()],
    );
  });
  _i1.test('RestXmlSupportsNaNFloatHeaderInputs (request)', () async {
    await _i2.httpRequestTest(
      operation: InputAndOutputWithHeadersOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'RestXmlSupportsNaNFloatHeaderInputs',
        documentation: 'Supports handling NaN float header values.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {'headerFloat': 'NaN', 'headerDouble': 'NaN'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'X-Float': 'NaN', 'X-Double': 'NaN'},
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
      inputSerializers: const [InputAndOutputWithHeadersIoRestXmlSerializer()],
    );
  });
  _i1.test('RestXmlSupportsInfinityFloatHeaderInputs (request)', () async {
    await _i2.httpRequestTest(
      operation: InputAndOutputWithHeadersOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'RestXmlSupportsInfinityFloatHeaderInputs',
        documentation: 'Supports handling Infinity float header values.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {'headerFloat': 'Infinity', 'headerDouble': 'Infinity'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'X-Float': 'Infinity', 'X-Double': 'Infinity'},
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
      inputSerializers: const [InputAndOutputWithHeadersIoRestXmlSerializer()],
    );
  });
  _i1.test(
    'RestXmlSupportsNegativeInfinityFloatHeaderInputs (request)',
    () async {
      await _i2.httpRequestTest(
        operation: InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestXmlSupportsNegativeInfinityFloatHeaderInputs',
          documentation: 'Supports handling -Infinity float header values.',
          protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'headerFloat': '-Infinity', 'headerDouble': '-Infinity'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'X-Float': '-Infinity', 'X-Double': '-Infinity'},
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
          InputAndOutputWithHeadersIoRestXmlSerializer(),
        ],
      );
    },
  );
  _i1.test('InputAndOutputWithStringHeaders (response)', () async {
    await _i2.httpResponseTest(
      operation: InputAndOutputWithHeadersOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'InputAndOutputWithStringHeaders',
        documentation: 'Tests responses with string header bindings',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {
          'headerString': 'Hello',
          'headerStringList': ['a', 'b', 'c'],
          'headerStringSet': ['a', 'b', 'c'],
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
      outputSerializers: const [InputAndOutputWithHeadersIoRestXmlSerializer()],
    );
  });
  _i1.test('InputAndOutputWithNumericHeaders (response)', () async {
    await _i2.httpResponseTest(
      operation: InputAndOutputWithHeadersOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'InputAndOutputWithNumericHeaders',
        documentation: 'Tests responses with numeric header bindings',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
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
          'headerIntegerList': [1, 2, 3],
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
      outputSerializers: const [InputAndOutputWithHeadersIoRestXmlSerializer()],
    );
  });
  _i1.test('InputAndOutputWithBooleanHeaders (response)', () async {
    await _i2.httpResponseTest(
      operation: InputAndOutputWithHeadersOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'InputAndOutputWithBooleanHeaders',
        documentation: 'Tests responses with boolean header bindings',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {
          'headerTrueBool': true,
          'headerFalseBool': false,
          'headerBooleanList': [true, false, true],
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
      outputSerializers: const [InputAndOutputWithHeadersIoRestXmlSerializer()],
    );
  });
  _i1.test('InputAndOutputWithTimestampHeaders (response)', () async {
    await _i2.httpResponseTest(
      operation: InputAndOutputWithHeadersOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'InputAndOutputWithTimestampHeaders',
        documentation: 'Tests responses with timestamp header bindings',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {
          'headerTimestampList': [1576540098, 1576540098],
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'X-TimestampList':
              'Mon, 16 Dec 2019 23:48:18 GMT, Mon, 16 Dec 2019 23:48:18 GMT',
        },
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [InputAndOutputWithHeadersIoRestXmlSerializer()],
    );
  });
  _i1.test('InputAndOutputWithEnumHeaders (response)', () async {
    await _i2.httpResponseTest(
      operation: InputAndOutputWithHeadersOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'InputAndOutputWithEnumHeaders',
        documentation: 'Tests responses with enum header bindings',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {
          'headerEnum': 'Foo',
          'headerEnumList': ['Foo', 'Bar', 'Baz'],
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'X-Enum': 'Foo', 'X-EnumList': 'Foo, Bar, Baz'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [InputAndOutputWithHeadersIoRestXmlSerializer()],
    );
  });
  _i1.test('RestXmlSupportsNaNFloatHeaderOutputs (response)', () async {
    await _i2.httpResponseTest(
      operation: InputAndOutputWithHeadersOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'RestXmlSupportsNaNFloatHeaderOutputs',
        documentation: 'Supports handling NaN float header values.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {'headerFloat': 'NaN', 'headerDouble': 'NaN'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'X-Float': 'NaN', 'X-Double': 'NaN'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [InputAndOutputWithHeadersIoRestXmlSerializer()],
    );
  });
  _i1.test('RestXmlSupportsInfinityFloatHeaderOutputs (response)', () async {
    await _i2.httpResponseTest(
      operation: InputAndOutputWithHeadersOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'RestXmlSupportsInfinityFloatHeaderOutputs',
        documentation: 'Supports handling Infinity float header values.',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {'headerFloat': 'Infinity', 'headerDouble': 'Infinity'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'X-Float': 'Infinity', 'X-Double': 'Infinity'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [InputAndOutputWithHeadersIoRestXmlSerializer()],
    );
  });
  _i1.test(
    'RestXmlSupportsNegativeInfinityFloatHeaderOutputs (response)',
    () async {
      await _i2.httpResponseTest(
        operation: InputAndOutputWithHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestXmlSupportsNegativeInfinityFloatHeaderOutputs',
          documentation: 'Supports handling -Infinity float header values.',
          protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {'headerFloat': '-Infinity', 'headerDouble': '-Infinity'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'X-Float': '-Infinity', 'X-Double': '-Infinity'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          InputAndOutputWithHeadersIoRestXmlSerializer(),
        ],
      );
    },
  );
}

class InputAndOutputWithHeadersIoRestXmlSerializer
    extends _i3.StructuredSmithySerializer<InputAndOutputWithHeadersIo> {
  const InputAndOutputWithHeadersIoRestXmlSerializer()
    : super('InputAndOutputWithHeadersIo');

  @override
  Iterable<Type> get types => const [InputAndOutputWithHeadersIo];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  InputAndOutputWithHeadersIo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InputAndOutputWithHeadersIoBuilder();
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
          result.headerString =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'headerByte':
          result.headerByte =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )
                  as int);
        case 'headerShort':
          result.headerShort =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )
                  as int);
        case 'headerInteger':
          result.headerInteger =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )
                  as int);
        case 'headerLong':
          result.headerLong =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(_i4.Int64),
                  )
                  as _i4.Int64);
        case 'headerFloat':
          result.headerFloat =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(double),
                  )
                  as double);
        case 'headerDouble':
          result.headerDouble =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(double),
                  )
                  as double);
        case 'headerTrueBool':
          result.headerTrueBool =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool);
        case 'headerFalseBool':
          result.headerFalseBool =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool);
        case 'headerStringList':
          result.headerStringList.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i5.BuiltList, [
                    FullType(String),
                  ]),
                )
                as _i5.BuiltList<String>),
          );
        case 'headerStringSet':
          result.headerStringSet.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i5.BuiltSet, [
                    FullType(String),
                  ]),
                )
                as _i5.BuiltSet<String>),
          );
        case 'headerIntegerList':
          result.headerIntegerList.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i5.BuiltList, [FullType(int)]),
                )
                as _i5.BuiltList<int>),
          );
        case 'headerBooleanList':
          result.headerBooleanList.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i5.BuiltList, [
                    FullType(bool),
                  ]),
                )
                as _i5.BuiltList<bool>),
          );
        case 'headerTimestampList':
          result.headerTimestampList.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i5.BuiltList, [
                    FullType(DateTime),
                  ]),
                )
                as _i5.BuiltList<DateTime>),
          );
        case 'headerEnum':
          result.headerEnum =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(FooEnum),
                  )
                  as FooEnum);
        case 'headerEnumList':
          result.headerEnumList.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i5.BuiltList, [
                    FullType(FooEnum),
                  ]),
                )
                as _i5.BuiltList<FooEnum>),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InputAndOutputWithHeadersIo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
