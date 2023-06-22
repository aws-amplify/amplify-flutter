// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v2.glacier.model.request_timeout_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'request_timeout_exception.g.dart';

abstract class RequestTimeoutException
    with _i1.AWSEquatable<RequestTimeoutException>
    implements
        Built<RequestTimeoutException, RequestTimeoutExceptionBuilder>,
        _i2.SmithyHttpException {
  factory RequestTimeoutException({
    String? type,
    String? code,
    String? message,
  }) {
    return _$RequestTimeoutException._(
      type: type,
      code: code,
      message: message,
    );
  }

  factory RequestTimeoutException.build(
          [void Function(RequestTimeoutExceptionBuilder) updates]) =
      _$RequestTimeoutException;

  const RequestTimeoutException._();

  /// Constructs a [RequestTimeoutException] from a [payload] and [response].
  factory RequestTimeoutException.fromResponse(
    RequestTimeoutException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<RequestTimeoutException>> serializers =
      [RequestTimeoutExceptionRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RequestTimeoutExceptionBuilder b) {}
  String? get type;
  String? get code;
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.glacier',
        shape: 'RequestTimeoutException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 408;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [
        type,
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RequestTimeoutException')
      ..add(
        'type',
        type,
      )
      ..add(
        'code',
        code,
      )
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class RequestTimeoutExceptionRestJson1Serializer
    extends _i2.StructuredSmithySerializer<RequestTimeoutException> {
  const RequestTimeoutExceptionRestJson1Serializer()
      : super('RequestTimeoutException');

  @override
  Iterable<Type> get types => const [
        RequestTimeoutException,
        _$RequestTimeoutException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  RequestTimeoutException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestTimeoutExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RequestTimeoutException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RequestTimeoutException(:code, :message, :type) = object;
    if (code != null) {
      result$
        ..add('code')
        ..add(serializers.serialize(
          code,
          specifiedType: const FullType(String),
        ));
    }
    if (message != null) {
      result$
        ..add('message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    if (type != null) {
      result$
        ..add('type')
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
