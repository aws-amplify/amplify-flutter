// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.password_policy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'password_policy.g.dart';

/// Contains information about the account password policy.
///
/// This data type is used as a response element in the GetAccountPasswordPolicy operation.
abstract class PasswordPolicy
    with _i1.AWSEquatable<PasswordPolicy>
    implements Built<PasswordPolicy, PasswordPolicyBuilder> {
  /// Contains information about the account password policy.
  ///
  /// This data type is used as a response element in the GetAccountPasswordPolicy operation.
  factory PasswordPolicy({
    int? minimumPasswordLength,
    bool? requireSymbols,
    bool? requireNumbers,
    bool? requireUppercaseCharacters,
    bool? requireLowercaseCharacters,
    bool? allowUsersToChangePassword,
    bool? expirePasswords,
    int? maxPasswordAge,
    int? passwordReusePrevention,
    bool? hardExpiry,
  }) {
    requireSymbols ??= false;
    requireNumbers ??= false;
    requireUppercaseCharacters ??= false;
    requireLowercaseCharacters ??= false;
    allowUsersToChangePassword ??= false;
    expirePasswords ??= false;
    return _$PasswordPolicy._(
      minimumPasswordLength: minimumPasswordLength,
      requireSymbols: requireSymbols,
      requireNumbers: requireNumbers,
      requireUppercaseCharacters: requireUppercaseCharacters,
      requireLowercaseCharacters: requireLowercaseCharacters,
      allowUsersToChangePassword: allowUsersToChangePassword,
      expirePasswords: expirePasswords,
      maxPasswordAge: maxPasswordAge,
      passwordReusePrevention: passwordReusePrevention,
      hardExpiry: hardExpiry,
    );
  }

  /// Contains information about the account password policy.
  ///
  /// This data type is used as a response element in the GetAccountPasswordPolicy operation.
  factory PasswordPolicy.build([void Function(PasswordPolicyBuilder) updates]) =
      _$PasswordPolicy;

  const PasswordPolicy._();

  static const List<_i2.SmithySerializer<PasswordPolicy>> serializers = [
    PasswordPolicyAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PasswordPolicyBuilder b) {
    b.requireSymbols = false;
    b.requireNumbers = false;
    b.requireUppercaseCharacters = false;
    b.requireLowercaseCharacters = false;
    b.allowUsersToChangePassword = false;
    b.expirePasswords = false;
  }

  /// Minimum length to require for IAM user passwords.
  int? get minimumPasswordLength;

  /// Specifies whether IAM user passwords must contain at least one of the following symbols:
  ///
  /// ! @ # $ % ^ & * ( ) _ + - = \[ \] { } | '
  bool get requireSymbols;

  /// Specifies whether IAM user passwords must contain at least one numeric character (0 to 9).
  bool get requireNumbers;

  /// Specifies whether IAM user passwords must contain at least one uppercase character (A to Z).
  bool get requireUppercaseCharacters;

  /// Specifies whether IAM user passwords must contain at least one lowercase character (a to z).
  bool get requireLowercaseCharacters;

  /// Specifies whether IAM users are allowed to change their own password. Gives IAM users permissions to `iam:ChangePassword` for only their user and to the `iam:GetAccountPasswordPolicy` action. This option does not attach a permissions policy to each user, rather the permissions are applied at the account-level for all users by IAM.
  bool get allowUsersToChangePassword;

  /// Indicates whether passwords in the account expire. Returns true if `MaxPasswordAge` contains a value greater than 0. Returns false if MaxPasswordAge is 0 or not present.
  bool get expirePasswords;

  /// The number of days that an IAM user password is valid.
  int? get maxPasswordAge;

  /// Specifies the number of previous passwords that IAM users are prevented from reusing.
  int? get passwordReusePrevention;

  /// Specifies whether IAM users are prevented from setting a new password via the Amazon Web Services Management Console after their password has expired. The IAM user cannot access the console until an administrator resets the password. IAM users with `iam:ChangePassword` permission and active access keys can reset their own expired console password using the CLI or API.
  bool? get hardExpiry;
  @override
  List<Object?> get props => [
        minimumPasswordLength,
        requireSymbols,
        requireNumbers,
        requireUppercaseCharacters,
        requireLowercaseCharacters,
        allowUsersToChangePassword,
        expirePasswords,
        maxPasswordAge,
        passwordReusePrevention,
        hardExpiry,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PasswordPolicy')
      ..add(
        'minimumPasswordLength',
        minimumPasswordLength,
      )
      ..add(
        'requireSymbols',
        requireSymbols,
      )
      ..add(
        'requireNumbers',
        requireNumbers,
      )
      ..add(
        'requireUppercaseCharacters',
        requireUppercaseCharacters,
      )
      ..add(
        'requireLowercaseCharacters',
        requireLowercaseCharacters,
      )
      ..add(
        'allowUsersToChangePassword',
        allowUsersToChangePassword,
      )
      ..add(
        'expirePasswords',
        expirePasswords,
      )
      ..add(
        'maxPasswordAge',
        maxPasswordAge,
      )
      ..add(
        'passwordReusePrevention',
        passwordReusePrevention,
      )
      ..add(
        'hardExpiry',
        hardExpiry,
      );
    return helper.toString();
  }
}

class PasswordPolicyAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<PasswordPolicy> {
  const PasswordPolicyAwsQuerySerializer() : super('PasswordPolicy');

  @override
  Iterable<Type> get types => const [
        PasswordPolicy,
        _$PasswordPolicy,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  PasswordPolicy deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PasswordPolicyBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'MinimumPasswordLength':
          result.minimumPasswordLength = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'RequireSymbols':
          result.requireSymbols = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'RequireNumbers':
          result.requireNumbers = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'RequireUppercaseCharacters':
          result.requireUppercaseCharacters = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'RequireLowercaseCharacters':
          result.requireLowercaseCharacters = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'AllowUsersToChangePassword':
          result.allowUsersToChangePassword = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ExpirePasswords':
          result.expirePasswords = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'MaxPasswordAge':
          result.maxPasswordAge = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'PasswordReusePrevention':
          result.passwordReusePrevention = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'HardExpiry':
          result.hardExpiry = (serializers.deserialize(
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
    PasswordPolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PasswordPolicyResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final PasswordPolicy(
      :minimumPasswordLength,
      :requireSymbols,
      :requireNumbers,
      :requireUppercaseCharacters,
      :requireLowercaseCharacters,
      :allowUsersToChangePassword,
      :expirePasswords,
      :maxPasswordAge,
      :passwordReusePrevention,
      :hardExpiry
    ) = object;
    if (minimumPasswordLength != null) {
      result$
        ..add(const _i2.XmlElementName('MinimumPasswordLength'))
        ..add(serializers.serialize(
          minimumPasswordLength,
          specifiedType: const FullType.nullable(int),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('RequireSymbols'))
      ..add(serializers.serialize(
        requireSymbols,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i2.XmlElementName('RequireNumbers'))
      ..add(serializers.serialize(
        requireNumbers,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i2.XmlElementName('RequireUppercaseCharacters'))
      ..add(serializers.serialize(
        requireUppercaseCharacters,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i2.XmlElementName('RequireLowercaseCharacters'))
      ..add(serializers.serialize(
        requireLowercaseCharacters,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i2.XmlElementName('AllowUsersToChangePassword'))
      ..add(serializers.serialize(
        allowUsersToChangePassword,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i2.XmlElementName('ExpirePasswords'))
      ..add(serializers.serialize(
        expirePasswords,
        specifiedType: const FullType(bool),
      ));
    if (maxPasswordAge != null) {
      result$
        ..add(const _i2.XmlElementName('MaxPasswordAge'))
        ..add(serializers.serialize(
          maxPasswordAge,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (passwordReusePrevention != null) {
      result$
        ..add(const _i2.XmlElementName('PasswordReusePrevention'))
        ..add(serializers.serialize(
          passwordReusePrevention,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (hardExpiry != null) {
      result$
        ..add(const _i2.XmlElementName('HardExpiry'))
        ..add(serializers.serialize(
          hardExpiry,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result$;
  }
}
