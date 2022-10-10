// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.test_invoke_method_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'test_invoke_method_request.g.dart';

/// Make a request to simulate the invocation of a Method.
abstract class TestInvokeMethodRequest
    with
        _i1.HttpInput<TestInvokeMethodRequestPayload>,
        _i2.AWSEquatable<TestInvokeMethodRequest>
    implements
        Built<TestInvokeMethodRequest, TestInvokeMethodRequestBuilder>,
        _i1.HasPayload<TestInvokeMethodRequestPayload> {
  /// Make a request to simulate the invocation of a Method.
  factory TestInvokeMethodRequest({
    String? body,
    String? clientCertificateId,
    Map<String, String>? headers,
    required String httpMethod,
    Map<String, List<String>>? multiValueHeaders,
    String? pathWithQueryString,
    required String resourceId,
    required String restApiId,
    Map<String, String>? stageVariables,
  }) {
    return _$TestInvokeMethodRequest._(
      body: body,
      clientCertificateId: clientCertificateId,
      headers: headers == null ? null : _i3.BuiltMap(headers),
      httpMethod: httpMethod,
      multiValueHeaders: multiValueHeaders == null
          ? null
          : _i3.BuiltListMultimap(multiValueHeaders),
      pathWithQueryString: pathWithQueryString,
      resourceId: resourceId,
      restApiId: restApiId,
      stageVariables:
          stageVariables == null ? null : _i3.BuiltMap(stageVariables),
    );
  }

  /// Make a request to simulate the invocation of a Method.
  factory TestInvokeMethodRequest.build(
          [void Function(TestInvokeMethodRequestBuilder) updates]) =
      _$TestInvokeMethodRequest;

  const TestInvokeMethodRequest._();

  factory TestInvokeMethodRequest.fromRequest(
    TestInvokeMethodRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      TestInvokeMethodRequest.build((b) {
        b.body = payload.body;
        b.clientCertificateId = payload.clientCertificateId;
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
        if (labels['resourceId'] != null) {
          b.resourceId = labels['resourceId']!;
        }
        if (labels['httpMethod'] != null) {
          b.httpMethod = labels['httpMethod']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    TestInvokeMethodRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestInvokeMethodRequestBuilder b) {}

  /// The simulated request body of an incoming invocation request.
  String? get body;

  /// A ClientCertificate identifier to use in the test invocation. API Gateway will use the certificate when making the HTTPS request to the defined back-end endpoint.
  String? get clientCertificateId;

  /// A key-value map of headers to simulate an incoming invocation request.
  _i3.BuiltMap<String, String>? get headers;

  /// Specifies a test invoke method request's HTTP method.
  String get httpMethod;

  /// The headers as a map from string to list of values to simulate an incoming invocation request.
  _i3.BuiltListMultimap<String, String>? get multiValueHeaders;

  /// The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.
  String? get pathWithQueryString;

  /// Specifies a test invoke method request's resource ID.
  String get resourceId;

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// A key-value map of stage variables to simulate an invocation on a deployed Stage.
  _i3.BuiltMap<String, String>? get stageVariables;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'resourceId':
        return resourceId;
      case 'httpMethod':
        return httpMethod;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  TestInvokeMethodRequestPayload getPayload() =>
      TestInvokeMethodRequestPayload((b) {
        b.body = body;
        b.clientCertificateId = clientCertificateId;
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
        body,
        clientCertificateId,
        headers,
        httpMethod,
        multiValueHeaders,
        pathWithQueryString,
        resourceId,
        restApiId,
        stageVariables,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TestInvokeMethodRequest');
    helper.add(
      'body',
      body,
    );
    helper.add(
      'clientCertificateId',
      clientCertificateId,
    );
    helper.add(
      'headers',
      headers,
    );
    helper.add(
      'httpMethod',
      httpMethod,
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
      'resourceId',
      resourceId,
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
abstract class TestInvokeMethodRequestPayload
    with
        _i2.AWSEquatable<TestInvokeMethodRequestPayload>
    implements
        Built<TestInvokeMethodRequestPayload,
            TestInvokeMethodRequestPayloadBuilder> {
  factory TestInvokeMethodRequestPayload(
          [void Function(TestInvokeMethodRequestPayloadBuilder) updates]) =
      _$TestInvokeMethodRequestPayload;

  const TestInvokeMethodRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestInvokeMethodRequestPayloadBuilder b) {}

  /// The simulated request body of an incoming invocation request.
  String? get body;

  /// A ClientCertificate identifier to use in the test invocation. API Gateway will use the certificate when making the HTTPS request to the defined back-end endpoint.
  String? get clientCertificateId;

  /// A key-value map of headers to simulate an incoming invocation request.
  _i3.BuiltMap<String, String>? get headers;

  /// The headers as a map from string to list of values to simulate an incoming invocation request.
  _i3.BuiltListMultimap<String, String>? get multiValueHeaders;

  /// The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.
  String? get pathWithQueryString;

  /// A key-value map of stage variables to simulate an invocation on a deployed Stage.
  _i3.BuiltMap<String, String>? get stageVariables;
  @override
  List<Object?> get props => [
        body,
        clientCertificateId,
        headers,
        multiValueHeaders,
        pathWithQueryString,
        stageVariables,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TestInvokeMethodRequestPayload');
    helper.add(
      'body',
      body,
    );
    helper.add(
      'clientCertificateId',
      clientCertificateId,
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

class TestInvokeMethodRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<TestInvokeMethodRequestPayload> {
  const TestInvokeMethodRequestRestJson1Serializer()
      : super('TestInvokeMethodRequest');

  @override
  Iterable<Type> get types => const [
        TestInvokeMethodRequest,
        _$TestInvokeMethodRequest,
        TestInvokeMethodRequestPayload,
        _$TestInvokeMethodRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  TestInvokeMethodRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestInvokeMethodRequestPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'body':
          if (value != null) {
            result.body = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'clientCertificateId':
          if (value != null) {
            result.clientCertificateId = (serializers.deserialize(
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
    final payload = object is TestInvokeMethodRequest
        ? object.getPayload()
        : (object as TestInvokeMethodRequestPayload);
    final result = <Object?>[];
    if (payload.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(
          payload.body!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.clientCertificateId != null) {
      result
        ..add('clientCertificateId')
        ..add(serializers.serialize(
          payload.clientCertificateId!,
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
