// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.aws_auth_user_pool_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/amplify_core.dart' as _i2;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_analytics_pinpoint_config.dart'
    as _i4;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_hosted_ui_config.dart'
    as _i7;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_mfa_configuration.dart'
    as _i6;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_password_protection_settings.dart'
    as _i5;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_username_attribute.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i9;

part 'aws_auth_user_pool_config.g.dart';

abstract class AWSAuthUserPoolConfig
    with _i1.AWSEquatable<AWSAuthUserPoolConfig>
    implements Built<AWSAuthUserPoolConfig, AWSAuthUserPoolConfigBuilder> {
  factory AWSAuthUserPoolConfig({
    required String poolId,
    required String region,
    required String clientId,
    String? clientSecret,
    Uri? endpoint,
    _i2.AuthenticationFlowType? authFlowType,
    List<_i2.AuthProvider>? socialProviders,
    List<_i3.AWSAuthUsernameAttribute>? usernameAttributes,
    List<_i2.CognitoUserAttributeKey>? signUpAttributes,
    List<_i2.CognitoUserAttributeKey>? verificationMechanisms,
    _i4.AWSAnalyticsPinpointConfig? pinpointConfig,
    _i5.AWSAuthPasswordProtectionSettings? passwordProtectionSettings,
    _i6.AWSAuthMfaConfiguration? mfaConfiguration,
    _i7.AWSAuthHostedUiConfig? hostedUi,
  }) {
    return _$AWSAuthUserPoolConfig._(
      poolId: poolId,
      region: region,
      clientId: clientId,
      clientSecret: clientSecret,
      endpoint: endpoint,
      authFlowType: authFlowType,
      socialProviders:
          socialProviders == null ? null : _i8.BuiltList(socialProviders),
      usernameAttributes:
          usernameAttributes == null ? null : _i8.BuiltList(usernameAttributes),
      signUpAttributes:
          signUpAttributes == null ? null : _i8.BuiltList(signUpAttributes),
      verificationMechanisms: verificationMechanisms == null
          ? null
          : _i8.BuiltList(verificationMechanisms),
      pinpointConfig: pinpointConfig,
      passwordProtectionSettings: passwordProtectionSettings,
      mfaConfiguration: mfaConfiguration,
      hostedUi: hostedUi,
    );
  }

  factory AWSAuthUserPoolConfig.build(
          [void Function(AWSAuthUserPoolConfigBuilder) updates]) =
      _$AWSAuthUserPoolConfig;

  const AWSAuthUserPoolConfig._();

  static const List<_i9.SmithySerializer<AWSAuthUserPoolConfig>> serializers = [
    AWSAuthUserPoolConfigSerializer()
  ];

  String get poolId;
  String get region;
  String get clientId;
  String? get clientSecret;

  /// A valid RFC 3986 URI
  Uri? get endpoint;
  _i2.AuthenticationFlowType? get authFlowType;
  _i8.BuiltList<_i2.AuthProvider>? get socialProviders;
  _i8.BuiltList<_i3.AWSAuthUsernameAttribute>? get usernameAttributes;
  _i8.BuiltList<_i2.CognitoUserAttributeKey>? get signUpAttributes;
  _i8.BuiltList<_i2.CognitoUserAttributeKey>? get verificationMechanisms;

  /// The Amplify Analytics Pinpoint plugin configuration.
  _i4.AWSAnalyticsPinpointConfig? get pinpointConfig;
  _i5.AWSAuthPasswordProtectionSettings? get passwordProtectionSettings;
  _i6.AWSAuthMfaConfiguration? get mfaConfiguration;
  _i7.AWSAuthHostedUiConfig? get hostedUi;
  @override
  List<Object?> get props => [
        poolId,
        region,
        clientId,
        clientSecret,
        endpoint,
        authFlowType,
        socialProviders,
        usernameAttributes,
        signUpAttributes,
        verificationMechanisms,
        pinpointConfig,
        passwordProtectionSettings,
        mfaConfiguration,
        hostedUi,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AWSAuthUserPoolConfig')
      ..add(
        'poolId',
        poolId,
      )
      ..add(
        'region',
        region,
      )
      ..add(
        'clientId',
        clientId,
      )
      ..add(
        'clientSecret',
        clientSecret,
      )
      ..add(
        'endpoint',
        endpoint,
      )
      ..add(
        'authFlowType',
        authFlowType,
      )
      ..add(
        'socialProviders',
        socialProviders,
      )
      ..add(
        'usernameAttributes',
        usernameAttributes,
      )
      ..add(
        'signUpAttributes',
        signUpAttributes,
      )
      ..add(
        'verificationMechanisms',
        verificationMechanisms,
      )
      ..add(
        'pinpointConfig',
        pinpointConfig,
      )
      ..add(
        'passwordProtectionSettings',
        passwordProtectionSettings,
      )
      ..add(
        'mfaConfiguration',
        mfaConfiguration,
      )
      ..add(
        'hostedUi',
        hostedUi,
      );
    return helper.toString();
  }
}

