// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.recursive_shapes_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/recursive_shapes_input_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/recursive_shapes_input_output_nested1.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/recursive_shapes_input_output_nested2.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/operation/recursive_shapes_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonRecursiveShapes (request)',
    () async {
      await _i2.httpRequestTest(
        operation: RecursiveShapesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonRecursiveShapes',
          documentation: 'Serializes recursive structures',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '{\n    "nested": {\n        "foo": "Foo1",\n        "nested": {\n            "bar": "Bar1",\n            "recursiveMember": {\n                "foo": "Foo2",\n                "nested": {\n                    "bar": "Bar2"\n                }\n            }\n        }\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'nested': {
              'foo': 'Foo1',
              'nested': {
                'bar': 'Bar1',
                'recursiveMember': {
                  'foo': 'Foo2',
                  'nested': {'bar': 'Bar2'},
                },
              },
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/RecursiveShapes',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          RecursiveShapesInputOutputRestJson1Serializer(),
          RecursiveShapesInputOutputNested1RestJson1Serializer(),
          RecursiveShapesInputOutputNested2RestJson1Serializer(),
        ],
      );
    },
  );
  _i1.test(
    'RestJsonRecursiveShapes (response)',
    () async {
      await _i2.httpResponseTest(
        operation: RecursiveShapesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonRecursiveShapes',
          documentation: 'Serializes recursive structures',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '{\n    "nested": {\n        "foo": "Foo1",\n        "nested": {\n            "bar": "Bar1",\n            "recursiveMember": {\n                "foo": "Foo2",\n                "nested": {\n                    "bar": "Bar2"\n                }\n            }\n        }\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'nested': {
              'foo': 'Foo1',
              'nested': {
                'bar': 'Bar1',
                'recursiveMember': {
                  'foo': 'Foo2',
                  'nested': {'bar': 'Bar2'},
                },
              },
            }
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
          RecursiveShapesInputOutputRestJson1Serializer(),
          RecursiveShapesInputOutputNested1RestJson1Serializer(),
          RecursiveShapesInputOutputNested2RestJson1Serializer(),
        ],
      );
    },
  );
}

class RecursiveShapesInputOutputRestJson1Serializer
    extends _i3.StructuredSmithySerializer<RecursiveShapesInputOutput> {
  const RecursiveShapesInputOutputRestJson1Serializer()
      : super('RecursiveShapesInputOutput');

  @override
  Iterable<Type> get types => const [RecursiveShapesInputOutput];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  RecursiveShapesInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecursiveShapesInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nested':
          result.nested.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RecursiveShapesInputOutputNested1),
          ) as RecursiveShapesInputOutputNested1));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RecursiveShapesInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class RecursiveShapesInputOutputNested1RestJson1Serializer
    extends _i3.StructuredSmithySerializer<RecursiveShapesInputOutputNested1> {
  const RecursiveShapesInputOutputNested1RestJson1Serializer()
      : super('RecursiveShapesInputOutputNested1');

  @override
  Iterable<Type> get types => const [RecursiveShapesInputOutputNested1];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  RecursiveShapesInputOutputNested1 deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecursiveShapesInputOutputNested1Builder();
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
        case 'nested':
          result.nested.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RecursiveShapesInputOutputNested2),
          ) as RecursiveShapesInputOutputNested2));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RecursiveShapesInputOutputNested1 object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class RecursiveShapesInputOutputNested2RestJson1Serializer
    extends _i3.StructuredSmithySerializer<RecursiveShapesInputOutputNested2> {
  const RecursiveShapesInputOutputNested2RestJson1Serializer()
      : super('RecursiveShapesInputOutputNested2');

  @override
  Iterable<Type> get types => const [RecursiveShapesInputOutputNested2];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  RecursiveShapesInputOutputNested2 deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecursiveShapesInputOutputNested2Builder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'bar':
          result.bar = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'recursiveMember':
          result.recursiveMember.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RecursiveShapesInputOutputNested1),
          ) as RecursiveShapesInputOutputNested1));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RecursiveShapesInputOutputNested2 object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
