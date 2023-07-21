// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/amplify_core.dart' as _i34;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_amplify_logging_constraints.dart'
    as _i3;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_amplify_sub_category.dart'
    as _i4;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_analytics_config.dart'
    as _i6;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_analytics_pinpoint_config.dart'
    as _i5;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_api_authorization_mode.dart'
    as _i7;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_api_config.dart'
    as _i12;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_api_endpoint_config.dart'
    as _i11;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_api_gateway_endpoint_config.dart'
    as _i9;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_app_sync_endpoint_config.dart'
    as _i8;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_cognito_config.dart'
    as _i22;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_config.dart'
    as _i23;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_hosted_ui_config.dart'
    as _i19;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_identity_pool_config.dart'
    as _i21;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_mfa_configuration.dart'
    as _i18;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_password_protection_settings.dart'
    as _i17;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_provider_custom.dart'
    as _i15;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_provider_oidc.dart'
    as _i13;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_provider_saml.dart'
    as _i14;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_user_pool_config.dart'
    as _i20;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_username_attribute.dart'
    as _i16;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_logging_cloud_watch_config.dart'
    as _i25;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_logging_config.dart'
    as _i26;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_logging_remote_config.dart'
    as _i24;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_notifications_config.dart'
    as _i29;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_push_notifications_config.dart'
    as _i28;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_push_notifications_pinpoint_config.dart'
    as _i27;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_rest_endpoint_config.dart'
    as _i10;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_storage_config.dart'
    as _i32;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_storage_s3_bucket.dart'
    as _i30;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_storage_s3_config.dart'
    as _i31;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_user_log_level.dart'
    as _i2;
import 'package:built_collection/built_collection.dart' as _i33;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

const List<_i1.SmithySerializer> serializers = [
  ..._i2.AWSUserLogLevel.serializers,
  ..._i3.AWSAmplifyLoggingConstraints.serializers,
  ..._i4.AWSAmplifySubCategory.serializers,
  ..._i5.AWSAnalyticsPinpointConfig.serializers,
  ..._i6.AWSAnalyticsConfig.serializers,
  ..._i7.AWSApiAuthorizationMode.serializers,
  ..._i8.AWSAppSyncEndpointConfig.serializers,
  ..._i9.AWSApiGatewayEndpointConfig.serializers,
  ..._i10.AWSRestEndpointConfig.serializers,
  ..._i11.AWSApiEndpointConfig.serializers,
  ..._i12.AWSApiConfig.serializers,
  ..._i13.AWSAuthProviderOidc.serializers,
  ..._i14.AWSAuthProviderSaml.serializers,
  ..._i15.AWSAuthProviderCustom.serializers,
  ..._i16.AWSAuthUsernameAttribute.serializers,
  ..._i17.AWSAuthPasswordProtectionSettings.serializers,
  ..._i18.AWSAuthMfaConfiguration.serializers,
  ..._i19.AWSAuthHostedUiConfig.serializers,
  ..._i20.AWSAuthUserPoolConfig.serializers,
  ..._i21.AWSAuthIdentityPoolConfig.serializers,
  ..._i22.AWSAuthCognitoConfig.serializers,
  ..._i23.AWSAuthConfig.serializers,
  ..._i24.AWSLoggingRemoteConfig.serializers,
  ..._i25.AWSLoggingCloudWatchConfig.serializers,
  ..._i26.AWSLoggingConfig.serializers,
  ..._i27.AWSPushNotificationsPinpointConfig.serializers,
  ..._i28.AWSPushNotificationsConfig.serializers,
  ..._i29.AWSNotificationsConfig.serializers,
  ..._i30.AWSStorageS3Bucket.serializers,
  ..._i31.AWSStorageS3Config.serializers,
  ..._i32.AWSStorageConfig.serializers,
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
      FullType(_i2.AWSUserLogLevel),
    ],
  ): _i33.MapBuilder<String, _i2.AWSUserLogLevel>.new,
  const FullType(
    _i33.BuiltList,
    [FullType(_i7.AWSApiAuthorizationMode)],
  ): _i33.ListBuilder<_i7.AWSApiAuthorizationMode>.new,
  const FullType(
    _i33.BuiltMap,
    [
      FullType(String),
      FullType(_i11.AWSApiEndpointConfig),
    ],
  ): _i33.MapBuilder<String, _i11.AWSApiEndpointConfig>.new,
  const FullType(
    _i33.BuiltList,
    [FullType(_i34.PasswordPolicyCharacters)],
  ): _i33.ListBuilder<_i34.PasswordPolicyCharacters>.new,
  const FullType(
    _i33.BuiltList,
    [FullType(_i34.MfaType)],
  ): _i33.ListBuilder<_i34.MfaType>.new,
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
    [FullType(_i16.AWSAuthUsernameAttribute)],
  ): _i33.ListBuilder<_i16.AWSAuthUsernameAttribute>.new,
  const FullType(
    _i33.BuiltList,
    [FullType(_i34.CognitoUserAttributeKey)],
  ): _i33.ListBuilder<_i34.CognitoUserAttributeKey>.new,
  const FullType(
    _i33.BuiltMap,
    [
      FullType(String),
      FullType(_i30.AWSStorageS3Bucket),
    ],
  ): _i33.MapBuilder<String, _i30.AWSStorageS3Bucket>.new,
};
