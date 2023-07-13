// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_core.amplify_configuration_service.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/amplify_core.dart' as _i38;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/amplify_logging_constraints.dart'
    as _i25;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/amplify_sub_category.dart'
    as _i34;
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
    as _i21;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_config.dart'
    as _i22;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_flow_type.dart'
    as _i10;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_hosted_ui_config.dart'
    as _i18;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_identity_pool_config.dart'
    as _i20;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_mfa_configuration.dart'
    as _i17;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_password_protection_settings.dart'
    as _i16;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_provider.dart'
    as _i14;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_provider_custom.dart'
    as _i13;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_provider_oidc.dart'
    as _i11;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_provider_saml.dart'
    as _i12;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_user_pool_config.dart'
    as _i19;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_auth_username_attribute.dart'
    as _i15;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_logging_cloud_watch_config.dart'
    as _i26;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_logging_config.dart'
    as _i27;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_notifications_config.dart'
    as _i30;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_push_notifications_config.dart'
    as _i29;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_push_notifications_pinpoint_config.dart'
    as _i28;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_rest_endpoint_config.dart'
    as _i7;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_storage_config.dart'
    as _i33;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_storage_s3_bucket.dart'
    as _i31;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_storage_s3_config.dart'
    as _i32;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/logging_remote_configuration.dart'
    as _i23;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/user_log_level.dart'
    as _i24;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/validation_exception.dart'
    as _i36;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/validation_exception_field.dart'
    as _i35;
import 'package:built_collection/built_collection.dart' as _i37;
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
  ..._i10.AWSAuthFlowType.serializers,
  ..._i11.AWSAuthProviderOidc.serializers,
  ..._i12.AWSAuthProviderSaml.serializers,
  ..._i13.AWSAuthProviderCustom.serializers,
  ..._i14.AWSAuthProvider.serializers,
  ..._i15.AWSAuthUsernameAttribute.serializers,
  ..._i16.AWSAuthPasswordProtectionSettings.serializers,
  ..._i17.AWSAuthMfaConfiguration.serializers,
  ..._i18.AWSAuthHostedUiConfig.serializers,
  ..._i19.AWSAuthUserPoolConfig.serializers,
  ..._i20.AWSAuthIdentityPoolConfig.serializers,
  ..._i21.AWSAuthCognitoConfig.serializers,
  ..._i22.AWSAuthConfig.serializers,
  ..._i23.LoggingRemoteConfiguration.serializers,
  ..._i24.UserLogLevel.serializers,
  ..._i25.AmplifyLoggingConstraints.serializers,
  ..._i26.AWSLoggingCloudWatchConfig.serializers,
  ..._i27.AWSLoggingConfig.serializers,
  ..._i28.AWSPushNotificationsPinpointConfig.serializers,
  ..._i29.AWSPushNotificationsConfig.serializers,
  ..._i30.AWSNotificationsConfig.serializers,
  ..._i31.AWSStorageS3Bucket.serializers,
  ..._i32.AWSStorageS3Config.serializers,
  ..._i33.AWSStorageConfig.serializers,
  ..._i34.AmplifySubCategory.serializers,
  ..._i35.ValidationExceptionField.serializers,
  ..._i36.ValidationException.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i37.BuiltList,
    [FullType(_i4.AWSApiAuthorizationMode)],
  ): _i37.ListBuilder<_i4.AWSApiAuthorizationMode>.new,
  const FullType(
    _i37.BuiltMap,
    [
      FullType(String),
      FullType(_i8.AWSApiEndpointConfig),
    ],
  ): _i37.MapBuilder<String, _i8.AWSApiEndpointConfig>.new,
  const FullType(
    _i37.BuiltList,
    [FullType(_i38.PasswordPolicyCharacters)],
  ): _i37.ListBuilder<_i38.PasswordPolicyCharacters>.new,
  const FullType(
    _i37.BuiltSet,
    [FullType(_i38.MfaType)],
  ): _i37.SetBuilder<_i38.MfaType>.new,
  const FullType(
    _i37.BuiltList,
    [FullType(Uri)],
  ): _i37.ListBuilder<Uri>.new,
  const FullType(
    _i37.BuiltList,
    [FullType(String)],
  ): _i37.ListBuilder<String>.new,
  const FullType(
    _i37.BuiltList,
    [FullType(_i14.AWSAuthProvider)],
  ): _i37.ListBuilder<_i14.AWSAuthProvider>.new,
  const FullType(
    _i37.BuiltSet,
    [FullType(_i15.AWSAuthUsernameAttribute)],
  ): _i37.SetBuilder<_i15.AWSAuthUsernameAttribute>.new,
  const FullType(
    _i37.BuiltSet,
    [FullType(_i38.CognitoUserAttributeKey)],
  ): _i37.SetBuilder<_i38.CognitoUserAttributeKey>.new,
  const FullType(
    _i37.BuiltMap,
    [
      FullType(_i38.Category),
      FullType(_i38.LogLevel),
    ],
  ): _i37.MapBuilder<_i38.Category, _i38.LogLevel>.new,
  const FullType(
    _i37.BuiltMap,
    [
      FullType(String),
      FullType(_i24.UserLogLevel),
    ],
  ): _i37.MapBuilder<String, _i24.UserLogLevel>.new,
  const FullType(
    _i37.BuiltMap,
    [
      FullType(String),
      FullType(_i31.AWSStorageS3Bucket),
    ],
  ): _i37.MapBuilder<String, _i31.AWSStorageS3Bucket>.new,
  const FullType(
    _i37.BuiltList,
    [FullType(_i35.ValidationExceptionField)],
  ): _i37.ListBuilder<_i35.ValidationExceptionField>.new,
};
