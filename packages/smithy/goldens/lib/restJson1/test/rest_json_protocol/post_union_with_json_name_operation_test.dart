// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.post_union_with_json_name_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/post_union_with_json_name_input.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/post_union_with_json_name_output.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/union_with_json_name.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/operation/post_union_with_json_name_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'PostUnionWithJsonNameRequest1 (request)',
    () async {
      await _i2.httpRequestTest(
        operation: PostUnionWithJsonNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'PostUnionWithJsonNameRequest1',
          documentation: 'Tests that jsonName works with union members.',
          protocol: _i3.ShapeId(
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
        operation: PostUnionWithJsonNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'PostUnionWithJsonNameRequest2',
          documentation: 'Tests that jsonName works with union members.',
          protocol: _i3.ShapeId(
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
        operation: PostUnionWithJsonNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'PostUnionWithJsonNameRequest3',
          documentation: 'Tests that jsonName works with union members.',
          protocol: _i3.ShapeId(
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
        operation: PostUnionWithJsonNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'PostUnionWithJsonNameResponse1',
          documentation: 'Tests that jsonName works with union members.',
          protocol: _i3.ShapeId(
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
        operation: PostUnionWithJsonNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'PostUnionWithJsonNameResponse2',
          documentation: 'Tests that jsonName works with union members.',
          protocol: _i3.ShapeId(
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
        operation: PostUnionWithJsonNameOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'PostUnionWithJsonNameResponse3',
          documentation: 'Tests that jsonName works with union members.',
          protocol: _i3.ShapeId(
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
    extends _i3.StructuredSmithySerializer<PostUnionWithJsonNameInput> {
  const PostUnionWithJsonNameInputRestJson1Serializer()
      : super('PostUnionWithJsonNameInput');

  @override
  Iterable<Type> get types => const [PostUnionWithJsonNameInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  PostUnionWithJsonNameInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostUnionWithJsonNameInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'value':
          result.value = (serializers.deserialize(
            value,
            specifiedType: const FullType(UnionWithJsonName),
          ) as UnionWithJsonName);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PostUnionWithJsonNameInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class PostUnionWithJsonNameOutputRestJson1Serializer
    extends _i3.StructuredSmithySerializer<PostUnionWithJsonNameOutput> {
  const PostUnionWithJsonNameOutputRestJson1Serializer()
      : super('PostUnionWithJsonNameOutput');

  @override
  Iterable<Type> get types => const [PostUnionWithJsonNameOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  PostUnionWithJsonNameOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostUnionWithJsonNameOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'value':
          result.value = (serializers.deserialize(
            value,
            specifiedType: const FullType(UnionWithJsonName),
          ) as UnionWithJsonName);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PostUnionWithJsonNameOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
