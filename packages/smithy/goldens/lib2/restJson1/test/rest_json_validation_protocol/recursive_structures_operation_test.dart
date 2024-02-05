// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_validation_protocol.test.recursive_structures_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_structures_input.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_union_one.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/validation_exception.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/validation_exception_field.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/operation/recursive_structures_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonRecursiveStructuresValidate (request)',
    () async {
      await _i2.httpRequestTest(
        operation: RecursiveStructuresOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonRecursiveStructuresValidate',
          documentation: 'Validation should work with recursive structures.',
          protocol: _i3.ShapeId(
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
    extends _i3.StructuredSmithySerializer<RecursiveStructuresInput> {
  const RecursiveStructuresInputRestJson1Serializer()
      : super('RecursiveStructuresInput');

  @override
  Iterable<Type> get types => const [RecursiveStructuresInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  RecursiveStructuresInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecursiveStructuresInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'union':
          result.union = (serializers.deserialize(
            value,
            specifiedType: const FullType(RecursiveUnionOne),
          ) as RecursiveUnionOne);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RecursiveStructuresInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ValidationExceptionRestJson1Serializer
    extends _i3.StructuredSmithySerializer<ValidationException> {
  const ValidationExceptionRestJson1Serializer() : super('ValidationException');

  @override
  Iterable<Type> get types => const [ValidationException];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  ValidationException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidationExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'fieldList':
          result.fieldList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(ValidationExceptionField)],
            ),
          ) as _i4.BuiltList<ValidationExceptionField>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ValidationException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ValidationExceptionFieldRestJson1Serializer
    extends _i3.StructuredSmithySerializer<ValidationExceptionField> {
  const ValidationExceptionFieldRestJson1Serializer()
      : super('ValidationExceptionField');

  @override
  Iterable<Type> get types => const [ValidationExceptionField];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  ValidationExceptionField deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidationExceptionFieldBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'path':
          result.path = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ValidationExceptionField object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
