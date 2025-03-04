// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library rest_json1_v2.rest_json_protocol.test.post_player_action_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/player_action.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/post_player_action_input.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/post_player_action_output.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/operation/post_player_action_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'RestJsonInputUnionWithUnitMember (request)',
    () async {
      await _i2.httpRequestTest(
        operation: PostPlayerActionOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'RestJsonInputUnionWithUnitMember',
          documentation:
              'Unit types in unions are serialized like normal structures in requests.',
          protocol: _i3.ShapeId(
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
        operation: PostPlayerActionOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'RestJsonOutputUnionWithUnitMember',
          documentation:
              'Unit types in unions are serialized like normal structures in responses.',
          protocol: _i3.ShapeId(
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
    extends _i3.StructuredSmithySerializer<PostPlayerActionInput> {
  const PostPlayerActionInputRestJson1Serializer()
      : super('PostPlayerActionInput');

  @override
  Iterable<Type> get types => const [PostPlayerActionInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  PostPlayerActionInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostPlayerActionInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'action':
          result.action = (serializers.deserialize(
            value,
            specifiedType: const FullType(PlayerAction),
          ) as PlayerAction);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PostPlayerActionInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class PostPlayerActionOutputRestJson1Serializer
    extends _i3.StructuredSmithySerializer<PostPlayerActionOutput> {
  const PostPlayerActionOutputRestJson1Serializer()
      : super('PostPlayerActionOutput');

  @override
  Iterable<Type> get types => const [PostPlayerActionOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  PostPlayerActionOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostPlayerActionOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'action':
          result.action = (serializers.deserialize(
            value,
            specifiedType: const FullType(PlayerAction),
          ) as PlayerAction);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PostPlayerActionOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
