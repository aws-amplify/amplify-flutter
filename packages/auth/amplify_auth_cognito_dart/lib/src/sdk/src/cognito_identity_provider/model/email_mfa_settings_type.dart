// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity_provider.model.email_mfa_settings_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'email_mfa_settings_type.g.dart';

/// User preferences for multi-factor authentication with email messages. Activates or deactivates email MFA and sets it as the preferred MFA method when multiple methods are available. To activate this setting, [advanced security features](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html) must be active in your user pool.
abstract class EmailMfaSettingsType
    with _i1.AWSEquatable<EmailMfaSettingsType>
    implements Built<EmailMfaSettingsType, EmailMfaSettingsTypeBuilder> {
  /// User preferences for multi-factor authentication with email messages. Activates or deactivates email MFA and sets it as the preferred MFA method when multiple methods are available. To activate this setting, [advanced security features](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html) must be active in your user pool.
  factory EmailMfaSettingsType({
    bool? enabled,
    bool? preferredMfa,
  }) {
    enabled ??= false;
    preferredMfa ??= false;
    return _$EmailMfaSettingsType._(
      enabled: enabled,
      preferredMfa: preferredMfa,
    );
  }

  /// User preferences for multi-factor authentication with email messages. Activates or deactivates email MFA and sets it as the preferred MFA method when multiple methods are available. To activate this setting, [advanced security features](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html) must be active in your user pool.
  factory EmailMfaSettingsType.build(
          [void Function(EmailMfaSettingsTypeBuilder) updates]) =
      _$EmailMfaSettingsType;

  const EmailMfaSettingsType._();

  static const List<_i2.SmithySerializer<EmailMfaSettingsType>> serializers = [
    EmailMfaSettingsTypeAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EmailMfaSettingsTypeBuilder b) {
    b
      ..enabled = false
      ..preferredMfa = false;
  }

  /// Specifies whether email message MFA is active for a user. When the value of this parameter is `Enabled`, the user will be prompted for MFA during all sign-in attempts, unless device tracking is turned on and the device has been trusted.
  bool get enabled;

  /// Specifies whether email message MFA is the user's preferred method.
  bool get preferredMfa;
  @override
  List<Object?> get props => [
        enabled,
        preferredMfa,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EmailMfaSettingsType')
      ..add(
        'enabled',
        enabled,
      )
      ..add(
        'preferredMfa',
        preferredMfa,
      );
    return helper.toString();
  }
}

class EmailMfaSettingsTypeAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<EmailMfaSettingsType> {
  const EmailMfaSettingsTypeAwsJson11Serializer()
      : super('EmailMfaSettingsType');

  @override
  Iterable<Type> get types => const [
        EmailMfaSettingsType,
        _$EmailMfaSettingsType,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  EmailMfaSettingsType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmailMfaSettingsTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Enabled':
          result.enabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'PreferredMfa':
          result.preferredMfa = (serializers.deserialize(
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
    EmailMfaSettingsType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final EmailMfaSettingsType(:enabled, :preferredMfa) = object;
    result$.addAll([
      'Enabled',
      serializers.serialize(
        enabled,
        specifiedType: const FullType(bool),
      ),
      'PreferredMfa',
      serializers.serialize(
        preferredMfa,
        specifiedType: const FullType(bool),
      ),
    ]);
    return result$;
  }
}
