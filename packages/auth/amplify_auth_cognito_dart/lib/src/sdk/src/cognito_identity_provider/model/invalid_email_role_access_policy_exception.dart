// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.invalid_email_role_access_policy_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_email_role_access_policy_exception.g.dart';

/// This exception is thrown when Amazon Cognito isn't allowed to use your email identity. HTTP status code: 400.
abstract class InvalidEmailRoleAccessPolicyException
    with
        _i1.AWSEquatable<InvalidEmailRoleAccessPolicyException>
    implements
        Built<InvalidEmailRoleAccessPolicyException,
            InvalidEmailRoleAccessPolicyExceptionBuilder>,
        _i2.SmithyHttpException {
  /// This exception is thrown when Amazon Cognito isn't allowed to use your email identity. HTTP status code: 400.
  factory InvalidEmailRoleAccessPolicyException({String? message}) {
    return _$InvalidEmailRoleAccessPolicyException._(message: message);
  }

  /// This exception is thrown when Amazon Cognito isn't allowed to use your email identity. HTTP status code: 400.
  factory InvalidEmailRoleAccessPolicyException.build(
      [void Function(InvalidEmailRoleAccessPolicyExceptionBuilder)
          updates]) = _$InvalidEmailRoleAccessPolicyException;

  const InvalidEmailRoleAccessPolicyException._();

  /// Constructs a [InvalidEmailRoleAccessPolicyException] from a [payload] and [response].
  factory InvalidEmailRoleAccessPolicyException.fromResponse(
    InvalidEmailRoleAccessPolicyException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    InvalidEmailRoleAccessPolicyExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidEmailRoleAccessPolicyExceptionBuilder b) {}

  /// The message returned when you have an unverified email address or the identity policy isn't set on an email address that Amazon Cognito can access.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cognitoidentityprovider',
        shape: 'InvalidEmailRoleAccessPolicyException',
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
    final helper =
        newBuiltValueToStringHelper('InvalidEmailRoleAccessPolicyException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class InvalidEmailRoleAccessPolicyExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<InvalidEmailRoleAccessPolicyException> {
  const InvalidEmailRoleAccessPolicyExceptionAwsJson11Serializer()
      : super('InvalidEmailRoleAccessPolicyException');

  @override
  Iterable<Type> get types => const [
        InvalidEmailRoleAccessPolicyException,
        _$InvalidEmailRoleAccessPolicyException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  InvalidEmailRoleAccessPolicyException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidEmailRoleAccessPolicyExceptionBuilder();
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
    final payload = (object as InvalidEmailRoleAccessPolicyException);
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
