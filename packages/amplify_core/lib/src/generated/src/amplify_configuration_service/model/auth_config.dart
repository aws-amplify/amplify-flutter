// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.auth_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/auth_cognito_config.dart'
    as _i4;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/auth_identity_pool_config.dart'
    as _i3;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/auth_user_pool_config.dart'
    as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

sealed class AuthConfig extends _i1.SmithyUnion<AuthConfig> {
  const AuthConfig._();

  factory AuthConfig.cognito({
    _i2.AuthUserPoolConfig? userPool,
    _i3.AuthIdentityPoolConfig? identityPool,
  }) =>
      AuthConfigCognito$(_i4.AuthCognitoConfig(
        userPool: userPool,
        identityPool: identityPool,
      ));

  const factory AuthConfig.sdkUnknown(
    String name,
    Object value,
  ) = AuthConfigSdkUnknown$;

  static const List<_i1.SmithySerializer<AuthConfig>> serializers = [
    AuthConfigSerializer()
  ];

  _i4.AuthCognitoConfig? get cognito => null;
  @override
  Object get value => (cognito)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'AuthConfig');
    if (cognito != null) {
      helper.add(
        r'cognito',
        cognito,
      );
    }
    return helper.toString();
  }
}

final class AuthConfigCognito$ extends AuthConfig {
  const AuthConfigCognito$(this.cognito) : super._();

  @override
  final _i4.AuthCognitoConfig cognito;

  @override
  String get name => 'cognito';
}

final class AuthConfigSdkUnknown$ extends AuthConfig {
  const AuthConfigSdkUnknown$(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class AuthConfigSerializer extends _i1.StructuredSmithySerializer<AuthConfig> {
  const AuthConfigSerializer() : super('AuthConfig');

  @override
  Iterable<Type> get types => const [
        AuthConfig,
        AuthConfigCognito$,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AuthConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'cognito':
        return AuthConfigCognito$((serializers.deserialize(
          value,
          specifiedType: const FullType(_i4.AuthCognitoConfig),
        ) as _i4.AuthCognitoConfig));
    }
    return AuthConfig.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AuthConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        AuthConfigCognito$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i4.AuthCognitoConfig),
          ),
        AuthConfigSdkUnknown$(:final value) => value,
      },
    ];
  }
}