class AWSAuthUserPoolConfigSerializer
    extends _i9.StructuredSmithySerializer<AWSAuthUserPoolConfig> {
  const AWSAuthUserPoolConfigSerializer() : super('AWSAuthUserPoolConfig');

  @override
  Iterable<Type> get types => const [
        AWSAuthUserPoolConfig,
        _$AWSAuthUserPoolConfig,
      ];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSAuthUserPoolConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AWSAuthUserPoolConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'authFlowType':
          result.authFlowType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AuthenticationFlowType),
          ) as _i2.AuthenticationFlowType);
        case 'clientId':
          result.clientId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'clientSecret':
          result.clientSecret = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'endpoint':
          result.endpoint = (serializers.deserialize(
            value,
            specifiedType: const FullType(Uri),
          ) as Uri);
        case 'hostedUi':
          result.hostedUi.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.AWSAuthHostedUiConfig),
          ) as _i7.AWSAuthHostedUiConfig));
        case 'mfaConfiguration':
          result.mfaConfiguration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.AWSAuthMfaConfiguration),
          ) as _i6.AWSAuthMfaConfiguration));
        case 'passwordProtectionSettings':
          result.passwordProtectionSettings.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i5.AWSAuthPasswordProtectionSettings),
          ) as _i5.AWSAuthPasswordProtectionSettings));
        case 'pinpointConfig':
          result.pinpointConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.AWSAnalyticsPinpointConfig),
          ) as _i4.AWSAnalyticsPinpointConfig));
        case 'poolId':
          result.poolId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'region':
          result.region = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'signUpAttributes':
          result.signUpAttributes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(_i2.CognitoUserAttributeKey)],
            ),
          ) as _i8.BuiltList<_i2.CognitoUserAttributeKey>));
        case 'socialProviders':
          result.socialProviders.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(_i2.AuthProvider)],
            ),
          ) as _i8.BuiltList<_i2.AuthProvider>));
        case 'usernameAttributes':
          result.usernameAttributes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(_i3.AWSAuthUsernameAttribute)],
            ),
          ) as _i8.BuiltList<_i3.AWSAuthUsernameAttribute>));
        case 'verificationMechanisms':
          result.verificationMechanisms.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(_i2.CognitoUserAttributeKey)],
            ),
          ) as _i8.BuiltList<_i2.CognitoUserAttributeKey>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AWSAuthUserPoolConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AWSAuthUserPoolConfig(
      :authFlowType,
      :clientId,
      :clientSecret,
      :endpoint,
      :hostedUi,
      :mfaConfiguration,
      :passwordProtectionSettings,
      :pinpointConfig,
      :poolId,
      :region,
      :signUpAttributes,
      :socialProviders,
      :usernameAttributes,
      :verificationMechanisms
    ) = object;
    result$.addAll([
      'clientId',
      serializers.serialize(
        clientId,
        specifiedType: const FullType(String),
      ),
      'poolId',
      serializers.serialize(
        poolId,
        specifiedType: const FullType(String),
      ),
      'region',
      serializers.serialize(
        region,
        specifiedType: const FullType(String),
      ),
    ]);
    if (authFlowType != null) {
      result$
        ..add('authFlowType')
        ..add(serializers.serialize(
          authFlowType,
          specifiedType: const FullType(_i2.AuthenticationFlowType),
        ));
    }
    if (clientSecret != null) {
      result$
        ..add('clientSecret')
        ..add(serializers.serialize(
          clientSecret,
          specifiedType: const FullType(String),
        ));
    }
    if (endpoint != null) {
      result$
        ..add('endpoint')
        ..add(serializers.serialize(
          endpoint,
          specifiedType: const FullType(Uri),
        ));
    }
    if (hostedUi != null) {
      result$
        ..add('hostedUi')
        ..add(serializers.serialize(
          hostedUi,
          specifiedType: const FullType(_i7.AWSAuthHostedUiConfig),
        ));
    }
    if (mfaConfiguration != null) {
      result$
        ..add('mfaConfiguration')
        ..add(serializers.serialize(
          mfaConfiguration,
          specifiedType: const FullType(_i6.AWSAuthMfaConfiguration),
        ));
    }
    if (passwordProtectionSettings != null) {
      result$
        ..add('passwordProtectionSettings')
        ..add(serializers.serialize(
          passwordProtectionSettings,
          specifiedType: const FullType(_i5.AWSAuthPasswordProtectionSettings),
        ));
    }
    if (pinpointConfig != null) {
      result$
        ..add('pinpointConfig')
        ..add(serializers.serialize(
          pinpointConfig,
          specifiedType: const FullType(_i4.AWSAnalyticsPinpointConfig),
        ));
    }
    if (signUpAttributes != null) {
      result$
        ..add('signUpAttributes')
        ..add(serializers.serialize(
          signUpAttributes,
          specifiedType: const FullType(
            _i8.BuiltList,
            [FullType(_i2.CognitoUserAttributeKey)],
          ),
        ));
    }
    if (socialProviders != null) {
      result$
        ..add('socialProviders')
        ..add(serializers.serialize(
          socialProviders,
          specifiedType: const FullType(
            _i8.BuiltList,
            [FullType(_i2.AuthProvider)],
          ),
        ));
    }
    if (usernameAttributes != null) {
      result$
        ..add('usernameAttributes')
        ..add(serializers.serialize(
          usernameAttributes,
          specifiedType: const FullType(
            _i8.BuiltList,
            [FullType(_i3.AWSAuthUsernameAttribute)],
          ),
        ));
    }
    if (verificationMechanisms != null) {
      result$
        ..add('verificationMechanisms')
        ..add(serializers.serialize(
          verificationMechanisms,
          specifiedType: const FullType(
            _i8.BuiltList,
            [FullType(_i2.CognitoUserAttributeKey)],
          ),
        ));
    }
    return result$;
  }
}
