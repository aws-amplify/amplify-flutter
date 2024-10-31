// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity_provider.model.software_token_mfa_not_found_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'software_token_mfa_not_found_exception.g.dart';

/// This exception is thrown when the software token time-based one-time password (TOTP) multi-factor authentication (MFA) isn't activated for the user pool.
abstract class SoftwareTokenMfaNotFoundException
    with
        _i1.AWSEquatable<SoftwareTokenMfaNotFoundException>
    implements
        Built<SoftwareTokenMfaNotFoundException,
            SoftwareTokenMfaNotFoundExceptionBuilder>,
        _i2.SmithyHttpException {
  /// This exception is thrown when the software token time-based one-time password (TOTP) multi-factor authentication (MFA) isn't activated for the user pool.
  factory SoftwareTokenMfaNotFoundException({String? message}) {
    return _$SoftwareTokenMfaNotFoundException._(message: message);
  }

  /// This exception is thrown when the software token time-based one-time password (TOTP) multi-factor authentication (MFA) isn't activated for the user pool.
  factory SoftwareTokenMfaNotFoundException.build(
          [void Function(SoftwareTokenMfaNotFoundExceptionBuilder) updates]) =
      _$SoftwareTokenMfaNotFoundException;

  const SoftwareTokenMfaNotFoundException._();

  /// Constructs a [SoftwareTokenMfaNotFoundException] from a [payload] and [response].
  factory SoftwareTokenMfaNotFoundException.fromResponse(
    SoftwareTokenMfaNotFoundException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<SoftwareTokenMfaNotFoundException>>
      serializers = [SoftwareTokenMfaNotFoundExceptionAwsJson11Serializer()];

  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cognitoidentityprovider',
        shape: 'SoftwareTokenMFANotFoundException',
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
        newBuiltValueToStringHelper('SoftwareTokenMfaNotFoundException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class SoftwareTokenMfaNotFoundExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<SoftwareTokenMfaNotFoundException> {
  const SoftwareTokenMfaNotFoundExceptionAwsJson11Serializer()
      : super('SoftwareTokenMfaNotFoundException');

  @override
  Iterable<Type> get types => const [
        SoftwareTokenMfaNotFoundException,
        _$SoftwareTokenMfaNotFoundException,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  SoftwareTokenMfaNotFoundException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SoftwareTokenMfaNotFoundExceptionBuilder();
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
    SoftwareTokenMfaNotFoundException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final SoftwareTokenMfaNotFoundException(:message) = object;
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
