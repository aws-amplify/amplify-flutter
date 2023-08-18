// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.auth_mfa_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/amplify_config.dart' as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'auth_mfa_configuration.g.dart';

abstract class AuthMfaConfiguration
    with _i1.AWSEquatable<AuthMfaConfiguration>
    implements Built<AuthMfaConfiguration, AuthMfaConfigurationBuilder> {
  factory AuthMfaConfiguration({
    required _i2.MfaStatus enforcementLevel,
    bool? sms,
    bool? totp,
  }) {
    sms ??= false;
    totp ??= false;
    return _$AuthMfaConfiguration._(
      enforcementLevel: enforcementLevel,
      sms: sms,
      totp: totp,
    );
  }

  factory AuthMfaConfiguration.build(
          [void Function(AuthMfaConfigurationBuilder) updates]) =
      _$AuthMfaConfiguration;

  const AuthMfaConfiguration._();

  static const List<_i3.SmithySerializer<AuthMfaConfiguration>> serializers = [
    AuthMfaConfigurationSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AuthMfaConfigurationBuilder b) {
    b
      ..sms = false
      ..totp = false;
  }

  _i2.MfaStatus get enforcementLevel;
  bool get sms;
  bool get totp;
  @override
  List<Object?> get props => [
        enforcementLevel,
        sms,
        totp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AuthMfaConfiguration')
      ..add(
        'enforcementLevel',
        enforcementLevel,
      )
      ..add(
        'sms',
        sms,
      )
      ..add(
        'totp',
        totp,
      );
    return helper.toString();
  }
}

class AuthMfaConfigurationSerializer
    extends _i3.StructuredSmithySerializer<AuthMfaConfiguration> {
  const AuthMfaConfigurationSerializer() : super('AuthMfaConfiguration');

  @override
  Iterable<Type> get types => const [
        AuthMfaConfiguration,
        _$AuthMfaConfiguration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AuthMfaConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthMfaConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'enforcementLevel':
          result.enforcementLevel = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.MfaStatus),
          ) as _i2.MfaStatus);
        case 'sms':
          result.sms = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'totp':
          result.totp = (serializers.deserialize(
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
    AuthMfaConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AuthMfaConfiguration(:enforcementLevel, :sms, :totp) = object;
    result$.addAll([
      'enforcementLevel',
      serializers.serialize(
        enforcementLevel,
        specifiedType: const FullType(_i2.MfaStatus),
      ),
      'sms',
      serializers.serialize(
        sms,
        specifiedType: const FullType(bool),
      ),
      'totp',
      serializers.serialize(
        totp,
        specifiedType: const FullType(bool),
      ),
    ]);
    return result$;
  }
}
