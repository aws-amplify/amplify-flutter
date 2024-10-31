// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity_provider.model.invalid_user_pool_configuration_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_user_pool_configuration_exception.g.dart';

/// This exception is thrown when the user pool configuration is not valid.
abstract class InvalidUserPoolConfigurationException
    with
        _i1.AWSEquatable<InvalidUserPoolConfigurationException>
    implements
        Built<InvalidUserPoolConfigurationException,
            InvalidUserPoolConfigurationExceptionBuilder>,
        _i2.SmithyHttpException {
  /// This exception is thrown when the user pool configuration is not valid.
  factory InvalidUserPoolConfigurationException({String? message}) {
    return _$InvalidUserPoolConfigurationException._(message: message);
  }

  /// This exception is thrown when the user pool configuration is not valid.
  factory InvalidUserPoolConfigurationException.build(
      [void Function(InvalidUserPoolConfigurationExceptionBuilder)
          updates]) = _$InvalidUserPoolConfigurationException;

  const InvalidUserPoolConfigurationException._();

  /// Constructs a [InvalidUserPoolConfigurationException] from a [payload] and [response].
  factory InvalidUserPoolConfigurationException.fromResponse(
    InvalidUserPoolConfigurationException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<InvalidUserPoolConfigurationException>>
      serializers = [
    InvalidUserPoolConfigurationExceptionAwsJson11Serializer()
  ];

  /// The message returned when the user pool configuration is not valid.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cognitoidentityprovider',
        shape: 'InvalidUserPoolConfigurationException',
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
        newBuiltValueToStringHelper('InvalidUserPoolConfigurationException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class InvalidUserPoolConfigurationExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<InvalidUserPoolConfigurationException> {
  const InvalidUserPoolConfigurationExceptionAwsJson11Serializer()
      : super('InvalidUserPoolConfigurationException');

  @override
  Iterable<Type> get types => const [
        InvalidUserPoolConfigurationException,
        _$InvalidUserPoolConfigurationException,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  InvalidUserPoolConfigurationException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidUserPoolConfigurationExceptionBuilder();
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
    InvalidUserPoolConfigurationException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InvalidUserPoolConfigurationException(:message) = object;
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
