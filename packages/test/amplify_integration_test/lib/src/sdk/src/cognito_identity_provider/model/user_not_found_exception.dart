// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_integration_test.cognito_identity_provider.model.user_not_found_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'user_not_found_exception.g.dart';

/// This exception is thrown when a user isn't found.
abstract class UserNotFoundException
    with _i1.AWSEquatable<UserNotFoundException>
    implements
        Built<UserNotFoundException, UserNotFoundExceptionBuilder>,
        _i2.SmithyHttpException {
  /// This exception is thrown when a user isn't found.
  factory UserNotFoundException({String? message}) {
    return _$UserNotFoundException._(message: message);
  }

  /// This exception is thrown when a user isn't found.
  factory UserNotFoundException.build(
          [void Function(UserNotFoundExceptionBuilder) updates]) =
      _$UserNotFoundException;

  const UserNotFoundException._();

  /// Constructs a [UserNotFoundException] from a [payload] and [response].
  factory UserNotFoundException.fromResponse(
    UserNotFoundException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<UserNotFoundException>> serializers = [
    UserNotFoundExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserNotFoundExceptionBuilder b) {}

  /// The message returned when a user isn't found.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cognitoidentityprovider',
        shape: 'UserNotFoundException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 404;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserNotFoundException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class UserNotFoundExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<UserNotFoundException> {
  const UserNotFoundExceptionAwsJson11Serializer()
      : super('UserNotFoundException');

  @override
  Iterable<Type> get types => const [
        UserNotFoundException,
        _$UserNotFoundException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  UserNotFoundException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserNotFoundExceptionBuilder();
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
    UserNotFoundException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UserNotFoundException(:message) = object;
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
