// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity_provider.model.sms_mfa_settings_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'sms_mfa_settings_type.g.dart';

/// The type used for enabling SMS multi-factor authentication (MFA) at the user level. Phone numbers don't need to be verified to be used for SMS MFA. If an MFA type is activated for a user, the user will be prompted for MFA during all sign-in attempts, unless device tracking is turned on and the device has been trusted. If you would like MFA to be applied selectively based on the assessed risk level of sign-in attempts, deactivate MFA for users and turn on Adaptive Authentication for the user pool.
abstract class SmsMfaSettingsType
    with _i1.AWSEquatable<SmsMfaSettingsType>
    implements Built<SmsMfaSettingsType, SmsMfaSettingsTypeBuilder> {
  /// The type used for enabling SMS multi-factor authentication (MFA) at the user level. Phone numbers don't need to be verified to be used for SMS MFA. If an MFA type is activated for a user, the user will be prompted for MFA during all sign-in attempts, unless device tracking is turned on and the device has been trusted. If you would like MFA to be applied selectively based on the assessed risk level of sign-in attempts, deactivate MFA for users and turn on Adaptive Authentication for the user pool.
  factory SmsMfaSettingsType({
    bool? enabled,
    bool? preferredMfa,
  }) {
    enabled ??= false;
    preferredMfa ??= false;
    return _$SmsMfaSettingsType._(
      enabled: enabled,
      preferredMfa: preferredMfa,
    );
  }

  /// The type used for enabling SMS multi-factor authentication (MFA) at the user level. Phone numbers don't need to be verified to be used for SMS MFA. If an MFA type is activated for a user, the user will be prompted for MFA during all sign-in attempts, unless device tracking is turned on and the device has been trusted. If you would like MFA to be applied selectively based on the assessed risk level of sign-in attempts, deactivate MFA for users and turn on Adaptive Authentication for the user pool.
  factory SmsMfaSettingsType.build(
          [void Function(SmsMfaSettingsTypeBuilder) updates]) =
      _$SmsMfaSettingsType;

  const SmsMfaSettingsType._();

  static const List<_i2.SmithySerializer<SmsMfaSettingsType>> serializers = [
    SmsMfaSettingsTypeAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SmsMfaSettingsTypeBuilder b) {
    b
      ..enabled = false
      ..preferredMfa = false;
  }

  /// Specifies whether SMS text message MFA is activated. If an MFA type is activated for a user, the user will be prompted for MFA during all sign-in attempts, unless device tracking is turned on and the device has been trusted.
  bool get enabled;

  /// Specifies whether SMS is the preferred MFA method.
  bool get preferredMfa;
  @override
  List<Object?> get props => [
        enabled,
        preferredMfa,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SmsMfaSettingsType')
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

class SmsMfaSettingsTypeAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<SmsMfaSettingsType> {
  const SmsMfaSettingsTypeAwsJson11Serializer() : super('SmsMfaSettingsType');

  @override
  Iterable<Type> get types => const [
        SmsMfaSettingsType,
        _$SmsMfaSettingsType,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  SmsMfaSettingsType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SmsMfaSettingsTypeBuilder();
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
    SmsMfaSettingsType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final SmsMfaSettingsType(:enabled, :preferredMfa) = object;
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
