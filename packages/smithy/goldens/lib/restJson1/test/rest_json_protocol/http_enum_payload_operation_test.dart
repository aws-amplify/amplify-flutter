// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.http_enum_payload_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/enum_payload_input.dart'
    as _i5;
import 'package:rest_json1_v1/src/rest_json_protocol/model/string_enum.dart'
    as _i6;
import 'package:rest_json1_v1/src/rest_json_protocol/operation/http_enum_payload_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'EnumPayloadRequest (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.HttpEnumPayloadOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'EnumPayloadRequest',
          documentation: null,
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: 'enumvalue',
          bodyMediaType: null,
          params: {'payload': 'enumvalue'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/EnumPayload',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [EnumPayloadInputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'EnumPayloadResponse (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.HttpEnumPayloadOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'EnumPayloadResponse',
          documentation: null,
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: 'enumvalue',
          bodyMediaType: null,
          params: {'payload': 'enumvalue'},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          code: 200,
        ),
        outputSerializers: const [EnumPayloadInputRestJson1Serializer()],
      );
    },
  );
}

class EnumPayloadInputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.EnumPayloadInput> {
  const EnumPayloadInputRestJson1Serializer() : super('EnumPayloadInput');

  @override
  Iterable<Type> get types => const [_i5.EnumPayloadInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.EnumPayloadInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.EnumPayloadInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'payload':
          if (value != null) {
            result.payload = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.StringEnum),
            ) as _i6.StringEnum);
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
