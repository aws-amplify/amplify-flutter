// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.invalid_sms_role_trust_relationship_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_sms_role_trust_relationship_exception.g.dart';

/// This exception is thrown when the trust relationship is not valid for the role provided for SMS configuration. This can happen if you don't trust `cognito-idp.amazonaws.com` or the external ID provided in the role does not match what is provided in the SMS configuration for the user pool.
abstract class InvalidSmsRoleTrustRelationshipException
    with
        _i1.AWSEquatable<InvalidSmsRoleTrustRelationshipException>
    implements
        Built<InvalidSmsRoleTrustRelationshipException,
            InvalidSmsRoleTrustRelationshipExceptionBuilder>,
        _i2.SmithyHttpException {
  /// This exception is thrown when the trust relationship is not valid for the role provided for SMS configuration. This can happen if you don't trust `cognito-idp.amazonaws.com` or the external ID provided in the role does not match what is provided in the SMS configuration for the user pool.
  factory InvalidSmsRoleTrustRelationshipException({String? message}) {
    return _$InvalidSmsRoleTrustRelationshipException._(message: message);
  }

  /// This exception is thrown when the trust relationship is not valid for the role provided for SMS configuration. This can happen if you don't trust `cognito-idp.amazonaws.com` or the external ID provided in the role does not match what is provided in the SMS configuration for the user pool.
  factory InvalidSmsRoleTrustRelationshipException.build(
      [void Function(InvalidSmsRoleTrustRelationshipExceptionBuilder)
          updates]) = _$InvalidSmsRoleTrustRelationshipException;

  const InvalidSmsRoleTrustRelationshipException._();

  /// Constructs a [InvalidSmsRoleTrustRelationshipException] from a [payload] and [response].
  factory InvalidSmsRoleTrustRelationshipException.fromResponse(
    InvalidSmsRoleTrustRelationshipException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<
          _i2.SmithySerializer<InvalidSmsRoleTrustRelationshipException>>
      serializers = [
    InvalidSmsRoleTrustRelationshipExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidSmsRoleTrustRelationshipExceptionBuilder b) {}

  /// The message returned when the role trust relationship for the SMS message is not valid.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cognitoidentityprovider',
        shape: 'InvalidSmsRoleTrustRelationshipException',
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
        newBuiltValueToStringHelper('InvalidSmsRoleTrustRelationshipException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class InvalidSmsRoleTrustRelationshipExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<InvalidSmsRoleTrustRelationshipException> {
  const InvalidSmsRoleTrustRelationshipExceptionAwsJson11Serializer()
      : super('InvalidSmsRoleTrustRelationshipException');

  @override
  Iterable<Type> get types => const [
        InvalidSmsRoleTrustRelationshipException,
        _$InvalidSmsRoleTrustRelationshipException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  InvalidSmsRoleTrustRelationshipException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidSmsRoleTrustRelationshipExceptionBuilder();
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
    InvalidSmsRoleTrustRelationshipException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InvalidSmsRoleTrustRelationshipException(:message) = object;
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
