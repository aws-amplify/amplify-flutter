// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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

  static const List<_i2.SmithySerializer> serializers = [
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
    final helper = newBuiltValueToStringHelper('PasswordPolicy');
    helper.add(
      'minimumPasswordLength',
      minimumPasswordLength,
    );
    helper.add(
      'requireSymbols',
      requireSymbols,
    );
    helper.add(
      'requireNumbers',
      requireNumbers,
    );
    helper.add(
      'requireUppercaseCharacters',
      requireUppercaseCharacters,
    );
    helper.add(
      'requireLowercaseCharacters',
      requireLowercaseCharacters,
    );
    helper.add(
      'allowUsersToChangePassword',
      allowUsersToChangePassword,
    );
    helper.add(
      'expirePasswords',
      expirePasswords,
    );
    helper.add(
      'maxPasswordAge',
      maxPasswordAge,
    );
    helper.add(
      'passwordReusePrevention',
      passwordReusePrevention,
    );
    helper.add(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'MinimumPasswordLength':
          if (value != null) {
            result.minimumPasswordLength = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'RequireSymbols':
          result.requireSymbols = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'RequireNumbers':
          result.requireNumbers = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'RequireUppercaseCharacters':
          result.requireUppercaseCharacters = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'RequireLowercaseCharacters':
          result.requireLowercaseCharacters = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'AllowUsersToChangePassword':
          result.allowUsersToChangePassword = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'ExpirePasswords':
          result.expirePasswords = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'MaxPasswordAge':
          if (value != null) {
            result.maxPasswordAge = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'PasswordReusePrevention':
          if (value != null) {
            result.passwordReusePrevention = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'HardExpiry':
          if (value != null) {
            result.hardExpiry = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
    final payload = (object as PasswordPolicy);
    final result = <Object?>[
      const _i2.XmlElementName(
        'PasswordPolicyResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.minimumPasswordLength != null) {
      result
        ..add(const _i2.XmlElementName('MinimumPasswordLength'))
        ..add(serializers.serialize(
          payload.minimumPasswordLength!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    result
      ..add(const _i2.XmlElementName('RequireSymbols'))
      ..add(serializers.serialize(
        payload.requireSymbols,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i2.XmlElementName('RequireNumbers'))
      ..add(serializers.serialize(
        payload.requireNumbers,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i2.XmlElementName('RequireUppercaseCharacters'))
      ..add(serializers.serialize(
        payload.requireUppercaseCharacters,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i2.XmlElementName('RequireLowercaseCharacters'))
      ..add(serializers.serialize(
        payload.requireLowercaseCharacters,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i2.XmlElementName('AllowUsersToChangePassword'))
      ..add(serializers.serialize(
        payload.allowUsersToChangePassword,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i2.XmlElementName('ExpirePasswords'))
      ..add(serializers.serialize(
        payload.expirePasswords,
        specifiedType: const FullType(bool),
      ));
    if (payload.maxPasswordAge != null) {
      result
        ..add(const _i2.XmlElementName('MaxPasswordAge'))
        ..add(serializers.serialize(
          payload.maxPasswordAge!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.passwordReusePrevention != null) {
      result
        ..add(const _i2.XmlElementName('PasswordReusePrevention'))
        ..add(serializers.serialize(
          payload.passwordReusePrevention!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.hardExpiry != null) {
      result
        ..add(const _i2.XmlElementName('HardExpiry'))
        ..add(serializers.serialize(
          payload.hardExpiry!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result;
  }
}
