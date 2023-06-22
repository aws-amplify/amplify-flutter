// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.login_profile; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'login_profile.g.dart';

/// Contains the user name and password create date for a user.
///
/// This data type is used as a response element in the CreateLoginProfile and GetLoginProfile operations.
abstract class LoginProfile
    with _i1.AWSEquatable<LoginProfile>
    implements Built<LoginProfile, LoginProfileBuilder> {
  /// Contains the user name and password create date for a user.
  ///
  /// This data type is used as a response element in the CreateLoginProfile and GetLoginProfile operations.
  factory LoginProfile({
    required String userName,
    required DateTime createDate,
    bool? passwordResetRequired,
  }) {
    passwordResetRequired ??= false;
    return _$LoginProfile._(
      userName: userName,
      createDate: createDate,
      passwordResetRequired: passwordResetRequired,
    );
  }

  /// Contains the user name and password create date for a user.
  ///
  /// This data type is used as a response element in the CreateLoginProfile and GetLoginProfile operations.
  factory LoginProfile.build([void Function(LoginProfileBuilder) updates]) =
      _$LoginProfile;

  const LoginProfile._();

  static const List<_i2.SmithySerializer<LoginProfile>> serializers = [
    LoginProfileAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LoginProfileBuilder b) {
    b.passwordResetRequired = false;
  }

  /// The name of the user, which can be used for signing in to the Amazon Web Services Management Console.
  String get userName;

  /// The date when the password for the user was created.
  DateTime get createDate;

  /// Specifies whether the user is required to set a new password on next sign-in.
  bool get passwordResetRequired;
  @override
  List<Object?> get props => [
        userName,
        createDate,
        passwordResetRequired,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LoginProfile')
      ..add(
        'userName',
        userName,
      )
      ..add(
        'createDate',
        createDate,
      )
      ..add(
        'passwordResetRequired',
        passwordResetRequired,
      );
    return helper.toString();
  }
}

class LoginProfileAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<LoginProfile> {
  const LoginProfileAwsQuerySerializer() : super('LoginProfile');

  @override
  Iterable<Type> get types => const [
        LoginProfile,
        _$LoginProfile,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  LoginProfile deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoginProfileBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'UserName':
          result.userName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CreateDate':
          result.createDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'PasswordResetRequired':
          result.passwordResetRequired = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LoginProfile object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LoginProfileResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final LoginProfile(:userName, :createDate, :passwordResetRequired) = object;
    result$
      ..add(const _i2.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('CreateDate'))
      ..add(serializers.serialize(
        createDate,
        specifiedType: const FullType.nullable(DateTime),
      ));
    result$
      ..add(const _i2.XmlElementName('PasswordResetRequired'))
      ..add(serializers.serialize(
        passwordResetRequired,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
