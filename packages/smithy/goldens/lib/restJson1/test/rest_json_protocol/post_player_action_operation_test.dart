// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

// ignore_for_file: unused_element
library rest_json1_v1.rest_json_protocol.test.post_player_action_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/player_action.dart'
    as _i6;
import 'package:rest_json1_v1/src/rest_json_protocol/model/post_player_action_input.dart'
    as _i5;
import 'package:rest_json1_v1/src/rest_json_protocol/model/post_player_action_output.dart'
    as _i7;
import 'package:rest_json1_v1/src/rest_json_protocol/operation/post_player_action_operation.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonInputUnionWithUnitMember (request)',
    () async {
      await _i2.httpRequestTest(
        operation: _i3.PostPlayerActionOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonInputUnionWithUnitMember',
          documentation:
              'Unit types in unions are serialized like normal structures in requests.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "action": {\n        "quit": {}\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'action': {'quit': {}}
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'application/json'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/PostPlayerAction',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [PostPlayerActionInputRestJson1Serializer()],
      );
    },
  );
  _i1.test(
    'RestJsonOutputUnionWithUnitMember (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.PostPlayerActionOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonOutputUnionWithUnitMember',
          documentation:
              'Unit types in unions are serialized like normal structures in responses.',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'restJson1',
          ),
          authScheme: null,
          body: '{\n    "action": {\n        "quit": {}\n    }\n}',
          bodyMediaType: 'application/json',
          params: {
            'action': {'quit': {}}
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
        outputSerializers: const [PostPlayerActionOutputRestJson1Serializer()],
      );
    },
  );
}

class PostPlayerActionInputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i5.PostPlayerActionInput> {
  const PostPlayerActionInputRestJson1Serializer()
      : super('PostPlayerActionInput');

  @override
  Iterable<Type> get types => const [_i5.PostPlayerActionInput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i5.PostPlayerActionInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.PostPlayerActionInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'action':
          if (value != null) {
            result.action = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.PlayerAction),
            ) as _i6.PlayerAction);
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

class PostPlayerActionOutputRestJson1Serializer
    extends _i4.StructuredSmithySerializer<_i7.PostPlayerActionOutput> {
  const PostPlayerActionOutputRestJson1Serializer()
      : super('PostPlayerActionOutput');

  @override
  Iterable<Type> get types => const [_i7.PostPlayerActionOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i7.PostPlayerActionOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i7.PostPlayerActionOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'action':
          result.action = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i6.PlayerAction),
          ) as _i6.PlayerAction);
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
