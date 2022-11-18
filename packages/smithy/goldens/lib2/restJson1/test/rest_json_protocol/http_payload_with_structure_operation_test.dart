// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.http_payload_with_structure_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/http_payload_with_structure_input_output.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/model/nested_payload.dart'
    as _i6;
import 'package:rest_json1_v2/src/rest_json_protocol/operation/http_payload_with_structure_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonHttpPayloadWithStructure (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.HttpPayloadWithStructureOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonHttpPayloadWithStructure',
          documentation: 'Serializes a structure in the payload',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "greeting": "hello",\n    "name": "Phreddy"\n}',
          bodyMediaType: 'application/json',
          params: {
            'nested': {
              'greeting': 'hello',
              'name': 'Phreddy',
            }
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
          tags: [],
          appliesTo: null,
          method: 'PUT',
          uri: '/HttpPayloadWithStructure',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          HttpPayloadWithStructureInputOutputRestJson1Serializer(),
          NestedPayloadRestJson1Serializer(),
        ],
      );
    },
  );
  _i1.test(
    'RestJsonHttpPayloadWithStructure (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.HttpPayloadWithStructureOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonHttpPayloadWithStructure',
          documentation: 'Serializes a structure in the payload',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "greeting": "hello",\n    "name": "Phreddy"\n}',
          bodyMediaType: 'application/json',
          params: {
            'nested': {
              'greeting': 'hello',
              'name': 'Phreddy',
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
          HttpPayloadWithStructureInputOutputRestJson1Serializer(),
          NestedPayloadRestJson1Serializer(),
        ],
      );
    },
  );
}

class HttpPayloadWithStructureInputOutputRestJson1Serializer extends _i4
    .StructuredSmithySerializer<_i5.HttpPayloadWithStructureInputOutput> {
  const HttpPayloadWithStructureInputOutputRestJson1Serializer()
      : super('HttpPayloadWithStructureInputOutput');

  @override
  Iterable<Type> get types => const [_i5.HttpPayloadWithStructureInputOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.HttpPayloadWithStructureInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.HttpPayloadWithStructureInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.NestedPayload),
            ) as _i6.NestedPayload));
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

class NestedPayloadRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i6.NestedPayload> {
  const NestedPayloadRestJson1Serializer() : super('NestedPayload');

  @override
  Iterable<Type> get types => const [_i6.NestedPayload];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i6.NestedPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i6.NestedPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'greeting':
          if (value != null) {
            result.greeting = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
