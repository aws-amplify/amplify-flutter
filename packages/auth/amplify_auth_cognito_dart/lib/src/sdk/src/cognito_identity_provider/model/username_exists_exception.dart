// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library amplify_auth_cognito_dart.cognito_identity_provider.model.username_exists_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'username_exists_exception.g.dart';

/// This exception is thrown when Amazon Cognito encounters a user name that already exists in the user pool.
abstract class UsernameExistsException
    with _i1.AWSEquatable<UsernameExistsException>
    implements
        Built<UsernameExistsException, UsernameExistsExceptionBuilder>,
        _i2.SmithyHttpException {
  /// This exception is thrown when Amazon Cognito encounters a user name that already exists in the user pool.
  factory UsernameExistsException({String? message}) {
    return _$UsernameExistsException._(message: message);
  }

  /// This exception is thrown when Amazon Cognito encounters a user name that already exists in the user pool.
  factory UsernameExistsException.build([
    void Function(UsernameExistsExceptionBuilder) updates,
  ]) = _$UsernameExistsException;

  const UsernameExistsException._();

  /// Constructs a [UsernameExistsException] from a [payload] and [response].
  factory UsernameExistsException.fromResponse(
    UsernameExistsException payload,
    _i1.AWSBaseHttpResponse response,
  ) => payload.rebuild((b) {
    b.headers = response.headers;
  });

  static const List<_i2.SmithySerializer<UsernameExistsException>> serializers =
      [UsernameExistsExceptionAwsJson11Serializer()];

  /// The message returned when Amazon Cognito throws a user name exists exception.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
    namespace: 'com.amazonaws.cognitoidentityprovider',
    shape: 'UsernameExistsException',
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
    final helper = newBuiltValueToStringHelper('UsernameExistsException')
      ..add('message', message);
    return helper.toString();
  }
}

class UsernameExistsExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<UsernameExistsException> {
  const UsernameExistsExceptionAwsJson11Serializer()
    : super('UsernameExistsException');

  @override
  Iterable<Type> get types => const [
    UsernameExistsException,
    _$UsernameExistsException,
  ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  UsernameExistsException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsernameExistsExceptionBuilder();
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
          result.message =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UsernameExistsException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UsernameExistsException(:message) = object;
    if (message != null) {
      result$
        ..add('message')
        ..add(
          serializers.serialize(message, specifiedType: const FullType(String)),
        );
    }
    return result$;
  }
}
