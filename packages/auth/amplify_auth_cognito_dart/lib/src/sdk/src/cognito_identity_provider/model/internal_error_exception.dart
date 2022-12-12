// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.internal_error_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'internal_error_exception.g.dart';

/// This exception is thrown when Amazon Cognito encounters an internal error.
abstract class InternalErrorException
    with _i1.AWSEquatable<InternalErrorException>
    implements
        Built<InternalErrorException, InternalErrorExceptionBuilder>,
        _i2.SmithyHttpException {
  /// This exception is thrown when Amazon Cognito encounters an internal error.
  factory InternalErrorException({String? message}) {
    return _$InternalErrorException._(message: message);
  }

  /// This exception is thrown when Amazon Cognito encounters an internal error.
  factory InternalErrorException.build(
          [void Function(InternalErrorExceptionBuilder) updates]) =
      _$InternalErrorException;

  const InternalErrorException._();

  /// Constructs a [InternalErrorException] from a [payload] and [response].
  factory InternalErrorException.fromResponse(
    InternalErrorException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    InternalErrorExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InternalErrorExceptionBuilder b) {}

  /// The message returned when Amazon Cognito throws an internal error exception.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cognitoidentityprovider',
        shape: 'InternalErrorException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InternalErrorException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class InternalErrorExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<InternalErrorException> {
  const InternalErrorExceptionAwsJson11Serializer()
      : super('InternalErrorException');

  @override
  Iterable<Type> get types => const [
        InternalErrorException,
        _$InternalErrorException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  InternalErrorException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InternalErrorExceptionBuilder();
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
    final payload = (object as InternalErrorException);
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
