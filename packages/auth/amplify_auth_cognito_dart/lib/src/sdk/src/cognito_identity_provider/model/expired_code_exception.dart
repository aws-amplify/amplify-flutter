// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.expired_code_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'expired_code_exception.g.dart';

/// This exception is thrown if a code has expired.
abstract class ExpiredCodeException
    with _i1.AWSEquatable<ExpiredCodeException>
    implements
        Built<ExpiredCodeException, ExpiredCodeExceptionBuilder>,
        _i2.SmithyHttpException {
  /// This exception is thrown if a code has expired.
  factory ExpiredCodeException({String? message}) {
    return _$ExpiredCodeException._(message: message);
  }

  /// This exception is thrown if a code has expired.
  factory ExpiredCodeException.build(
          [void Function(ExpiredCodeExceptionBuilder) updates]) =
      _$ExpiredCodeException;

  const ExpiredCodeException._();

  /// Constructs a [ExpiredCodeException] from a [payload] and [response].
  factory ExpiredCodeException.fromResponse(
    ExpiredCodeException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ExpiredCodeExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExpiredCodeExceptionBuilder b) {}

  /// The message returned when the expired code exception is thrown.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cognitoidentityprovider',
        shape: 'ExpiredCodeException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 400;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExpiredCodeException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class ExpiredCodeExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ExpiredCodeException> {
  const ExpiredCodeExceptionAwsJson11Serializer()
      : super('ExpiredCodeException');

  @override
  Iterable<Type> get types => const [
        ExpiredCodeException,
        _$ExpiredCodeException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ExpiredCodeException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExpiredCodeExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
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
    final payload = (object as ExpiredCodeException);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
