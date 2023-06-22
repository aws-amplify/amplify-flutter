// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity.model.invalid_identity_pool_configuration_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_identity_pool_configuration_exception.g.dart';

/// Thrown if the identity pool has no role associated for the given auth type (auth/unauth) or if the AssumeRole fails.
abstract class InvalidIdentityPoolConfigurationException
    with
        _i1.AWSEquatable<InvalidIdentityPoolConfigurationException>
    implements
        Built<InvalidIdentityPoolConfigurationException,
            InvalidIdentityPoolConfigurationExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Thrown if the identity pool has no role associated for the given auth type (auth/unauth) or if the AssumeRole fails.
  factory InvalidIdentityPoolConfigurationException({String? message}) {
    return _$InvalidIdentityPoolConfigurationException._(message: message);
  }

  /// Thrown if the identity pool has no role associated for the given auth type (auth/unauth) or if the AssumeRole fails.
  factory InvalidIdentityPoolConfigurationException.build(
      [void Function(InvalidIdentityPoolConfigurationExceptionBuilder)
          updates]) = _$InvalidIdentityPoolConfigurationException;

  const InvalidIdentityPoolConfigurationException._();

  /// Constructs a [InvalidIdentityPoolConfigurationException] from a [payload] and [response].
  factory InvalidIdentityPoolConfigurationException.fromResponse(
    InvalidIdentityPoolConfigurationException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<
          _i2.SmithySerializer<InvalidIdentityPoolConfigurationException>>
      serializers = [
    InvalidIdentityPoolConfigurationExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidIdentityPoolConfigurationExceptionBuilder b) {}

  /// The message returned for an `InvalidIdentityPoolConfigurationException`
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cognitoidentity',
        shape: 'InvalidIdentityPoolConfigurationException',
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
        newBuiltValueToStringHelper('InvalidIdentityPoolConfigurationException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class InvalidIdentityPoolConfigurationExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<InvalidIdentityPoolConfigurationException> {
  const InvalidIdentityPoolConfigurationExceptionAwsJson11Serializer()
      : super('InvalidIdentityPoolConfigurationException');

  @override
  Iterable<Type> get types => const [
        InvalidIdentityPoolConfigurationException,
        _$InvalidIdentityPoolConfigurationException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  InvalidIdentityPoolConfigurationException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidIdentityPoolConfigurationExceptionBuilder();
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
    InvalidIdentityPoolConfigurationException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InvalidIdentityPoolConfigurationException(:message) = object;
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
