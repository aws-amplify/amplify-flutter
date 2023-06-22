// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v2.api_gateway.model.too_many_requests_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'too_many_requests_exception.g.dart';

abstract class TooManyRequestsException
    with _i1.AWSEquatable<TooManyRequestsException>
    implements
        Built<TooManyRequestsException, TooManyRequestsExceptionBuilder>,
        _i2.HasPayload<TooManyRequestsExceptionPayload>,
        _i2.SmithyHttpException {
  factory TooManyRequestsException({
    String? retryAfterSeconds,
    String? message,
  }) {
    return _$TooManyRequestsException._(
      retryAfterSeconds: retryAfterSeconds,
      message: message,
    );
  }

  factory TooManyRequestsException.build(
          [void Function(TooManyRequestsExceptionBuilder) updates]) =
      _$TooManyRequestsException;

  const TooManyRequestsException._();

  /// Constructs a [TooManyRequestsException] from a [payload] and [response].
  factory TooManyRequestsException.fromResponse(
    TooManyRequestsExceptionPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      TooManyRequestsException.build((b) {
        b.message = payload.message;
        if (response.headers['Retry-After'] != null) {
          b.retryAfterSeconds = response.headers['Retry-After']!;
        }
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<TooManyRequestsExceptionPayload>>
      serializers = [TooManyRequestsExceptionRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TooManyRequestsExceptionBuilder b) {}
  String? get retryAfterSeconds;
  @override
  String? get message;
  @override
  TooManyRequestsExceptionPayload getPayload() =>
      TooManyRequestsExceptionPayload((b) {
        b.message = message;
      });
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.apigateway',
        shape: 'TooManyRequestsException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 429;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [
        retryAfterSeconds,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TooManyRequestsException')
      ..add(
        'retryAfterSeconds',
        retryAfterSeconds,
      )
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class TooManyRequestsExceptionPayload
    with
        _i1.AWSEquatable<TooManyRequestsExceptionPayload>
    implements
        Built<TooManyRequestsExceptionPayload,
            TooManyRequestsExceptionPayloadBuilder> {
  factory TooManyRequestsExceptionPayload(
          [void Function(TooManyRequestsExceptionPayloadBuilder) updates]) =
      _$TooManyRequestsExceptionPayload;

  const TooManyRequestsExceptionPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TooManyRequestsExceptionPayloadBuilder b) {}
  String? get message;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TooManyRequestsExceptionPayload')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class TooManyRequestsExceptionRestJson1Serializer
    extends _i2.StructuredSmithySerializer<TooManyRequestsExceptionPayload> {
  const TooManyRequestsExceptionRestJson1Serializer()
      : super('TooManyRequestsException');

  @override
  Iterable<Type> get types => const [
        TooManyRequestsException,
        _$TooManyRequestsException,
        TooManyRequestsExceptionPayload,
        _$TooManyRequestsExceptionPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  TooManyRequestsExceptionPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TooManyRequestsExceptionPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'message':
          result.message = (serializers.deserialize(
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
    TooManyRequestsExceptionPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final TooManyRequestsExceptionPayload(:message) = object;
    if (message != null) {
      result$
        ..add('message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
