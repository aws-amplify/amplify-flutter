// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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
    String? code,
    String? message,
    String? type,
  }) {
    return _$RequestTimeoutException._(
      code: code,
      message: message,
      type: type,
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

  static const List<_i2.SmithySerializer> serializers = [
    RequestTimeoutExceptionRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RequestTimeoutExceptionBuilder b) {}
  String? get code;
  @override
  String? get message;
  String? get type;
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
        code,
        message,
        type,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RequestTimeoutException');
    helper.add(
      'code',
      code,
    );
    helper.add(
      'message',
      message,
    );
    helper.add(
      'type',
      type,
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
      switch (key) {
        case 'code':
          if (value != null) {
            result.code = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'type':
          if (value != null) {
            result.type = (serializers.deserialize(
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
    final payload = (object as RequestTimeoutException);
    final result = <Object?>[];
    if (payload.code != null) {
      result
        ..add('code')
        ..add(serializers.serialize(
          payload.code!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
