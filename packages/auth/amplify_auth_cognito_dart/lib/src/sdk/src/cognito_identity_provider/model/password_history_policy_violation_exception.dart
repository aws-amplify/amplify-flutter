// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity_provider.model.password_history_policy_violation_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'password_history_policy_violation_exception.g.dart';

/// The message returned when a user's new password matches a previous password and doesn't comply with the password-history policy.
abstract class PasswordHistoryPolicyViolationException
    with
        _i1.AWSEquatable<PasswordHistoryPolicyViolationException>
    implements
        Built<PasswordHistoryPolicyViolationException,
            PasswordHistoryPolicyViolationExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The message returned when a user's new password matches a previous password and doesn't comply with the password-history policy.
  factory PasswordHistoryPolicyViolationException({String? message}) {
    return _$PasswordHistoryPolicyViolationException._(message: message);
  }

  /// The message returned when a user's new password matches a previous password and doesn't comply with the password-history policy.
  factory PasswordHistoryPolicyViolationException.build(
      [void Function(PasswordHistoryPolicyViolationExceptionBuilder)
          updates]) = _$PasswordHistoryPolicyViolationException;

  const PasswordHistoryPolicyViolationException._();

  /// Constructs a [PasswordHistoryPolicyViolationException] from a [payload] and [response].
  factory PasswordHistoryPolicyViolationException.fromResponse(
    PasswordHistoryPolicyViolationException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<
          _i2.SmithySerializer<PasswordHistoryPolicyViolationException>>
      serializers = [
    PasswordHistoryPolicyViolationExceptionAwsJson11Serializer()
  ];

  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cognitoidentityprovider',
        shape: 'PasswordHistoryPolicyViolationException',
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
        newBuiltValueToStringHelper('PasswordHistoryPolicyViolationException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class PasswordHistoryPolicyViolationExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<PasswordHistoryPolicyViolationException> {
  const PasswordHistoryPolicyViolationExceptionAwsJson11Serializer()
      : super('PasswordHistoryPolicyViolationException');

  @override
  Iterable<Type> get types => const [
        PasswordHistoryPolicyViolationException,
        _$PasswordHistoryPolicyViolationException,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  PasswordHistoryPolicyViolationException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PasswordHistoryPolicyViolationExceptionBuilder();
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
    PasswordHistoryPolicyViolationException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PasswordHistoryPolicyViolationException(:message) = object;
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
