// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_validation_protocol.test.recursive_structures_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_structures_input.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_union_one.dart'
    as _i6;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/validation_exception.dart'
    as _i7;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/validation_exception_field.dart'
    as _i9;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/operation/recursive_structures_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonRecursiveStructuresValidate (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.RecursiveStructuresOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonRecursiveStructuresValidate',
          documentation: 'Validation should work with recursive structures.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '{ "union" : {\n    "union" : {\n        "union" : { "string" : "abc" }\n    }\n  }\n}',
          bodyMediaType: 'application/json',
          params: {
            'union': {
              'union': {
                'union': {'string': 'abc'}
              }
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'content-type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/RecursiveStructures',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [RecursiveStructuresInputRestJson1Serializer()],
      );
    },
  );
}

class RecursiveStructuresInputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.RecursiveStructuresInput> {
  const RecursiveStructuresInputRestJson1Serializer()
      : super('RecursiveStructuresInput');

  @override
  Iterable<Type> get types => const [_i5.RecursiveStructuresInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.RecursiveStructuresInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.RecursiveStructuresInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'union':
          if (value != null) {
            result.union = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.RecursiveUnionOne),
            ) as _i6.RecursiveUnionOne);
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

class ValidationExceptionRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i7.ValidationException> {
  const ValidationExceptionRestJson1Serializer() : super('ValidationException');

  @override
  Iterable<Type> get types => const [_i7.ValidationException];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i7.ValidationException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i7.ValidationExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'fieldList':
          if (value != null) {
            result.fieldList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i9.ValidationExceptionField)],
              ),
            ) as _i8.BuiltList<_i9.ValidationExceptionField>));
          }
          break;
        case 'message':
          result.message = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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

class ValidationExceptionFieldRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i9.ValidationExceptionField> {
  const ValidationExceptionFieldRestJson1Serializer()
      : super('ValidationExceptionField');

  @override
  Iterable<Type> get types => const [_i9.ValidationExceptionField];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i9.ValidationExceptionField deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i9.ValidationExceptionFieldBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          result.message = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'path':
          result.path = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
