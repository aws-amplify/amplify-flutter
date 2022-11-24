// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.post_union_with_json_name_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/post_union_with_json_name_input.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/model/post_union_with_json_name_output.dart'
    as _i7;
import 'package:rest_json1_v2/src/rest_json_protocol/model/union_with_json_name.dart'
    as _i6;
import 'package:rest_json1_v2/src/rest_json_protocol/operation/post_union_with_json_name_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'PostUnionWithJsonNameRequest1 (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.PostUnionWithJsonNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'PostUnionWithJsonNameRequest1',
          documentation: 'Tests that jsonName works with union members.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "value": {\n        "FOO": "hi"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'value': {'foo': 'hi'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/PostUnionWithJsonName',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          PostUnionWithJsonNameInputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'PostUnionWithJsonNameRequest2 (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.PostUnionWithJsonNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'PostUnionWithJsonNameRequest2',
          documentation: 'Tests that jsonName works with union members.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "value": {\n        "_baz": "hi"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'value': {'baz': 'hi'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/PostUnionWithJsonName',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          PostUnionWithJsonNameInputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'PostUnionWithJsonNameRequest3 (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.PostUnionWithJsonNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'PostUnionWithJsonNameRequest3',
          documentation: 'Tests that jsonName works with union members.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "value": {\n        "bar": "hi"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'value': {'bar': 'hi'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/PostUnionWithJsonName',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          PostUnionWithJsonNameInputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'PostUnionWithJsonNameResponse1 (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.PostUnionWithJsonNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'PostUnionWithJsonNameResponse1',
          documentation: 'Tests that jsonName works with union members.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "value": {\n        "FOO": "hi"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'value': {'foo': 'hi'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          PostUnionWithJsonNameOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'PostUnionWithJsonNameResponse2 (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.PostUnionWithJsonNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'PostUnionWithJsonNameResponse2',
          documentation: 'Tests that jsonName works with union members.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "value": {\n        "_baz": "hi"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'value': {'baz': 'hi'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          PostUnionWithJsonNameOutputRestJson1Serializer()
        ],
      );
    },
  );
  _i1.test(
    'PostUnionWithJsonNameResponse3 (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.PostUnionWithJsonNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'PostUnionWithJsonNameResponse3',
          documentation: 'Tests that jsonName works with union members.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "value": {\n        "bar": "hi"\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'value': {'bar': 'hi'}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [
          PostUnionWithJsonNameOutputRestJson1Serializer()
        ],
      );
    },
  );
}

class PostUnionWithJsonNameInputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.PostUnionWithJsonNameInput> {
  const PostUnionWithJsonNameInputRestJson1Serializer()
      : super('PostUnionWithJsonNameInput');

  @override
  Iterable<Type> get types => const [_i5.PostUnionWithJsonNameInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.PostUnionWithJsonNameInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.PostUnionWithJsonNameInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'value':
          if (value != null) {
            result.value = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.UnionWithJsonName),
            ) as _i6.UnionWithJsonName);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class PostUnionWithJsonNameOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i7.PostUnionWithJsonNameOutput> {
  const PostUnionWithJsonNameOutputRestJson1Serializer()
      : super('PostUnionWithJsonNameOutput');

  @override
  Iterable<Type> get types => const [_i7.PostUnionWithJsonNameOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i7.PostUnionWithJsonNameOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i7.PostUnionWithJsonNameOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'value':
          result.value = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i6.UnionWithJsonName),
          ) as _i6.UnionWithJsonName);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
