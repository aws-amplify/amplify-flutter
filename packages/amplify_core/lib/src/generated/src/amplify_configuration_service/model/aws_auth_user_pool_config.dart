// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_core.amplify_configuration_service.model.aws_auth_user_pool_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/amplify_core.dart' as _i5;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_analytics_pinpoint_config.dart'
    as _i6;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_flow_type.dart'
    as _i2;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_hosted_ui_config.dart'
    as _i9;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_mfa_configuration.dart'
    as _i8;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_password_protection_settings.dart'
    as _i7;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_provider.dart'
    as _i3;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_username_attribute.dart'
    as _i4;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i10;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i11;

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
    _i2.AWSAuthFlowType? authFlowType,
    List<_i3.AWSAuthProvider>? socialProviders,
    Set<_i4.AWSAuthUsernameAttribute>? usernameAttributes,
    Set<_i5.CognitoUserAttributeKey>? signUpAttributes,
    Set<_i5.CognitoUserAttributeKey>? verificationMechanisms,
    _i6.AWSAnalyticsPinpointConfig? pinpointConfig,
    _i7.AWSAuthPasswordProtectionSettings? passwordProtectionSettings,
    _i8.AWSAuthMfaConfiguration? mfaConfiguration,
    _i9.AWSAuthHostedUiConfig? hostedUi,
  }) {
    return _$AWSAuthUserPoolConfig._(
      poolId: poolId,
      region: region,
      clientId: clientId,
      clientSecret: clientSecret,
      endpoint: endpoint,
      authFlowType: authFlowType,
      socialProviders:
          socialProviders == null ? null : _i10.BuiltList(socialProviders),
      usernameAttributes:
          usernameAttributes == null ? null : _i10.BuiltSet(usernameAttributes),
      signUpAttributes:
          signUpAttributes == null ? null : _i10.BuiltSet(signUpAttributes),
      verificationMechanisms: verificationMechanisms == null
          ? null
          : _i10.BuiltSet(verificationMechanisms),
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

  static const List<_i11.SmithySerializer<AWSAuthUserPoolConfig>> serializers =
      [AWSAuthUserPoolConfigSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AWSAuthUserPoolConfigBuilder b) {}
  String get poolId;
  String get region;
  String get clientId;
  String? get clientSecret;

  /// A valid RFC 3986 URI
  Uri? get endpoint;
  _i2.AWSAuthFlowType? get authFlowType;
  _i10.BuiltList<_i3.AWSAuthProvider>? get socialProviders;
  _i10.BuiltSet<_i4.AWSAuthUsernameAttribute>? get usernameAttributes;
  _i10.BuiltSet<_i5.CognitoUserAttributeKey>? get signUpAttributes;
  _i10.BuiltSet<_i5.CognitoUserAttributeKey>? get verificationMechanisms;
  _i6.AWSAnalyticsPinpointConfig? get pinpointConfig;
  _i7.AWSAuthPasswordProtectionSettings? get passwordProtectionSettings;
  _i8.AWSAuthMfaConfiguration? get mfaConfiguration;
  _i9.AWSAuthHostedUiConfig? get hostedUi;
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
    extends _i11.StructuredSmithySerializer<AWSAuthUserPoolConfig> {
  const AWSAuthUserPoolConfigSerializer() : super('AWSAuthUserPoolConfig');

  @override
  Iterable<Type> get types => const [
        AWSAuthUserPoolConfig,
        _$AWSAuthUserPoolConfig,
      ];
  @override
  Iterable<_i11.ShapeId> get supportedProtocols => const [
        _i11.ShapeId(
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
            specifiedType: const FullType(_i2.AWSAuthFlowType),
          ) as _i2.AWSAuthFlowType);
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
            specifiedType: const FullType(_i9.AWSAuthHostedUiConfig),
          ) as _i9.AWSAuthHostedUiConfig));
        case 'mfaConfiguration':
          result.mfaConfiguration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.AWSAuthMfaConfiguration),
          ) as _i8.AWSAuthMfaConfiguration));
        case 'passwordProtectionSettings':
          result.passwordProtectionSettings.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i7.AWSAuthPasswordProtectionSettings),
          ) as _i7.AWSAuthPasswordProtectionSettings));
        case 'pinpointConfig':
          result.pinpointConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.AWSAnalyticsPinpointConfig),
          ) as _i6.AWSAnalyticsPinpointConfig));
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
              _i10.BuiltSet,
              [FullType(_i5.CognitoUserAttributeKey)],
            ),
          ) as _i10.BuiltSet<_i5.CognitoUserAttributeKey>));
        case 'socialProviders':
          result.socialProviders.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i3.AWSAuthProvider)],
            ),
          ) as _i10.BuiltList<_i3.AWSAuthProvider>));
        case 'usernameAttributes':
          result.usernameAttributes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i10.BuiltSet,
              [FullType(_i4.AWSAuthUsernameAttribute)],
            ),
          ) as _i10.BuiltSet<_i4.AWSAuthUsernameAttribute>));
        case 'verificationMechanisms':
          result.verificationMechanisms.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i10.BuiltSet,
              [FullType(_i5.CognitoUserAttributeKey)],
            ),
          ) as _i10.BuiltSet<_i5.CognitoUserAttributeKey>));
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
          specifiedType: const FullType(_i2.AWSAuthFlowType),
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
          specifiedType: const FullType(_i9.AWSAuthHostedUiConfig),
        ));
    }
    if (mfaConfiguration != null) {
      result$
        ..add('mfaConfiguration')
        ..add(serializers.serialize(
          mfaConfiguration,
          specifiedType: const FullType(_i8.AWSAuthMfaConfiguration),
        ));
    }
    if (passwordProtectionSettings != null) {
      result$
        ..add('passwordProtectionSettings')
        ..add(serializers.serialize(
          passwordProtectionSettings,
          specifiedType: const FullType(_i7.AWSAuthPasswordProtectionSettings),
        ));
    }
    if (pinpointConfig != null) {
      result$
        ..add('pinpointConfig')
        ..add(serializers.serialize(
          pinpointConfig,
          specifiedType: const FullType(_i6.AWSAnalyticsPinpointConfig),
        ));
    }
    if (signUpAttributes != null) {
      result$
        ..add('signUpAttributes')
        ..add(serializers.serialize(
          signUpAttributes,
          specifiedType: const FullType(
            _i10.BuiltSet,
            [FullType(_i5.CognitoUserAttributeKey)],
          ),
        ));
    }
    if (socialProviders != null) {
      result$
        ..add('socialProviders')
        ..add(serializers.serialize(
          socialProviders,
          specifiedType: const FullType(
            _i10.BuiltList,
            [FullType(_i3.AWSAuthProvider)],
          ),
        ));
    }
    if (usernameAttributes != null) {
      result$
        ..add('usernameAttributes')
        ..add(serializers.serialize(
          usernameAttributes,
          specifiedType: const FullType(
            _i10.BuiltSet,
            [FullType(_i4.AWSAuthUsernameAttribute)],
          ),
        ));
    }
    if (verificationMechanisms != null) {
      result$
        ..add('verificationMechanisms')
        ..add(serializers.serialize(
          verificationMechanisms,
          specifiedType: const FullType(
            _i10.BuiltSet,
            [FullType(_i5.CognitoUserAttributeKey)],
          ),
        ));
    }
    return result$;
  }
}
