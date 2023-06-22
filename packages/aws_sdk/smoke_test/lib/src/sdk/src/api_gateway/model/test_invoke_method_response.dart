// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    int? status,
    String? body,
    Map<String, String>? headers,
    Map<String, List<String>>? multiValueHeaders,
    String? log,
    _i2.Int64? latency,
  }) {
    status ??= 0;
    latency ??= _i2.Int64.ZERO;
    return _$TestInvokeMethodResponse._(
      status: status,
      body: body,
      headers: headers == null ? null : _i3.BuiltMap(headers),
      multiValueHeaders: multiValueHeaders == null
          ? null
          : _i3.BuiltListMultimap(multiValueHeaders),
      log: log,
      latency: latency,
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

  static const List<_i4.SmithySerializer<TestInvokeMethodResponse>>
      serializers = [TestInvokeMethodResponseRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TestInvokeMethodResponseBuilder b) {
    b.status = 0;
    b.latency = _i2.Int64.ZERO;
  }

  /// The HTTP status code.
  int get status;

  /// The body of the HTTP response.
  String? get body;

  /// The headers of the HTTP response.
  _i3.BuiltMap<String, String>? get headers;

  /// The headers of the HTTP response as a map from string to list of values.
  _i3.BuiltListMultimap<String, String>? get multiValueHeaders;

  /// The API Gateway execution log for the test invoke request.
  String? get log;

  /// The execution latency of the test invoke request.
  _i2.Int64 get latency;
  @override
  List<Object?> get props => [
        status,
        body,
        headers,
        multiValueHeaders,
        log,
        latency,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TestInvokeMethodResponse')
      ..add(
        'status',
        status,
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
        'log',
        log,
      )
      ..add(
        'latency',
        latency,
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
      if (value == null) {
        continue;
      }
      switch (key) {
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
        case 'latency':
          result.latency = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'log':
          result.log = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TestInvokeMethodResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final TestInvokeMethodResponse(
      :body,
      :headers,
      :latency,
      :log,
      :multiValueHeaders,
      :status
    ) = object;
    result$.addAll([
      'latency',
      serializers.serialize(
        latency,
        specifiedType: const FullType(_i2.Int64),
      ),
      'status',
      serializers.serialize(
        status,
        specifiedType: const FullType(int),
      ),
    ]);
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
    if (log != null) {
      result$
        ..add('log')
        ..add(serializers.serialize(
          log,
          specifiedType: const FullType(String),
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
    return result$;
  }
}
