// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.update_account_password_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'update_account_password_policy_request.g.dart';

abstract class UpdateAccountPasswordPolicyRequest
    with
        _i1.HttpInput<UpdateAccountPasswordPolicyRequest>,
        _i2.AWSEquatable<UpdateAccountPasswordPolicyRequest>
    implements
        Built<UpdateAccountPasswordPolicyRequest,
            UpdateAccountPasswordPolicyRequestBuilder> {
  factory UpdateAccountPasswordPolicyRequest({
    int? minimumPasswordLength,
    bool? requireSymbols,
    bool? requireNumbers,
    bool? requireUppercaseCharacters,
    bool? requireLowercaseCharacters,
    bool? allowUsersToChangePassword,
    int? maxPasswordAge,
    int? passwordReusePrevention,
    bool? hardExpiry,
  }) {
    requireSymbols ??= false;
    requireNumbers ??= false;
    requireUppercaseCharacters ??= false;
    requireLowercaseCharacters ??= false;
    allowUsersToChangePassword ??= false;
    return _$UpdateAccountPasswordPolicyRequest._(
      minimumPasswordLength: minimumPasswordLength,
      requireSymbols: requireSymbols,
      requireNumbers: requireNumbers,
      requireUppercaseCharacters: requireUppercaseCharacters,
      requireLowercaseCharacters: requireLowercaseCharacters,
      allowUsersToChangePassword: allowUsersToChangePassword,
      maxPasswordAge: maxPasswordAge,
      passwordReusePrevention: passwordReusePrevention,
      hardExpiry: hardExpiry,
    );
  }

  factory UpdateAccountPasswordPolicyRequest.build(
          [void Function(UpdateAccountPasswordPolicyRequestBuilder) updates]) =
      _$UpdateAccountPasswordPolicyRequest;

  const UpdateAccountPasswordPolicyRequest._();

  factory UpdateAccountPasswordPolicyRequest.fromRequest(
    UpdateAccountPasswordPolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateAccountPasswordPolicyRequest>>
      serializers = [UpdateAccountPasswordPolicyRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateAccountPasswordPolicyRequestBuilder b) {
    b.requireSymbols = false;
    b.requireNumbers = false;
    b.requireUppercaseCharacters = false;
    b.requireLowercaseCharacters = false;
    b.allowUsersToChangePassword = false;
  }

  /// The minimum number of characters allowed in an IAM user password.
  ///
  /// If you do not specify a value for this parameter, then the operation uses the default value of `6`.
  int? get minimumPasswordLength;

  /// Specifies whether IAM user passwords must contain at least one of the following non-alphanumeric characters:
  ///
  /// ! @ # $ % ^ & * ( ) _ + - = \[ \] { } | '
  ///
  /// If you do not specify a value for this parameter, then the operation uses the default value of `false`. The result is that passwords do not require at least one symbol character.
  bool get requireSymbols;

  /// Specifies whether IAM user passwords must contain at least one numeric character (0 to 9).
  ///
  /// If you do not specify a value for this parameter, then the operation uses the default value of `false`. The result is that passwords do not require at least one numeric character.
  bool get requireNumbers;

  /// Specifies whether IAM user passwords must contain at least one uppercase character from the ISO basic Latin alphabet (A to Z).
  ///
  /// If you do not specify a value for this parameter, then the operation uses the default value of `false`. The result is that passwords do not require at least one uppercase character.
  bool get requireUppercaseCharacters;

  /// Specifies whether IAM user passwords must contain at least one lowercase character from the ISO basic Latin alphabet (a to z).
  ///
  /// If you do not specify a value for this parameter, then the operation uses the default value of `false`. The result is that passwords do not require at least one lowercase character.
  bool get requireLowercaseCharacters;

  /// Allows all IAM users in your account to use the Amazon Web Services Management Console to change their own passwords. For more information, see [Permitting IAM users to change their own passwords](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_enable-user-change.html) in the _IAM User Guide_.
  ///
  /// If you do not specify a value for this parameter, then the operation uses the default value of `false`. The result is that IAM users in the account do not automatically have permissions to change their own password.
  bool get allowUsersToChangePassword;

  /// The number of days that an IAM user password is valid.
  ///
  /// If you do not specify a value for this parameter, then the operation uses the default value of `0`. The result is that IAM user passwords never expire.
  int? get maxPasswordAge;

  /// Specifies the number of previous passwords that IAM users are prevented from reusing.
  ///
  /// If you do not specify a value for this parameter, then the operation uses the default value of `0`. The result is that IAM users are not prevented from reusing previous passwords.
  int? get passwordReusePrevention;

  /// Prevents IAM users who are accessing the account via the Amazon Web Services Management Console from setting a new console password after their password has expired. The IAM user cannot access the console until an administrator resets the password.
  ///
  /// If you do not specify a value for this parameter, then the operation uses the default value of `false`. The result is that IAM users can change their passwords after they expire and continue to sign in as the user.
  ///
  /// In the Amazon Web Services Management Console, the custom password policy option **Allow users to change their own password** gives IAM users permissions to `iam:ChangePassword` for only their user and to the `iam:GetAccountPasswordPolicy` action. This option does not attach a permissions policy to each user, rather the permissions are applied at the account-level for all users by IAM. IAM users with `iam:ChangePassword` permission and active access keys can reset their own expired console password using the CLI or API.
  bool? get hardExpiry;
  @override
  UpdateAccountPasswordPolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        minimumPasswordLength,
        requireSymbols,
        requireNumbers,
        requireUppercaseCharacters,
        requireLowercaseCharacters,
        allowUsersToChangePassword,
        maxPasswordAge,
        passwordReusePrevention,
        hardExpiry,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateAccountPasswordPolicyRequest')
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

class UpdateAccountPasswordPolicyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<UpdateAccountPasswordPolicyRequest> {
  const UpdateAccountPasswordPolicyRequestAwsQuerySerializer()
      : super('UpdateAccountPasswordPolicyRequest');

  @override
  Iterable<Type> get types => const [
        UpdateAccountPasswordPolicyRequest,
        _$UpdateAccountPasswordPolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UpdateAccountPasswordPolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateAccountPasswordPolicyRequestBuilder();
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
    UpdateAccountPasswordPolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UpdateAccountPasswordPolicyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UpdateAccountPasswordPolicyRequest(
      :minimumPasswordLength,
      :requireSymbols,
      :requireNumbers,
      :requireUppercaseCharacters,
      :requireLowercaseCharacters,
      :allowUsersToChangePassword,
      :maxPasswordAge,
      :passwordReusePrevention,
      :hardExpiry
    ) = object;
    if (minimumPasswordLength != null) {
      result$
        ..add(const _i1.XmlElementName('MinimumPasswordLength'))
        ..add(serializers.serialize(
          minimumPasswordLength,
          specifiedType: const FullType.nullable(int),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('RequireSymbols'))
      ..add(serializers.serialize(
        requireSymbols,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('RequireNumbers'))
      ..add(serializers.serialize(
        requireNumbers,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('RequireUppercaseCharacters'))
      ..add(serializers.serialize(
        requireUppercaseCharacters,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('RequireLowercaseCharacters'))
      ..add(serializers.serialize(
        requireLowercaseCharacters,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('AllowUsersToChangePassword'))
      ..add(serializers.serialize(
        allowUsersToChangePassword,
        specifiedType: const FullType(bool),
      ));
    if (maxPasswordAge != null) {
      result$
        ..add(const _i1.XmlElementName('MaxPasswordAge'))
        ..add(serializers.serialize(
          maxPasswordAge,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (passwordReusePrevention != null) {
      result$
        ..add(const _i1.XmlElementName('PasswordReusePrevention'))
        ..add(serializers.serialize(
          passwordReusePrevention,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (hardExpiry != null) {
      result$
        ..add(const _i1.XmlElementName('HardExpiry'))
        ..add(serializers.serialize(
          hardExpiry,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result$;
  }
}
