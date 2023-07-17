// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.http_prefix_headers_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_prefix_headers_input.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_prefix_headers_output.dart'
    as _i7;
import 'package:rest_json1_v2/src/rest_json_protocol/operation/http_prefix_headers_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonHttpPrefixHeadersArePresent (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.HttpPrefixHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonHttpPrefixHeadersArePresent',
          documentation: 'Adds headers by prefix',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'foo': 'Foo',
            'fooMap': {
              'Abc': 'Abc value',
              'Def': 'Def value',
            },
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-Foo': 'Foo',
            'X-Foo-Abc': 'Abc value',
            'X-Foo-Def': 'Def value',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'GET',
          uri: '/HttpPrefixHeaders',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [HttpPrefixHeadersInputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonHttpPrefixHeadersAreNotPresent (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.HttpPrefixHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonHttpPrefixHeadersAreNotPresent',
          documentation:
              'No prefix headers are serialized because the value is empty',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '',
          bodyMediaType: null,
          params: {
            'foo': 'Foo',
            'fooMap': {},
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'X-Foo': 'Foo'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          method: 'GET',
          uri: '/HttpPrefixHeaders',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [HttpPrefixHeadersInputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonHttpPrefixHeadersArePresent (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.HttpPrefixHeadersOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonHttpPrefixHeadersArePresent',
          documentation: 'Adds headers by prefix',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: null,
          bodyMediaType: null,
          params: {
            'foo': 'Foo',
            'fooMap': {
              'Abc': 'Abc value',
              'Def': 'Def value',
            },
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'X-Foo': 'Foo',
            'X-Foo-Abc': 'Abc value',
            'X-Foo-Def': 'Def value',
          },
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [HttpPrefixHeadersOutputRestJson1Serializer()],
      );
    },
  );
}

class HttpPrefixHeadersInputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.HttpPrefixHeadersInput> {
  const HttpPrefixHeadersInputRestJson1Serializer()
      : super('HttpPrefixHeadersInput');

  @override
  Iterable<Type> get types => const [_i5.HttpPrefixHeadersInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.HttpPrefixHeadersInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.HttpPrefixHeadersInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'foo':
          result.foo = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'fooMap':
          result.fooMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i6.BuiltMap<String, String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i5.HttpPrefixHeadersInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class HttpPrefixHeadersOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i7.HttpPrefixHeadersOutput> {
  const HttpPrefixHeadersOutputRestJson1Serializer()
      : super('HttpPrefixHeadersOutput');

  @override
  Iterable<Type> get types => const [_i7.HttpPrefixHeadersOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i7.HttpPrefixHeadersOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i7.HttpPrefixHeadersOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'foo':
          result.foo = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'fooMap':
          result.fooMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i6.BuiltMap<String, String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i7.HttpPrefixHeadersOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
