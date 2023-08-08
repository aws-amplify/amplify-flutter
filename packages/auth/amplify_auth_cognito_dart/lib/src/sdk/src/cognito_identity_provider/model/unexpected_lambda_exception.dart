// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.unexpected_lambda_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'unexpected_lambda_exception.g.dart';

/// This exception is thrown when Amazon Cognito encounters an unexpected exception with Lambda.
abstract class UnexpectedLambdaException
    with _i1.AWSEquatable<UnexpectedLambdaException>
    implements
        Built<UnexpectedLambdaException, UnexpectedLambdaExceptionBuilder>,
        _i2.SmithyHttpException {
  /// This exception is thrown when Amazon Cognito encounters an unexpected exception with Lambda.
  factory UnexpectedLambdaException({String? message}) {
    return _$UnexpectedLambdaException._(message: message);
  }

  /// This exception is thrown when Amazon Cognito encounters an unexpected exception with Lambda.
  factory UnexpectedLambdaException.build(
          [void Function(UnexpectedLambdaExceptionBuilder) updates]) =
      _$UnexpectedLambdaException;

  const UnexpectedLambdaException._();

  /// Constructs a [UnexpectedLambdaException] from a [payload] and [response].
  factory UnexpectedLambdaException.fromResponse(
    UnexpectedLambdaException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<UnexpectedLambdaException>>
      serializers = [UnexpectedLambdaExceptionAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnexpectedLambdaExceptionBuilder b) {}

  /// The message returned when Amazon Cognito returns an unexpected Lambda exception.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cognitoidentityprovider',
        shape: 'UnexpectedLambdaException',
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
    final helper = newBuiltValueToStringHelper('UnexpectedLambdaException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class UnexpectedLambdaExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<UnexpectedLambdaException> {
  const UnexpectedLambdaExceptionAwsJson11Serializer()
      : super('UnexpectedLambdaException');

  @override
  Iterable<Type> get types => const [
        UnexpectedLambdaException,
        _$UnexpectedLambdaException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  UnexpectedLambdaException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnexpectedLambdaExceptionBuilder();
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
    UnexpectedLambdaException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UnexpectedLambdaException(:message) = object;
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
