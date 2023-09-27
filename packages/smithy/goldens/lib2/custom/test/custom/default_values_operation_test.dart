// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library custom_v2.custom.test.default_values_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:custom_v2/src/custom/model/default_enum.dart';
import 'package:custom_v2/src/custom/model/default_values_input.dart';
import 'package:custom_v2/src/custom/model/default_values_output.dart';
import 'package:custom_v2/src/custom/operation/default_values_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'DefaultValuesRequestSerialization (request)',
    () async {
      await _i2.httpRequestTest(
        operation: DefaultValuesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'DefaultValuesRequestSerialization',
          documentation:
              'Default values SHOULD be serialized and MUST be when @required',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '{\n    "requiredDefaultInt": 42,\n    "optionalDefaultInt": 42,\n    "requiredDefaultString": "default",\n    "optionalDefaultString": "default",\n    "requiredDefaultEnum": "A",\n    "optionalDefaultEnum": "A",\n    "requiredDefaultList": [],\n    "optionalDefaultList": [],\n    "requiredDefaultMap": {},\n    "optionalDefaultMap": {},\n    "requiredDefaultBool": true,\n    "optionalDefaultBool": true\n}\n',
          bodyMediaType: 'application/json',
          params: {
            'requiredDefaultInt': null,
            'requiredDefaultString': null,
            'requiredDefaultEnum': null,
            'requiredDefaultList': null,
            'requiredDefaultMap': null,
            'requiredDefaultBool': null,
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/default',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [DefaultValuesInputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'DefaultValuesResponseSerialization (response)',
    () async {
      await _i2.httpResponseTest(
        operation: DefaultValuesOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'DefaultValuesResponseSerialization',
          documentation:
              'Default values SHOULD be serialized and MUST be when @required',
          protocol: _i3.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body:
              '{\n    "requiredDefaultInt": 42,\n    "requiredDefaultString": "default",\n    "requiredDefaultEnum": "A",\n    "requiredDefaultList": [],\n    "requiredDefaultMap": {},\n    "requiredDefaultBool": true\n}\n',
          bodyMediaType: 'application/json',
          params: {
            'requiredDefaultInt': 42,
            'optionalDefaultInt': 42,
            'nullifiedDefaultInt': null,
            'requiredDefaultString': 'default',
            'optionalDefaultString': 'default',
            'nullifiedDefaultString': null,
            'requiredDefaultEnum': 'A',
            'optionalDefaultEnum': 'A',
            'nullifiedDefaultEnum': null,
            'requiredDefaultList': [],
            'optionalDefaultList': [],
            'nullifiedDefaultList': null,
            'requiredDefaultMap': {},
            'optionalDefaultMap': {},
            'nullifiedDefaultMap': null,
            'requiredDefaultBool': true,
            'optionalDefaultBool': true,
            'nullifiedDefaultBool': null,
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [DefaultValuesOutputRestJson1Serializer()],
      );
    },
  );
}

class DefaultValuesInputRestJson1Serializer
    extends _i3.StructuredSmithySerializer<DefaultValuesInput> {
  const DefaultValuesInputRestJson1Serializer() : super('DefaultValuesInput');

  @override
  Iterable<Type> get types => const [DefaultValuesInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  DefaultValuesInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DefaultValuesInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'requiredDefaultInt':
          result.requiredDefaultInt = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'optionalDefaultInt':
          result.optionalDefaultInt = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'nullifiedDefaultInt':
          result.nullifiedDefaultInt = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'requiredDefaultString':
          result.requiredDefaultString = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'optionalDefaultString':
          result.optionalDefaultString = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'nullifiedDefaultString':
          result.nullifiedDefaultString = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'requiredDefaultEnum':
          result.requiredDefaultEnum = (serializers.deserialize(
            value,
            specifiedType: const FullType(DefaultEnum),
          ) as DefaultEnum);
        case 'optionalDefaultEnum':
          result.optionalDefaultEnum = (serializers.deserialize(
            value,
            specifiedType: const FullType(DefaultEnum),
          ) as DefaultEnum);
        case 'nullifiedDefaultEnum':
          result.nullifiedDefaultEnum = (serializers.deserialize(
            value,
            specifiedType: const FullType(DefaultEnum),
          ) as DefaultEnum);
        case 'requiredDefaultList':
          result.requiredDefaultList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'optionalDefaultList':
          result.optionalDefaultList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'nullifiedDefaultList':
          result.nullifiedDefaultList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'requiredDefaultMap':
          result.requiredDefaultMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i4.BuiltMap<String, String>));
        case 'optionalDefaultMap':
          result.optionalDefaultMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i4.BuiltMap<String, String>));
        case 'nullifiedDefaultMap':
          result.nullifiedDefaultMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i4.BuiltMap<String, String>));
        case 'requiredDefaultBool':
          result.requiredDefaultBool = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'optionalDefaultBool':
          result.optionalDefaultBool = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'nullifiedDefaultBool':
          result.nullifiedDefaultBool = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DefaultValuesInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class DefaultValuesOutputRestJson1Serializer
    extends _i3.StructuredSmithySerializer<DefaultValuesOutput> {
  const DefaultValuesOutputRestJson1Serializer() : super('DefaultValuesOutput');

  @override
  Iterable<Type> get types => const [DefaultValuesOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  DefaultValuesOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DefaultValuesOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'requiredDefaultInt':
          result.requiredDefaultInt = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'optionalDefaultInt':
          result.optionalDefaultInt = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'nullifiedDefaultInt':
          result.nullifiedDefaultInt = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'requiredDefaultString':
          result.requiredDefaultString = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'optionalDefaultString':
          result.optionalDefaultString = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'nullifiedDefaultString':
          result.nullifiedDefaultString = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'requiredDefaultEnum':
          result.requiredDefaultEnum = (serializers.deserialize(
            value,
            specifiedType: const FullType(DefaultEnum),
          ) as DefaultEnum);
        case 'optionalDefaultEnum':
          result.optionalDefaultEnum = (serializers.deserialize(
            value,
            specifiedType: const FullType(DefaultEnum),
          ) as DefaultEnum);
        case 'nullifiedDefaultEnum':
          result.nullifiedDefaultEnum = (serializers.deserialize(
            value,
            specifiedType: const FullType(DefaultEnum),
          ) as DefaultEnum);
        case 'requiredDefaultList':
          result.requiredDefaultList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'optionalDefaultList':
          result.optionalDefaultList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'nullifiedDefaultList':
          result.nullifiedDefaultList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'requiredDefaultMap':
          result.requiredDefaultMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i4.BuiltMap<String, String>));
        case 'optionalDefaultMap':
          result.optionalDefaultMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i4.BuiltMap<String, String>));
        case 'nullifiedDefaultMap':
          result.nullifiedDefaultMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i4.BuiltMap<String, String>));
        case 'requiredDefaultBool':
          result.requiredDefaultBool = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'optionalDefaultBool':
          result.optionalDefaultBool = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'nullifiedDefaultBool':
          result.nullifiedDefaultBool = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DefaultValuesOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
