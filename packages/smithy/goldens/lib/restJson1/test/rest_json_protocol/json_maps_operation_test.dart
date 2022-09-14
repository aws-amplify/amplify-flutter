// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1.rest_json_protocol.test.json_maps_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:rest_json1/src/rest_json_protocol/model/greeting_struct.dart'
    as _i7;
import 'package:rest_json1/src/rest_json_protocol/model/json_maps_input_output.dart'
    as _i5;
import 'package:rest_json1/src/rest_json_protocol/operation/json_maps_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonJsonMaps (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.JsonMapsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestJsonJsonMaps',
              documentation: 'Serializes JSON maps',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body:
                  '{\n    "denseStructMap": {\n        "foo": {\n            "hi": "there"\n        },\n        "baz": {\n            "hi": "bye"\n        }\n    },\n    "sparseStructMap": {\n        "foo": {\n            "hi": "there"\n        },\n        "baz": {\n            "hi": "bye"\n        }\n    }\n}',
              bodyMediaType: 'application/json',
              params: {
                'denseStructMap': {
                  'foo': {'hi': 'there'},
                  'baz': {'hi': 'bye'}
                },
                'sparseStructMap': {
                  'foo': {'hi': 'there'},
                  'baz': {'hi': 'bye'}
                }
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/json'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'POST',
              uri: '/JsonMaps',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            JsonMapsInputOutputRestJson1Serializer(),
            GreetingStructRestJson1Serializer()
          ]);
    },
  );
  _i1.test(
    'RestJsonSerializesNullMapValues (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.JsonMapsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestJsonSerializesNullMapValues',
              documentation: 'Serializes JSON map values in sparse maps',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body:
                  '{\n    "sparseBooleanMap": {\n        "x": null\n    },\n    "sparseNumberMap": {\n        "x": null\n    },\n    "sparseStringMap": {\n        "x": null\n    },\n    "sparseStructMap": {\n        "x": null\n    }\n}',
              bodyMediaType: 'application/json',
              params: {
                'sparseBooleanMap': {'x': null},
                'sparseNumberMap': {'x': null},
                'sparseStringMap': {'x': null},
                'sparseStructMap': {'x': null}
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/json'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'POST',
              uri: '/JsonMaps',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            JsonMapsInputOutputRestJson1Serializer(),
            GreetingStructRestJson1Serializer()
          ]);
    },
  );
  _i1.test(
    'RestJsonSerializesZeroValuesInMaps (request)',
    () async {
      await _i2.httpRequestTest(
          operation: _i3.JsonMapsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpRequestTestCase(
              id: 'RestJsonSerializesZeroValuesInMaps',
              documentation:
                  'Ensure that 0 and false are sent over the wire in all maps and lists',
              protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '{\n    "denseNumberMap": {\n        "x": 0\n    },\n    "sparseNumberMap": {\n        "x": 0\n    },\n    "denseBooleanMap": {\n        "x": false\n    },\n    "sparseBooleanMap": {\n        "x": false\n    }\n}',
              bodyMediaType: 'application/json',
              params: {
                'denseNumberMap': {'x': 0},
                'sparseNumberMap': {'x': 0},
                'denseBooleanMap': {'x': false},
                'sparseBooleanMap': {'x': false}
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/json'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              method: 'POST',
              uri: '/JsonMaps',
              host: null,
              resolvedHost: null,
              queryParams: [],
              forbidQueryParams: [],
              requireQueryParams: []),
          inputSerializers: const [
            JsonMapsInputOutputRestJson1Serializer(),
            GreetingStructRestJson1Serializer()
          ]);
    },
  );
  _i1.test('RestJsonSerializesSparseSetMap (request)', () async {
    await _i2.httpRequestTest(
        operation: _i3.JsonMapsOperation(
            region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonSerializesSparseSetMap',
            documentation: 'A request that contains a sparse map of sets',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body:
                '{\n    "sparseSetMap": {\n        "x": [],\n        "y": ["a", "b"]\n    }\n}',
            bodyMediaType: 'application/json',
            params: {
              'sparseSetMap': {
                'x': [],
                'y': ['a', 'b']
              }
            },
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            method: 'POST',
            uri: '/JsonMaps',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializers: const [
          JsonMapsInputOutputRestJson1Serializer(),
          GreetingStructRestJson1Serializer()
        ]);
  }, skip: 'Cannot handle this at the moment (empty vs. null).');
  _i1.test('RestJsonSerializesDenseSetMap (request)', () async {
    await _i2.httpRequestTest(
        operation: _i3.JsonMapsOperation(
            region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonSerializesDenseSetMap',
            documentation: 'A request that contains a dense map of sets.',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body:
                '{\n    "denseSetMap": {\n        "x": [],\n        "y": ["a", "b"]\n    }\n}',
            bodyMediaType: 'application/json',
            params: {
              'denseSetMap': {
                'x': [],
                'y': ['a', 'b']
              }
            },
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            method: 'POST',
            uri: '/JsonMaps',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializers: const [
          JsonMapsInputOutputRestJson1Serializer(),
          GreetingStructRestJson1Serializer()
        ]);
  }, skip: 'Cannot handle this at the moment (empty vs. null).');
  _i1.test('RestJsonSerializesSparseSetMapAndRetainsNull (request)', () async {
    await _i2.httpRequestTest(
        operation: _i3.JsonMapsOperation(
            region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
        testCase: const _i2.HttpRequestTestCase(
            id: 'RestJsonSerializesSparseSetMapAndRetainsNull',
            documentation: 'A request that contains a sparse map of sets.',
            protocol:
                _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
            authScheme: null,
            body:
                '{\n    "sparseSetMap": {\n        "x": [],\n        "y": ["a", "b"],\n        "z": null\n    }\n}',
            bodyMediaType: 'application/json',
            params: {
              'sparseSetMap': {
                'x': [],
                'y': ['a', 'b'],
                'z': null
              }
            },
            vendorParamsShape: null,
            vendorParams: {},
            headers: {'Content-Type': 'application/json'},
            forbidHeaders: [],
            requireHeaders: [],
            tags: [],
            appliesTo: null,
            method: 'POST',
            uri: '/JsonMaps',
            host: null,
            resolvedHost: null,
            queryParams: [],
            forbidQueryParams: [],
            requireQueryParams: []),
        inputSerializers: const [
          JsonMapsInputOutputRestJson1Serializer(),
          GreetingStructRestJson1Serializer()
        ]);
  }, skip: 'Cannot handle this at the moment (empty vs. null).');
  _i1.test(
    'RestJsonJsonMaps (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.JsonMapsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonJsonMaps',
              documentation: 'Deserializes JSON maps',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body:
                  '{\n    "denseStructMap": {\n        "foo": {\n            "hi": "there"\n        },\n        "baz": {\n            "hi": "bye"\n        }\n    },\n    "sparseStructMap": {\n        "foo": {\n            "hi": "there"\n        },\n        "baz": {\n            "hi": "bye"\n        }\n   }\n}',
              bodyMediaType: 'application/json',
              params: {
                'denseStructMap': {
                  'foo': {'hi': 'there'},
                  'baz': {'hi': 'bye'}
                },
                'sparseStructMap': {
                  'foo': {'hi': 'there'},
                  'baz': {'hi': 'bye'}
                }
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/json'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [
            JsonMapsInputOutputRestJson1Serializer(),
            GreetingStructRestJson1Serializer()
          ]);
    },
  );
  _i1.test(
    'RestJsonDeserializesNullMapValues (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.JsonMapsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonDeserializesNullMapValues',
              documentation: 'Deserializes null JSON map values',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body:
                  '{\n    "sparseBooleanMap": {\n        "x": null\n    },\n    "sparseNumberMap": {\n        "x": null\n    },\n    "sparseStringMap": {\n        "x": null\n    },\n    "sparseStructMap": {\n        "x": null\n    }\n}',
              bodyMediaType: 'application/json',
              params: {
                'sparseBooleanMap': {'x': null},
                'sparseNumberMap': {'x': null},
                'sparseStringMap': {'x': null},
                'sparseStructMap': {'x': null}
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/json'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [
            JsonMapsInputOutputRestJson1Serializer(),
            GreetingStructRestJson1Serializer()
          ]);
    },
  );
  _i1.test(
    'RestJsonDeserializesZeroValuesInMaps (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.JsonMapsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonDeserializesZeroValuesInMaps',
              documentation:
                  'Ensure that 0 and false are sent over the wire in all maps and lists',
              protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '{\n    "denseNumberMap": {\n        "x": 0\n    },\n    "sparseNumberMap": {\n        "x": 0\n    },\n    "denseBooleanMap": {\n        "x": false\n    },\n    "sparseBooleanMap": {\n        "x": false\n    }\n}',
              bodyMediaType: 'application/json',
              params: {
                'denseNumberMap': {'x': 0},
                'sparseNumberMap': {'x': 0},
                'denseBooleanMap': {'x': false},
                'sparseBooleanMap': {'x': false}
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/json'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [
            JsonMapsInputOutputRestJson1Serializer(),
            GreetingStructRestJson1Serializer()
          ]);
    },
  );
  _i1.test(
    'RestJsonDeserializesSparseSetMap (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.JsonMapsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonDeserializesSparseSetMap',
              documentation: 'A response that contains a sparse map of sets',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body:
                  '{\n    "sparseSetMap": {\n        "x": [],\n        "y": ["a", "b"]\n    }\n}',
              bodyMediaType: 'application/json',
              params: {
                'sparseSetMap': {
                  'x': [],
                  'y': ['a', 'b']
                }
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/json'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [
            JsonMapsInputOutputRestJson1Serializer(),
            GreetingStructRestJson1Serializer()
          ]);
    },
  );
  _i1.test(
    'RestJsonDeserializesDenseSetMap (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.JsonMapsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonDeserializesDenseSetMap',
              documentation: 'A response that contains a dense map of sets.',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body:
                  '{\n    "denseSetMap": {\n        "x": [],\n        "y": ["a", "b"]\n    }\n}',
              bodyMediaType: 'application/json',
              params: {
                'denseSetMap': {
                  'x': [],
                  'y': ['a', 'b']
                }
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/json'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [
            JsonMapsInputOutputRestJson1Serializer(),
            GreetingStructRestJson1Serializer()
          ]);
    },
  );
  _i1.test(
    'RestJsonDeserializesSparseSetMapAndRetainsNull (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.JsonMapsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonDeserializesSparseSetMapAndRetainsNull',
              documentation: 'A response that contains a sparse map of sets.',
              protocol:
                  _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body:
                  '{\n    "sparseSetMap": {\n        "x": [],\n        "y": ["a", "b"],\n        "z": null\n    }\n}',
              bodyMediaType: 'application/json',
              params: {
                'sparseSetMap': {
                  'x': [],
                  'y': ['a', 'b'],
                  'z': null
                }
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/json'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: null,
              code: 200),
          outputSerializers: const [
            JsonMapsInputOutputRestJson1Serializer(),
            GreetingStructRestJson1Serializer()
          ]);
    },
  );
  _i1.test(
    'RestJsonDeserializesDenseSetMapAndSkipsNull (response)',
    () async {
      await _i2.httpResponseTest(
          operation: _i3.JsonMapsOperation(
              region: 'us-east-1', baseUri: Uri.parse('https://example.com')),
          testCase: const _i2.HttpResponseTestCase(
              id: 'RestJsonDeserializesDenseSetMapAndSkipsNull',
              documentation:
                  'Clients SHOULD tolerate seeing a null value in a dense map, and they SHOULD\ndrop the null key-value pair.',
              protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
              authScheme: null,
              body: '{\n    "denseSetMap": {\n        "x": [],\n        "y": ["a", "b"],\n        "z": null\n    }\n}',
              bodyMediaType: 'application/json',
              params: {
                'denseSetMap': {
                  'x': [],
                  'y': ['a', 'b']
                }
              },
              vendorParamsShape: null,
              vendorParams: {},
              headers: {'Content-Type': 'application/json'},
              forbidHeaders: [],
              requireHeaders: [],
              tags: [],
              appliesTo: _i2.AppliesTo.client,
              code: 200),
          outputSerializers: const [
            JsonMapsInputOutputRestJson1Serializer(),
            GreetingStructRestJson1Serializer()
          ]);
    },
  );
}

class JsonMapsInputOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.JsonMapsInputOutput> {
  const JsonMapsInputOutputRestJson1Serializer() : super('JsonMapsInputOutput');

  @override
  Iterable<Type> get types => const [_i5.JsonMapsInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i5.JsonMapsInputOutput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i5.JsonMapsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'denseBooleanMap':
          if (value != null) {
            result.denseBooleanMap.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i6.BuiltMap, [FullType(String), FullType(bool)]))
                as _i6.BuiltMap<String, bool>));
          }
          break;
        case 'denseNumberMap':
          if (value != null) {
            result.denseNumberMap.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i6.BuiltMap, [FullType(String), FullType(int)]))
                as _i6.BuiltMap<String, int>));
          }
          break;
        case 'denseSetMap':
          if (value != null) {
            result.denseSetMap.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i6.BuiltListMultimap, [
                  FullType(String),
                  FullType(String)
                ])) as _i6.BuiltListMultimap<String, String>));
          }
          break;
        case 'denseStringMap':
          if (value != null) {
            result.denseStringMap.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i6.BuiltMap, [FullType(String), FullType(String)]))
                as _i6.BuiltMap<String, String>));
          }
          break;
        case 'denseStructMap':
          if (value != null) {
            result.denseStructMap.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i6.BuiltMap, [
                  FullType(String),
                  FullType(_i7.GreetingStruct)
                ])) as _i6.BuiltMap<String, _i7.GreetingStruct>));
          }
          break;
        case 'sparseBooleanMap':
          if (value != null) {
            result.sparseBooleanMap.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i6.BuiltMap, [
                  FullType(String),
                  FullType.nullable(bool)
                ])) as _i6.BuiltMap<String, bool?>));
          }
          break;
        case 'sparseNumberMap':
          if (value != null) {
            result.sparseNumberMap.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i6.BuiltMap, [
                  FullType(String),
                  FullType.nullable(int)
                ])) as _i6.BuiltMap<String, int?>));
          }
          break;
        case 'sparseSetMap':
          if (value != null) {
            result.sparseSetMap.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i6.BuiltListMultimap, [
                  FullType(String),
                  FullType(String)
                ])) as _i6.BuiltListMultimap<String, String>));
          }
          break;
        case 'sparseStringMap':
          if (value != null) {
            result.sparseStringMap.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i6.BuiltMap, [
                  FullType(String),
                  FullType.nullable(String)
                ])) as _i6.BuiltMap<String, String?>));
          }
          break;
        case 'sparseStructMap':
          if (value != null) {
            result.sparseStructMap.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i6.BuiltMap, [
                  FullType(String),
                  FullType.nullable(_i7.GreetingStruct)
                ])) as _i6.BuiltMap<String, _i7.GreetingStruct?>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}

class GreetingStructRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i7.GreetingStruct> {
  const GreetingStructRestJson1Serializer() : super('GreetingStruct');

  @override
  Iterable<Type> get types => const [_i7.GreetingStruct];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  _i7.GreetingStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = _i7.GreetingStructBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'hi':
          if (value != null) {
            result.hi = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    throw StateError('Not supported for tests');
  }
}
