// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_core.amplify_configuration_service.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/amplify_core.dart' as _i35;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/amplify_logging_constraints.dart'
    as _i24;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/amplify_sub_category.dart'
    as _i33;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_analytics_config.dart'
    as _i3;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_analytics_pinpoint_config.dart'
    as _i2;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_api_authorization_mode.dart'
    as _i4;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_api_config.dart'
    as _i9;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_api_endpoint_config.dart'
    as _i8;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_api_gateway_endpoint_config.dart'
    as _i6;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_app_sync_endpoint_config.dart'
    as _i5;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_cognito_config.dart'
    as _i20;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_config.dart'
    as _i21;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_hosted_ui_config.dart'
    as _i17;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_identity_pool_config.dart'
    as _i19;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_mfa_configuration.dart'
    as _i16;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_password_protection_settings.dart'
    as _i15;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_provider.dart'
    as _i13;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_provider_custom.dart'
    as _i12;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_provider_oidc.dart'
    as _i10;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_provider_saml.dart'
    as _i11;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_user_pool_config.dart'
    as _i18;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_username_attribute.dart'
    as _i14;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_logging_cloud_watch_config.dart'
    as _i25;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_logging_config.dart'
    as _i26;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_notifications_config.dart'
    as _i29;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_push_notifications_config.dart'
    as _i28;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_push_notifications_pinpoint_config.dart'
    as _i27;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_rest_endpoint_config.dart'
    as _i7;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_storage_config.dart'
    as _i32;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_storage_s3_bucket.dart'
    as _i30;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_storage_s3_config.dart'
    as _i31;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/logging_remote_configuration.dart'
    as _i22;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/user_log_level.dart'
    as _i23;
import 'package:built_collection/built_collection.dart' as _i34;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.AWSAnalyticsPinpointConfig.serializers,
  ..._i3.AWSAnalyticsConfig.serializers,
  ..._i4.AWSApiAuthorizationMode.serializers,
  ..._i5.AWSAppSyncEndpointConfig.serializers,
  ..._i6.AWSApiGatewayEndpointConfig.serializers,
  ..._i7.AWSRestEndpointConfig.serializers,
  ..._i8.AWSApiEndpointConfig.serializers,
  ..._i9.AWSApiConfig.serializers,
  ..._i10.AWSAuthProviderOidc.serializers,
  ..._i11.AWSAuthProviderSaml.serializers,
  ..._i12.AWSAuthProviderCustom.serializers,
  ..._i13.AWSAuthProvider.serializers,
  ..._i14.AWSAuthUsernameAttribute.serializers,
  ..._i15.AWSAuthPasswordProtectionSettings.serializers,
  ..._i16.AWSAuthMfaConfiguration.serializers,
  ..._i17.AWSAuthHostedUiConfig.serializers,
  ..._i18.AWSAuthUserPoolConfig.serializers,
  ..._i19.AWSAuthIdentityPoolConfig.serializers,
  ..._i20.AWSAuthCognitoConfig.serializers,
  ..._i21.AWSAuthConfig.serializers,
  ..._i22.LoggingRemoteConfiguration.serializers,
  ..._i23.UserLogLevel.serializers,
  ..._i24.AmplifyLoggingConstraints.serializers,
  ..._i25.AWSLoggingCloudWatchConfig.serializers,
  ..._i26.AWSLoggingConfig.serializers,
  ..._i27.AWSPushNotificationsPinpointConfig.serializers,
  ..._i28.AWSPushNotificationsConfig.serializers,
  ..._i29.AWSNotificationsConfig.serializers,
  ..._i30.AWSStorageS3Bucket.serializers,
  ..._i31.AWSStorageS3Config.serializers,
  ..._i32.AWSStorageConfig.serializers,
  ..._i33.AmplifySubCategory.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i34.BuiltList,
    [FullType(_i4.AWSApiAuthorizationMode)],
  ): _i34.ListBuilder<_i4.AWSApiAuthorizationMode>.new,
  const FullType(
    _i34.BuiltMap,
    [
      FullType(String),
      FullType(_i8.AWSApiEndpointConfig),
    ],
  ): _i34.MapBuilder<String, _i8.AWSApiEndpointConfig>.new,
  const FullType(
    _i34.BuiltList,
    [FullType(_i35.PasswordPolicyCharacters)],
  ): _i34.ListBuilder<_i35.PasswordPolicyCharacters>.new,
  const FullType(
    _i34.BuiltSet,
    [FullType(_i35.MfaType)],
  ): _i34.SetBuilder<_i35.MfaType>.new,
  const FullType(
    _i34.BuiltList,
    [FullType(Uri)],
  ): _i34.ListBuilder<Uri>.new,
  const FullType(
    _i34.BuiltList,
    [FullType(String)],
  ): _i34.ListBuilder<String>.new,
  const FullType(
    _i34.BuiltList,
    [FullType(_i13.AWSAuthProvider)],
  ): _i34.ListBuilder<_i13.AWSAuthProvider>.new,
  const FullType(
    _i34.BuiltSet,
    [FullType(_i14.AWSAuthUsernameAttribute)],
  ): _i34.SetBuilder<_i14.AWSAuthUsernameAttribute>.new,
  const FullType(
    _i34.BuiltSet,
    [FullType(_i35.CognitoUserAttributeKey)],
  ): _i34.SetBuilder<_i35.CognitoUserAttributeKey>.new,
  const FullType(
    _i34.BuiltMap,
    [
      FullType(_i35.Category),
      FullType(_i35.LogLevel),
    ],
  ): _i34.MapBuilder<_i35.Category, _i35.LogLevel>.new,
  const FullType(
    _i34.BuiltMap,
    [
      FullType(String),
      FullType(_i23.UserLogLevel),
    ],
  ): _i34.MapBuilder<String, _i23.UserLogLevel>.new,
  const FullType(
    _i34.BuiltMap,
    [
      FullType(String),
      FullType(_i30.AWSStorageS3Bucket),
    ],
  ): _i34.MapBuilder<String, _i30.AWSStorageS3Bucket>.new,
};
