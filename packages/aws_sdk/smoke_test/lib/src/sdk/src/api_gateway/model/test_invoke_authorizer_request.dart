// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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
    Map<String, String>? additionalContext,
    required String authorizerId,
    String? body,
    Map<String, String>? headers,
    Map<String, List<String>>? multiValueHeaders,
    String? pathWithQueryString,
    required String restApiId,
    Map<String, String>? stageVariables,
  }) {
    return _$TestInvokeAuthorizerRequest._(
      additionalContext:
          additionalContext == null ? null : _i3.BuiltMap(additionalContext),
      authorizerId: authorizerId,
      body: body,
      headers: headers == null ? null : _i3.BuiltMap(headers),
      multiValueHeaders: multiValueHeaders == null
          ? null
          : _i3.BuiltListMultimap(multiValueHeaders),
      pathWithQueryString: pathWithQueryString,
      restApiId: restApiId,
      stageVariables:
          stageVariables == null ? null : _i3.BuiltMap(stageVariables),
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

  static const List<_i1.SmithySerializer> serializers = [
    TestInvokeAuthorizerRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestInvokeAuthorizerRequestBuilder b) {}

  /// A key-value map of additional context variables.
  _i3.BuiltMap<String, String>? get additionalContext;

  /// Specifies a test invoke authorizer request's Authorizer ID.
  String get authorizerId;

  /// The simulated request body of an incoming invocation request.
  String? get body;

  /// A key-value map of headers to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, should be specified.
  _i3.BuiltMap<String, String>? get headers;

  /// The headers as a map from string to list of values to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, may be specified.
  _i3.BuiltListMultimap<String, String>? get multiValueHeaders;

  /// The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.
  String? get pathWithQueryString;

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// A key-value map of stage variables to simulate an invocation on a deployed Stage.
  _i3.BuiltMap<String, String>? get stageVariables;
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
        additionalContext,
        authorizerId,
        body,
        headers,
        multiValueHeaders,
        pathWithQueryString,
        restApiId,
        stageVariables,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TestInvokeAuthorizerRequest');
    helper.add(
      'additionalContext',
      additionalContext,
    );
    helper.add(
      'authorizerId',
      authorizerId,
    );
    helper.add(
      'body',
      body,
    );
    helper.add(
      'headers',
      headers,
    );
    helper.add(
      'multiValueHeaders',
      multiValueHeaders,
    );
    helper.add(
      'pathWithQueryString',
      pathWithQueryString,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    helper.add(
      'stageVariables',
      stageVariables,
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
        newBuiltValueToStringHelper('TestInvokeAuthorizerRequestPayload');
    helper.add(
      'additionalContext',
      additionalContext,
    );
    helper.add(
      'body',
      body,
    );
    helper.add(
      'headers',
      headers,
    );
    helper.add(
      'multiValueHeaders',
      multiValueHeaders,
    );
    helper.add(
      'pathWithQueryString',
      pathWithQueryString,
    );
    helper.add(
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
      switch (key) {
        case 'additionalContext':
          if (value != null) {
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
          }
          break;
        case 'body':
          if (value != null) {
            result.body = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'headers':
          if (value != null) {
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
          }
          break;
        case 'multiValueHeaders':
          if (value != null) {
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
          }
          break;
        case 'pathWithQueryString':
          if (value != null) {
            result.pathWithQueryString = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'stageVariables':
          if (value != null) {
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
    final payload = object is TestInvokeAuthorizerRequest
        ? object.getPayload()
        : (object as TestInvokeAuthorizerRequestPayload);
    final result = <Object?>[];
    if (payload.additionalContext != null) {
      result
        ..add('additionalContext')
        ..add(serializers.serialize(
          payload.additionalContext!,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(
          payload.body!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.headers != null) {
      result
        ..add('headers')
        ..add(serializers.serialize(
          payload.headers!,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.multiValueHeaders != null) {
      result
        ..add('multiValueHeaders')
        ..add(serializers.serialize(
          payload.multiValueHeaders!,
          specifiedType: const FullType(
            _i3.BuiltListMultimap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.pathWithQueryString != null) {
      result
        ..add('pathWithQueryString')
        ..add(serializers.serialize(
          payload.pathWithQueryString!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.stageVariables != null) {
      result
        ..add('stageVariables')
        ..add(serializers.serialize(
          payload.stageVariables!,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    return result;
  }
}
