// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_core.amplify_configuration_service.model.aws_auth_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_cognito_config.dart'
    as _i4;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_identity_pool_config.dart'
    as _i3;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_user_pool_config.dart'
    as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

sealed class AWSAuthConfig extends _i1.SmithyUnion<AWSAuthConfig> {
  const AWSAuthConfig._();

  factory AWSAuthConfig.cognito({
    _i2.AWSAuthUserPoolConfig? userPool,
    _i3.AWSAuthIdentityPoolConfig? identityPool,
  }) =>
      AWSAuthConfigCognito$(_i4.AWSAuthCognitoConfig(
        userPool: userPool,
        identityPool: identityPool,
      ));

  const factory AWSAuthConfig.sdkUnknown(
    String name,
    Object value,
  ) = AWSAuthConfigSdkUnknown$;

  static const List<_i1.SmithySerializer<AWSAuthConfig>> serializers = [
    AWSAuthConfigSerializer()
  ];

  _i4.AWSAuthCognitoConfig? get cognito => null;
  @override
  Object get value => (cognito)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'AWSAuthConfig');
    if (cognito != null) {
      helper.add(
        r'cognito',
        cognito,
      );
    }
    return helper.toString();
  }
}

final class AWSAuthConfigCognito$ extends AWSAuthConfig {
  const AWSAuthConfigCognito$(this.cognito) : super._();

  @override
  final _i4.AWSAuthCognitoConfig cognito;

  @override
  String get name => 'cognito';
}

final class AWSAuthConfigSdkUnknown$ extends AWSAuthConfig {
  const AWSAuthConfigSdkUnknown$(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class AWSAuthConfigSerializer
    extends _i1.StructuredSmithySerializer<AWSAuthConfig> {
  const AWSAuthConfigSerializer() : super('AWSAuthConfig');

  @override
  Iterable<Type> get types => const [
        AWSAuthConfig,
        AWSAuthConfigCognito$,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSAuthConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'cognito':
        return AWSAuthConfigCognito$((serializers.deserialize(
          value,
          specifiedType: const FullType(_i4.AWSAuthCognitoConfig),
        ) as _i4.AWSAuthCognitoConfig));
    }
    return AWSAuthConfig.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AWSAuthConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        AWSAuthConfigCognito$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i4.AWSAuthCognitoConfig),
          ),
        AWSAuthConfigSdkUnknown$(:final value) => value,
      },
    ];
  }
}
