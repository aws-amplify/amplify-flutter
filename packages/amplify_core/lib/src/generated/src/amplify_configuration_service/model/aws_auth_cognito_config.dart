// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.aws_auth_cognito_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_identity_pool_config.dart'
    as _i3;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_user_pool_config.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'aws_auth_cognito_config.g.dart';

abstract class AWSAuthCognitoConfig
    with _i1.AWSEquatable<AWSAuthCognitoConfig>
    implements Built<AWSAuthCognitoConfig, AWSAuthCognitoConfigBuilder> {
  factory AWSAuthCognitoConfig({
    _i2.AWSAuthUserPoolConfig? userPool,
    _i3.AWSAuthIdentityPoolConfig? identityPool,
  }) {
    return _$AWSAuthCognitoConfig._(
      userPool: userPool,
      identityPool: identityPool,
    );
  }

  factory AWSAuthCognitoConfig.build(
          [void Function(AWSAuthCognitoConfigBuilder) updates]) =
      _$AWSAuthCognitoConfig;

  const AWSAuthCognitoConfig._();

  static const List<_i4.SmithySerializer<AWSAuthCognitoConfig>> serializers = [
    AWSAuthCognitoConfigSerializer()
  ];

  _i2.AWSAuthUserPoolConfig? get userPool;
  _i3.AWSAuthIdentityPoolConfig? get identityPool;
  @override
  List<Object?> get props => [
        userPool,
        identityPool,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AWSAuthCognitoConfig')
      ..add(
        'userPool',
        userPool,
      )
      ..add(
        'identityPool',
        identityPool,
      );
    return helper.toString();
  }
}

class AWSAuthCognitoConfigSerializer
    extends _i4.StructuredSmithySerializer<AWSAuthCognitoConfig> {
  const AWSAuthCognitoConfigSerializer() : super('AWSAuthCognitoConfig');

  @override
  Iterable<Type> get types => const [
        AWSAuthCognitoConfig,
        _$AWSAuthCognitoConfig,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSAuthCognitoConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AWSAuthCognitoConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'identityPool':
          result.identityPool.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.AWSAuthIdentityPoolConfig),
          ) as _i3.AWSAuthIdentityPoolConfig));
        case 'userPool':
          result.userPool.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AWSAuthUserPoolConfig),
          ) as _i2.AWSAuthUserPoolConfig));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AWSAuthCognitoConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AWSAuthCognitoConfig(:identityPool, :userPool) = object;
    if (identityPool != null) {
      result$
        ..add('identityPool')
        ..add(serializers.serialize(
          identityPool,
          specifiedType: const FullType(_i3.AWSAuthIdentityPoolConfig),
        ));
    }
    if (userPool != null) {
      result$
        ..add('userPool')
        ..add(serializers.serialize(
          userPool,
          specifiedType: const FullType(_i2.AWSAuthUserPoolConfig),
        ));
    }
    return result$;
  }
}
