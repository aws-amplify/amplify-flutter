// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity_provider.model.enable_software_token_mfa_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'enable_software_token_mfa_exception.g.dart';

/// This exception is thrown when there is a code mismatch and the service fails to configure the software token TOTP multi-factor authentication (MFA).
abstract class EnableSoftwareTokenMfaException
    with
        _i1.AWSEquatable<EnableSoftwareTokenMfaException>
    implements
        Built<EnableSoftwareTokenMfaException,
            EnableSoftwareTokenMfaExceptionBuilder>,
        _i2.SmithyHttpException {
  /// This exception is thrown when there is a code mismatch and the service fails to configure the software token TOTP multi-factor authentication (MFA).
  factory EnableSoftwareTokenMfaException({String? message}) {
    return _$EnableSoftwareTokenMfaException._(message: message);
  }

  /// This exception is thrown when there is a code mismatch and the service fails to configure the software token TOTP multi-factor authentication (MFA).
  factory EnableSoftwareTokenMfaException.build(
          [void Function(EnableSoftwareTokenMfaExceptionBuilder) updates]) =
      _$EnableSoftwareTokenMfaException;

  const EnableSoftwareTokenMfaException._();

  /// Constructs a [EnableSoftwareTokenMfaException] from a [payload] and [response].
  factory EnableSoftwareTokenMfaException.fromResponse(
    EnableSoftwareTokenMfaException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<EnableSoftwareTokenMfaException>>
      serializers = [EnableSoftwareTokenMfaExceptionAwsJson11Serializer()];

  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cognitoidentityprovider',
        shape: 'EnableSoftwareTokenMFAException',
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
        newBuiltValueToStringHelper('EnableSoftwareTokenMfaException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class EnableSoftwareTokenMfaExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<EnableSoftwareTokenMfaException> {
  const EnableSoftwareTokenMfaExceptionAwsJson11Serializer()
      : super('EnableSoftwareTokenMfaException');

  @override
  Iterable<Type> get types => const [
        EnableSoftwareTokenMfaException,
        _$EnableSoftwareTokenMfaException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  EnableSoftwareTokenMfaException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableSoftwareTokenMfaExceptionBuilder();
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
    EnableSoftwareTokenMfaException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final EnableSoftwareTokenMfaException(:message) = object;
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
