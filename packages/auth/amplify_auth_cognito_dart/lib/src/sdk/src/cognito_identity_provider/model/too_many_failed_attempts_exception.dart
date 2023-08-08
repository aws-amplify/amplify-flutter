// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.too_many_failed_attempts_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'too_many_failed_attempts_exception.g.dart';

/// This exception is thrown when the user has made too many failed attempts for a given action, such as sign-in.
abstract class TooManyFailedAttemptsException
    with
        _i1.AWSEquatable<TooManyFailedAttemptsException>
    implements
        Built<TooManyFailedAttemptsException,
            TooManyFailedAttemptsExceptionBuilder>,
        _i2.SmithyHttpException {
  /// This exception is thrown when the user has made too many failed attempts for a given action, such as sign-in.
  factory TooManyFailedAttemptsException({String? message}) {
    return _$TooManyFailedAttemptsException._(message: message);
  }

  /// This exception is thrown when the user has made too many failed attempts for a given action, such as sign-in.
  factory TooManyFailedAttemptsException.build(
          [void Function(TooManyFailedAttemptsExceptionBuilder) updates]) =
      _$TooManyFailedAttemptsException;

  const TooManyFailedAttemptsException._();

  /// Constructs a [TooManyFailedAttemptsException] from a [payload] and [response].
  factory TooManyFailedAttemptsException.fromResponse(
    TooManyFailedAttemptsException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<TooManyFailedAttemptsException>>
      serializers = [TooManyFailedAttemptsExceptionAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TooManyFailedAttemptsExceptionBuilder b) {}

  /// The message returned when Amazon Cognito returns a `TooManyFailedAttempts` exception.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cognitoidentityprovider',
        shape: 'TooManyFailedAttemptsException',
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
    final helper = newBuiltValueToStringHelper('TooManyFailedAttemptsException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class TooManyFailedAttemptsExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<TooManyFailedAttemptsException> {
  const TooManyFailedAttemptsExceptionAwsJson11Serializer()
      : super('TooManyFailedAttemptsException');

  @override
  Iterable<Type> get types => const [
        TooManyFailedAttemptsException,
        _$TooManyFailedAttemptsException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  TooManyFailedAttemptsException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TooManyFailedAttemptsExceptionBuilder();
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
    TooManyFailedAttemptsException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final TooManyFailedAttemptsException(:message) = object;
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
