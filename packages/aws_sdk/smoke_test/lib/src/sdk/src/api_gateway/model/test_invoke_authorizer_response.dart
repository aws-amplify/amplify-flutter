// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.test_invoke_authorizer_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;

part 'test_invoke_authorizer_response.g.dart';

/// Represents the response of the test invoke request for a custom Authorizer
abstract class TestInvokeAuthorizerResponse
    with
        _i1.AWSEquatable<TestInvokeAuthorizerResponse>
    implements
        Built<TestInvokeAuthorizerResponse,
            TestInvokeAuthorizerResponseBuilder> {
  /// Represents the response of the test invoke request for a custom Authorizer
  factory TestInvokeAuthorizerResponse({
    int? clientStatus,
    String? log,
    _i2.Int64? latency,
    String? principalId,
    String? policy,
    Map<String, List<String>>? authorization,
    Map<String, String>? claims,
  }) {
    return _$TestInvokeAuthorizerResponse._(
      clientStatus: clientStatus,
      log: log,
      latency: latency,
      principalId: principalId,
      policy: policy,
      authorization:
          authorization == null ? null : _i3.BuiltListMultimap(authorization),
      claims: claims == null ? null : _i3.BuiltMap(claims),
    );
  }

  /// Represents the response of the test invoke request for a custom Authorizer
  factory TestInvokeAuthorizerResponse.build(
          [void Function(TestInvokeAuthorizerResponseBuilder) updates]) =
      _$TestInvokeAuthorizerResponse;

  const TestInvokeAuthorizerResponse._();

  /// Constructs a [TestInvokeAuthorizerResponse] from a [payload] and [response].
  factory TestInvokeAuthorizerResponse.fromResponse(
    TestInvokeAuthorizerResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    TestInvokeAuthorizerResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestInvokeAuthorizerResponseBuilder b) {}

  /// The HTTP status code that the client would have received. Value is 0 if the authorizer succeeded.
  int? get clientStatus;

  /// The API Gateway execution log for the test authorizer request.
  String? get log;

  /// The execution latency of the test authorizer request.
  _i2.Int64? get latency;

  /// The principal identity returned by the Authorizer
  String? get principalId;

  /// The JSON policy document returned by the Authorizer
  String? get policy;

  /// The authorization response.
  _i3.BuiltListMultimap<String, String>? get authorization;

  /// The open identity claims, with any supported custom attributes, returned from the Cognito Your User Pool configured for the API.
  _i3.BuiltMap<String, String>? get claims;
  @override
  List<Object?> get props => [
        clientStatus,
        log,
        latency,
        principalId,
        policy,
        authorization,
        claims,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TestInvokeAuthorizerResponse');
    helper.add(
      'clientStatus',
      clientStatus,
    );
    helper.add(
      'log',
      log,
    );
    helper.add(
      'latency',
      latency,
    );
    helper.add(
      'principalId',
      principalId,
    );
    helper.add(
      'policy',
      policy,
    );
    helper.add(
      'authorization',
      authorization,
    );
    helper.add(
      'claims',
      claims,
    );
    return helper.toString();
  }
}

class TestInvokeAuthorizerResponseRestJson1Serializer
    extends _i4.StructuredSmithySerializer<TestInvokeAuthorizerResponse> {
  const TestInvokeAuthorizerResponseRestJson1Serializer()
      : super('TestInvokeAuthorizerResponse');

  @override
  Iterable<Type> get types => const [
        TestInvokeAuthorizerResponse,
        _$TestInvokeAuthorizerResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  TestInvokeAuthorizerResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestInvokeAuthorizerResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'authorization':
          if (value != null) {
            result.authorization.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltListMultimap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i3.BuiltListMultimap<String, String>));
          }
          break;
        case 'claims':
          if (value != null) {
            result.claims.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i3.BuiltMap<String, String>));
          }
          break;
        case 'clientStatus':
          if (value != null) {
            result.clientStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'latency':
          if (value != null) {
            result.latency = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
          }
          break;
        case 'log':
          if (value != null) {
            result.log = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'policy':
          if (value != null) {
            result.policy = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'principalId':
          if (value != null) {
            result.principalId = (serializers.deserialize(
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
    final payload = (object as TestInvokeAuthorizerResponse);
    final result = <Object?>[];
    if (payload.authorization != null) {
      result
        ..add('authorization')
        ..add(serializers.serialize(
          payload.authorization!,
          specifiedType: const FullType(
            _i3.BuiltListMultimap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.claims != null) {
      result
        ..add('claims')
        ..add(serializers.serialize(
          payload.claims!,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.clientStatus != null) {
      result
        ..add('clientStatus')
        ..add(serializers.serialize(
          payload.clientStatus!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.latency != null) {
      result
        ..add('latency')
        ..add(serializers.serialize(
          payload.latency!,
          specifiedType: const FullType(_i2.Int64),
        ));
    }
    if (payload.log != null) {
      result
        ..add('log')
        ..add(serializers.serialize(
          payload.log!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.policy != null) {
      result
        ..add('policy')
        ..add(serializers.serialize(
          payload.policy!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.principalId != null) {
      result
        ..add('principalId')
        ..add(serializers.serialize(
          payload.principalId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
