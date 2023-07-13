// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_core.amplify_configuration_service.model.aws_auth_password_protection_settings; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/amplify_core.dart' as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'aws_auth_password_protection_settings.g.dart';

abstract class AWSAuthPasswordProtectionSettings
    with
        _i1.AWSEquatable<AWSAuthPasswordProtectionSettings>
    implements
        Built<AWSAuthPasswordProtectionSettings,
            AWSAuthPasswordProtectionSettingsBuilder> {
  factory AWSAuthPasswordProtectionSettings({
    int? passwordPolicyMinLength,
    List<_i2.PasswordPolicyCharacters>? passwordPolicyCharacters,
  }) {
    return _$AWSAuthPasswordProtectionSettings._(
      passwordPolicyMinLength: passwordPolicyMinLength,
      passwordPolicyCharacters: passwordPolicyCharacters == null
          ? null
          : _i3.BuiltList(passwordPolicyCharacters),
    );
  }

  factory AWSAuthPasswordProtectionSettings.build(
          [void Function(AWSAuthPasswordProtectionSettingsBuilder) updates]) =
      _$AWSAuthPasswordProtectionSettings;

  const AWSAuthPasswordProtectionSettings._();

  static const List<_i4.SmithySerializer<AWSAuthPasswordProtectionSettings>>
      serializers = [AWSAuthPasswordProtectionSettingsSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AWSAuthPasswordProtectionSettingsBuilder b) {}
  int? get passwordPolicyMinLength;
  _i3.BuiltList<_i2.PasswordPolicyCharacters>? get passwordPolicyCharacters;
  @override
  List<Object?> get props => [
        passwordPolicyMinLength,
        passwordPolicyCharacters,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AWSAuthPasswordProtectionSettings')
          ..add(
            'passwordPolicyMinLength',
            passwordPolicyMinLength,
          )
          ..add(
            'passwordPolicyCharacters',
            passwordPolicyCharacters,
          );
    return helper.toString();
  }
}

class AWSAuthPasswordProtectionSettingsSerializer
    extends _i4.StructuredSmithySerializer<AWSAuthPasswordProtectionSettings> {
  const AWSAuthPasswordProtectionSettingsSerializer()
      : super('AWSAuthPasswordProtectionSettings');

  @override
  Iterable<Type> get types => const [
        AWSAuthPasswordProtectionSettings,
        _$AWSAuthPasswordProtectionSettings,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSAuthPasswordProtectionSettings deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AWSAuthPasswordProtectionSettingsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'passwordPolicyCharacters':
          result.passwordPolicyCharacters.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.PasswordPolicyCharacters)],
            ),
          ) as _i3.BuiltList<_i2.PasswordPolicyCharacters>));
        case 'passwordPolicyMinLength':
          result.passwordPolicyMinLength = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AWSAuthPasswordProtectionSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AWSAuthPasswordProtectionSettings(
      :passwordPolicyCharacters,
      :passwordPolicyMinLength
    ) = object;
    if (passwordPolicyCharacters != null) {
      result$
        ..add('passwordPolicyCharacters')
        ..add(serializers.serialize(
          passwordPolicyCharacters,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.PasswordPolicyCharacters)],
          ),
        ));
    }
    if (passwordPolicyMinLength != null) {
      result$
        ..add('passwordPolicyMinLength')
        ..add(serializers.serialize(
          passwordPolicyMinLength,
          specifiedType: const FullType(int),
        ));
    }
    return result$;
  }
}
