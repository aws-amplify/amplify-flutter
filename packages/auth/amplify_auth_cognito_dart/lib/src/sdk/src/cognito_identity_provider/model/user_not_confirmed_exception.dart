// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.user_not_confirmed_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'user_not_confirmed_exception.g.dart';

/// This exception is thrown when a user isn't confirmed successfully.
abstract class UserNotConfirmedException
    with _i1.AWSEquatable<UserNotConfirmedException>
    implements
        Built<UserNotConfirmedException, UserNotConfirmedExceptionBuilder>,
        _i2.SmithyHttpException {
  /// This exception is thrown when a user isn't confirmed successfully.
  factory UserNotConfirmedException({String? message}) {
    return _$UserNotConfirmedException._(message: message);
  }

  /// This exception is thrown when a user isn't confirmed successfully.
  factory UserNotConfirmedException.build(
          [void Function(UserNotConfirmedExceptionBuilder) updates]) =
      _$UserNotConfirmedException;

  const UserNotConfirmedException._();

  /// Constructs a [UserNotConfirmedException] from a [payload] and [response].
  factory UserNotConfirmedException.fromResponse(
    UserNotConfirmedException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    UserNotConfirmedExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserNotConfirmedExceptionBuilder b) {}

  /// The message returned when a user isn't confirmed successfully.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cognitoidentityprovider',
        shape: 'UserNotConfirmedException',
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
    final helper = newBuiltValueToStringHelper('UserNotConfirmedException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class UserNotConfirmedExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<UserNotConfirmedException> {
  const UserNotConfirmedExceptionAwsJson11Serializer()
      : super('UserNotConfirmedException');

  @override
  Iterable<Type> get types => const [
        UserNotConfirmedException,
        _$UserNotConfirmedException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  UserNotConfirmedException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserNotConfirmedExceptionBuilder();
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
    final payload = (object as UserNotConfirmedException);
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
