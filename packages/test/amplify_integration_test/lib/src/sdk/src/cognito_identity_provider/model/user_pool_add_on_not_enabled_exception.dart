// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_integration_test.cognito_identity_provider.model.user_pool_add_on_not_enabled_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'user_pool_add_on_not_enabled_exception.g.dart';

/// This exception is thrown when user pool add-ons aren't enabled.
abstract class UserPoolAddOnNotEnabledException
    with
        _i1.AWSEquatable<UserPoolAddOnNotEnabledException>
    implements
        Built<UserPoolAddOnNotEnabledException,
            UserPoolAddOnNotEnabledExceptionBuilder>,
        _i2.SmithyHttpException {
  /// This exception is thrown when user pool add-ons aren't enabled.
  factory UserPoolAddOnNotEnabledException({String? message}) {
    return _$UserPoolAddOnNotEnabledException._(message: message);
  }

  /// This exception is thrown when user pool add-ons aren't enabled.
  factory UserPoolAddOnNotEnabledException.build(
          [void Function(UserPoolAddOnNotEnabledExceptionBuilder) updates]) =
      _$UserPoolAddOnNotEnabledException;

  const UserPoolAddOnNotEnabledException._();

  /// Constructs a [UserPoolAddOnNotEnabledException] from a [payload] and [response].
  factory UserPoolAddOnNotEnabledException.fromResponse(
    UserPoolAddOnNotEnabledException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    UserPoolAddOnNotEnabledExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserPoolAddOnNotEnabledExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cognitoidentityprovider',
        shape: 'UserPoolAddOnNotEnabledException',
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
        newBuiltValueToStringHelper('UserPoolAddOnNotEnabledException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class UserPoolAddOnNotEnabledExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<UserPoolAddOnNotEnabledException> {
  const UserPoolAddOnNotEnabledExceptionAwsJson11Serializer()
      : super('UserPoolAddOnNotEnabledException');

  @override
  Iterable<Type> get types => const [
        UserPoolAddOnNotEnabledException,
        _$UserPoolAddOnNotEnabledException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  UserPoolAddOnNotEnabledException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserPoolAddOnNotEnabledExceptionBuilder();
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
    final payload = (object as UserPoolAddOnNotEnabledException);
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
