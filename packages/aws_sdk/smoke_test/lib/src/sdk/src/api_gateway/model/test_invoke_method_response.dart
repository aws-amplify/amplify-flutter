// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.test_invoke_method_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;

part 'test_invoke_method_response.g.dart';

/// Represents the response of the test invoke request in the HTTP method.
abstract class TestInvokeMethodResponse
    with _i1.AWSEquatable<TestInvokeMethodResponse>
    implements
        Built<TestInvokeMethodResponse, TestInvokeMethodResponseBuilder> {
  /// Represents the response of the test invoke request in the HTTP method.
  factory TestInvokeMethodResponse({
    String? body,
    Map<String, String>? headers,
    _i2.Int64? latency,
    String? log,
    Map<String, List<String>>? multiValueHeaders,
    int? status,
  }) {
    return _$TestInvokeMethodResponse._(
      body: body,
      headers: headers == null ? null : _i3.BuiltMap(headers),
      latency: latency,
      log: log,
      multiValueHeaders: multiValueHeaders == null
          ? null
          : _i3.BuiltListMultimap(multiValueHeaders),
      status: status,
    );
  }

  /// Represents the response of the test invoke request in the HTTP method.
  factory TestInvokeMethodResponse.build(
          [void Function(TestInvokeMethodResponseBuilder) updates]) =
      _$TestInvokeMethodResponse;

  const TestInvokeMethodResponse._();

  /// Constructs a [TestInvokeMethodResponse] from a [payload] and [response].
  factory TestInvokeMethodResponse.fromResponse(
    TestInvokeMethodResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    TestInvokeMethodResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestInvokeMethodResponseBuilder b) {}

  /// The body of the HTTP response.
  String? get body;

  /// The headers of the HTTP response.
  _i3.BuiltMap<String, String>? get headers;

  /// The execution latency of the test invoke request.
  _i2.Int64? get latency;

  /// The API Gateway execution log for the test invoke request.
  String? get log;

  /// The headers of the HTTP response as a map from string to list of values.
  _i3.BuiltListMultimap<String, String>? get multiValueHeaders;

  /// The HTTP status code.
  int? get status;
  @override
  List<Object?> get props => [
        body,
        headers,
        latency,
        log,
        multiValueHeaders,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TestInvokeMethodResponse');
    helper.add(
      'body',
      body,
    );
    helper.add(
      'headers',
      headers,
    );
    helper.add(
      'latency',
      latency,
    );
    helper.add(
      'log',
      log,
    );
    helper.add(
      'multiValueHeaders',
      multiValueHeaders,
    );
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class TestInvokeMethodResponseRestJson1Serializer
    extends _i4.StructuredSmithySerializer<TestInvokeMethodResponse> {
  const TestInvokeMethodResponseRestJson1Serializer()
      : super('TestInvokeMethodResponse');

  @override
  Iterable<Type> get types => const [
        TestInvokeMethodResponse,
        _$TestInvokeMethodResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  TestInvokeMethodResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestInvokeMethodResponseBuilder();
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
        case 'status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as TestInvokeMethodResponse);
    final result = <Object?>[];
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
    if (payload.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType(int),
        ));
    }
    return result;
  }
}
