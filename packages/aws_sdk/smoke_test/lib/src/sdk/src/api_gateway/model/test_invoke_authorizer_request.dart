// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.test_invoke_authorizer_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'test_invoke_authorizer_request.g.dart';

/// Make a request to simulate the invocation of an Authorizer.
abstract class TestInvokeAuthorizerRequest
    with
        _i1.HttpInput<TestInvokeAuthorizerRequestPayload>,
        _i2.AWSEquatable<TestInvokeAuthorizerRequest>
    implements
        Built<TestInvokeAuthorizerRequest, TestInvokeAuthorizerRequestBuilder>,
        _i1.HasPayload<TestInvokeAuthorizerRequestPayload> {
  /// Make a request to simulate the invocation of an Authorizer.
  factory TestInvokeAuthorizerRequest({
    required String restApiId,
    required String authorizerId,
    Map<String, String>? headers,
    Map<String, List<String>>? multiValueHeaders,
    String? pathWithQueryString,
    String? body,
    Map<String, String>? stageVariables,
    Map<String, String>? additionalContext,
  }) {
    return _$TestInvokeAuthorizerRequest._(
      restApiId: restApiId,
      authorizerId: authorizerId,
      headers: headers == null ? null : _i3.BuiltMap(headers),
      multiValueHeaders: multiValueHeaders == null
          ? null
          : _i3.BuiltListMultimap(multiValueHeaders),
      pathWithQueryString: pathWithQueryString,
      body: body,
      stageVariables:
          stageVariables == null ? null : _i3.BuiltMap(stageVariables),
      additionalContext:
          additionalContext == null ? null : _i3.BuiltMap(additionalContext),
    );
  }

  /// Make a request to simulate the invocation of an Authorizer.
  factory TestInvokeAuthorizerRequest.build(
          [void Function(TestInvokeAuthorizerRequestBuilder) updates]) =
      _$TestInvokeAuthorizerRequest;

  const TestInvokeAuthorizerRequest._();

  factory TestInvokeAuthorizerRequest.fromRequest(
    TestInvokeAuthorizerRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      TestInvokeAuthorizerRequest.build((b) {
        if (payload.additionalContext != null) {
          b.additionalContext.replace(payload.additionalContext!);
        }
        b.body = payload.body;
        if (payload.headers != null) {
          b.headers.replace(payload.headers!);
        }
        if (payload.multiValueHeaders != null) {
          b.multiValueHeaders.replace(payload.multiValueHeaders!);
        }
        b.pathWithQueryString = payload.pathWithQueryString;
        if (payload.stageVariables != null) {
          b.stageVariables.replace(payload.stageVariables!);
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['authorizerId'] != null) {
          b.authorizerId = labels['authorizerId']!;
        }
      });

  static const List<_i1.SmithySerializer<TestInvokeAuthorizerRequestPayload>>
      serializers = [TestInvokeAuthorizerRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestInvokeAuthorizerRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// Specifies a test invoke authorizer request's Authorizer ID.
  String get authorizerId;

  /// A key-value map of headers to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, should be specified.
  _i3.BuiltMap<String, String>? get headers;

  /// The headers as a map from string to list of values to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, may be specified.
  _i3.BuiltListMultimap<String, String>? get multiValueHeaders;

  /// The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.
  String? get pathWithQueryString;

  /// The simulated request body of an incoming invocation request.
  String? get body;

  /// A key-value map of stage variables to simulate an invocation on a deployed Stage.
  _i3.BuiltMap<String, String>? get stageVariables;

  /// A key-value map of additional context variables.
  _i3.BuiltMap<String, String>? get additionalContext;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'authorizerId':
        return authorizerId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  TestInvokeAuthorizerRequestPayload getPayload() =>
      TestInvokeAuthorizerRequestPayload((b) {
        if (additionalContext != null) {
          b.additionalContext.replace(additionalContext!);
        }
        b.body = body;
        if (headers != null) {
          b.headers.replace(headers!);
        }
        if (multiValueHeaders != null) {
          b.multiValueHeaders.replace(multiValueHeaders!);
        }
        b.pathWithQueryString = pathWithQueryString;
        if (stageVariables != null) {
          b.stageVariables.replace(stageVariables!);
        }
      });
  @override
  List<Object?> get props => [
        restApiId,
        authorizerId,
        headers,
        multiValueHeaders,
        pathWithQueryString,
        body,
        stageVariables,
        additionalContext,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TestInvokeAuthorizerRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'authorizerId',
        authorizerId,
      )
      ..add(
        'headers',
        headers,
      )
      ..add(
        'multiValueHeaders',
        multiValueHeaders,
      )
      ..add(
        'pathWithQueryString',
        pathWithQueryString,
      )
      ..add(
        'body',
        body,
      )
      ..add(
        'stageVariables',
        stageVariables,
      )
      ..add(
        'additionalContext',
        additionalContext,
      );
    return helper.toString();
  }
}

@_i4.internal
abstract class TestInvokeAuthorizerRequestPayload
    with
        _i2.AWSEquatable<TestInvokeAuthorizerRequestPayload>
    implements
        Built<TestInvokeAuthorizerRequestPayload,
            TestInvokeAuthorizerRequestPayloadBuilder> {
  factory TestInvokeAuthorizerRequestPayload(
          [void Function(TestInvokeAuthorizerRequestPayloadBuilder) updates]) =
      _$TestInvokeAuthorizerRequestPayload;

  const TestInvokeAuthorizerRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestInvokeAuthorizerRequestPayloadBuilder b) {}

  /// A key-value map of additional context variables.
  _i3.BuiltMap<String, String>? get additionalContext;

  /// The simulated request body of an incoming invocation request.
  String? get body;

  /// A key-value map of headers to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, should be specified.
  _i3.BuiltMap<String, String>? get headers;

  /// The headers as a map from string to list of values to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, may be specified.
  _i3.BuiltListMultimap<String, String>? get multiValueHeaders;

  /// The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.
  String? get pathWithQueryString;

  /// A key-value map of stage variables to simulate an invocation on a deployed Stage.
  _i3.BuiltMap<String, String>? get stageVariables;
  @override
  List<Object?> get props => [
        additionalContext,
        body,
        headers,
        multiValueHeaders,
        pathWithQueryString,
        stageVariables,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TestInvokeAuthorizerRequestPayload')
          ..add(
            'additionalContext',
            additionalContext,
          )
          ..add(
            'body',
            body,
          )
          ..add(
            'headers',
            headers,
          )
          ..add(
            'multiValueHeaders',
            multiValueHeaders,
          )
          ..add(
            'pathWithQueryString',
            pathWithQueryString,
          )
          ..add(
            'stageVariables',
            stageVariables,
          );
    return helper.toString();
  }
}

class TestInvokeAuthorizerRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<TestInvokeAuthorizerRequestPayload> {
  const TestInvokeAuthorizerRequestRestJson1Serializer()
      : super('TestInvokeAuthorizerRequest');

  @override
  Iterable<Type> get types => const [
        TestInvokeAuthorizerRequest,
        _$TestInvokeAuthorizerRequest,
        TestInvokeAuthorizerRequestPayload,
        _$TestInvokeAuthorizerRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  TestInvokeAuthorizerRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestInvokeAuthorizerRequestPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'additionalContext':
          result.additionalContext.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i3.BuiltMap<String, String>));
        case 'body':
          result.body = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'headers':
          result.headers.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i3.BuiltMap<String, String>));
        case 'multiValueHeaders':
          result.multiValueHeaders.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltListMultimap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i3.BuiltListMultimap<String, String>));
        case 'pathWithQueryString':
          result.pathWithQueryString = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'stageVariables':
          result.stageVariables.replace((serializers.deserialize(
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
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TestInvokeAuthorizerRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final TestInvokeAuthorizerRequestPayload(
      :additionalContext,
      :body,
      :headers,
      :multiValueHeaders,
      :pathWithQueryString,
      :stageVariables
    ) = object;
    if (additionalContext != null) {
      result$
        ..add('additionalContext')
        ..add(serializers.serialize(
          additionalContext,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (body != null) {
      result$
        ..add('body')
        ..add(serializers.serialize(
          body,
          specifiedType: const FullType(String),
        ));
    }
    if (headers != null) {
      result$
        ..add('headers')
        ..add(serializers.serialize(
          headers,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (multiValueHeaders != null) {
      result$
        ..add('multiValueHeaders')
        ..add(serializers.serialize(
          multiValueHeaders,
          specifiedType: const FullType(
            _i3.BuiltListMultimap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (pathWithQueryString != null) {
      result$
        ..add('pathWithQueryString')
        ..add(serializers.serialize(
          pathWithQueryString,
          specifiedType: const FullType(String),
        ));
    }
    if (stageVariables != null) {
      result$
        ..add('stageVariables')
        ..add(serializers.serialize(
          stageVariables,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    return result$;
  }
}
