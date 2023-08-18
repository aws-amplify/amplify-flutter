// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/amplify_core.dart' as _i34;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/amplify_logging_constraints.dart'
    as _i3;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/amplify_sub_category.dart'
    as _i4;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/analytics_config.dart'
    as _i6;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/analytics_pinpoint_config.dart'
    as _i5;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/api_authorization_mode.dart'
    as _i7;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/api_config.dart'
    as _i12;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/api_endpoint_config.dart'
    as _i11;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/api_gateway_endpoint_config.dart'
    as _i9;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/app_sync_endpoint_config.dart'
    as _i8;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/auth_cognito_config.dart'
    as _i22;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/auth_config.dart'
    as _i23;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/auth_hosted_ui_config.dart'
    as _i19;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/auth_identity_pool_config.dart'
    as _i21;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/auth_mfa_configuration.dart'
    as _i18;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/auth_password_policy.dart'
    as _i17;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/auth_provider_custom.dart'
    as _i15;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/auth_provider_oidc.dart'
    as _i13;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/auth_provider_saml.dart'
    as _i14;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/auth_user_pool_config.dart'
    as _i20;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/auth_username_attribute.dart'
    as _i16;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/logging_cloud_watch_config.dart'
    as _i25;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/logging_config.dart'
    as _i26;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/logging_remote_config.dart'
    as _i24;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/notifications_config.dart'
    as _i29;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/push_notifications_config.dart'
    as _i28;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/push_notifications_pinpoint_config.dart'
    as _i27;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/rest_endpoint_config.dart'
    as _i10;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/storage_config.dart'
    as _i32;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/storage_s3_bucket.dart'
    as _i30;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/storage_s3_config.dart'
    as _i31;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/user_log_level.dart'
    as _i2;
import 'package:built_collection/built_collection.dart' as _i33;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.UserLogLevel.serializers,
  ..._i3.AmplifyLoggingConstraints.serializers,
  ..._i4.AmplifySubCategory.serializers,
  ..._i5.AnalyticsPinpointConfig.serializers,
  ..._i6.AnalyticsConfig.serializers,
  ..._i7.ApiAuthorizationMode.serializers,
  ..._i8.AppSyncEndpointConfig.serializers,
  ..._i9.ApiGatewayEndpointConfig.serializers,
  ..._i10.RestEndpointConfig.serializers,
  ..._i11.ApiEndpointConfig.serializers,
  ..._i12.ApiConfig.serializers,
  ..._i13.AuthProviderOidc.serializers,
  ..._i14.AuthProviderSaml.serializers,
  ..._i15.AuthProviderCustom.serializers,
  ..._i16.AuthUsernameAttribute.serializers,
  ..._i17.AuthPasswordPolicy.serializers,
  ..._i18.AuthMfaConfiguration.serializers,
  ..._i19.AuthHostedUiConfig.serializers,
  ..._i20.AuthUserPoolConfig.serializers,
  ..._i21.AuthIdentityPoolConfig.serializers,
  ..._i22.AuthCognitoConfig.serializers,
  ..._i23.AuthConfig.serializers,
  ..._i24.LoggingRemoteConfig.serializers,
  ..._i25.LoggingCloudWatchConfig.serializers,
  ..._i26.LoggingConfig.serializers,
  ..._i27.PushNotificationsPinpointConfig.serializers,
  ..._i28.PushNotificationsConfig.serializers,
  ..._i29.NotificationsConfig.serializers,
  ..._i30.StorageS3Bucket.serializers,
  ..._i31.StorageS3Config.serializers,
  ..._i32.StorageConfig.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i33.BuiltMap,
    [
      FullType(_i34.Category),
      FullType(_i34.LogLevel),
    ],
  ): _i33.MapBuilder<_i34.Category, _i34.LogLevel>.new,
  const FullType(
    _i33.BuiltMap,
    [
      FullType(String),
      FullType(_i2.UserLogLevel),
    ],
  ): _i33.MapBuilder<String, _i2.UserLogLevel>.new,
  const FullType(
    _i33.BuiltList,
    [FullType(_i7.ApiAuthorizationMode)],
  ): _i33.ListBuilder<_i7.ApiAuthorizationMode>.new,
  const FullType(
    _i33.BuiltList,
    [FullType(_i11.ApiEndpointConfig)],
  ): _i33.ListBuilder<_i11.ApiEndpointConfig>.new,
  const FullType(
    _i33.BuiltList,
    [FullType(Uri)],
  ): _i33.ListBuilder<Uri>.new,
  const FullType(
    _i33.BuiltList,
    [FullType(String)],
  ): _i33.ListBuilder<String>.new,
  const FullType(
    _i33.BuiltList,
    [FullType(_i34.AuthProvider)],
  ): _i33.ListBuilder<_i34.AuthProvider>.new,
  const FullType(
    _i33.BuiltList,
    [FullType(_i16.AuthUsernameAttribute)],
  ): _i33.ListBuilder<_i16.AuthUsernameAttribute>.new,
  const FullType(
    _i33.BuiltList,
    [FullType(_i34.CognitoUserAttributeKey)],
  ): _i33.ListBuilder<_i34.CognitoUserAttributeKey>.new,
  const FullType(
    _i33.BuiltList,
    [FullType(_i30.StorageS3Bucket)],
  ): _i33.ListBuilder<_i30.StorageS3Bucket>.new,
};
