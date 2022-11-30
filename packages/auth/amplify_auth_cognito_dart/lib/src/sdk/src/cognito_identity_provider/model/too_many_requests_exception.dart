// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.too_many_requests_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'too_many_requests_exception.g.dart';

/// This exception is thrown when the user has made too many requests for a given operation.
abstract class TooManyRequestsException
    with _i1.AWSEquatable<TooManyRequestsException>
    implements
        Built<TooManyRequestsException, TooManyRequestsExceptionBuilder>,
        _i2.SmithyHttpException {
  /// This exception is thrown when the user has made too many requests for a given operation.
  factory TooManyRequestsException({String? message}) {
    return _$TooManyRequestsException._(message: message);
  }

  /// This exception is thrown when the user has made too many requests for a given operation.
  factory TooManyRequestsException.build(
          [void Function(TooManyRequestsExceptionBuilder) updates]) =
      _$TooManyRequestsException;

  const TooManyRequestsException._();

  /// Constructs a [TooManyRequestsException] from a [payload] and [response].
  factory TooManyRequestsException.fromResponse(
    TooManyRequestsException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    TooManyRequestsExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TooManyRequestsExceptionBuilder b) {}

  /// The message returned when the Amazon Cognito service returns a too many requests exception.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cognitoidentityprovider',
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
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TooManyRequestsException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class TooManyRequestsExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<TooManyRequestsException> {
  const TooManyRequestsExceptionAwsJson11Serializer()
      : super('TooManyRequestsException');

  @override
  Iterable<Type> get types => const [
        TooManyRequestsException,
        _$TooManyRequestsException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  TooManyRequestsException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TooManyRequestsExceptionBuilder();
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
    final payload = (object as TooManyRequestsException);
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
