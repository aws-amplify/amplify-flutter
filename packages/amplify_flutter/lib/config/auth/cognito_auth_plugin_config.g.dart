// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_auth_plugin_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoAuthPluginConfig _$CognitoAuthPluginConfigFromJson(
    Map<String, dynamic> json) {
  return CognitoAuthPluginConfig(
    userPool: (json['CognitoUserPool'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          k, CognitoUserPoolConfig.fromJson(e as Map<String, dynamic>)),
    ),
    credentialProvider:
        (json['CredentialsProvider'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          k,
          (e as Map<String, dynamic>).map(
            (k, e) => MapEntry(k,
                CredentialProviderConfig.fromJson(e as Map<String, dynamic>)),
          )),
    ),
    auth: (json['Auth'] as Map<String, dynamic>?)?.map(
      (k, e) =>
          MapEntry(k, AuthBlockConfig.fromJson(e as Map<String, dynamic>)),
    ),
    appSync: (json['AppSync'] as Map<String, dynamic>?)?.map(
      (k, e) =>
          MapEntry(k, AppSyncAuthConfig.fromJson(e as Map<String, dynamic>)),
    ),
    pinpointAnalytics:
        (json['PinpointAnalytics'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          k, PinpointAnalyticsAuthConfig.fromJson(e as Map<String, dynamic>)),
    ),
    pinpointTargeting:
        (json['PinpointTargeting'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          k, PinpointTargetingAuthConfig.fromJson(e as Map<String, dynamic>)),
    ),
    s3TransferUtility:
        (json['S3TransferUtility'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          k, S3TransferUtilityAuthConfig.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$CognitoAuthPluginConfigToJson(
        CognitoAuthPluginConfig instance) =>
    <String, dynamic>{
      'CognitoUserPool': instance.userPool,
      'CredentialsProvider': instance.credentialProvider,
      'Auth': instance.auth,
      'AppSync': instance.appSync,
      'PinpointAnalytics': instance.pinpointAnalytics,
      'PinpointTargeting': instance.pinpointTargeting,
      'S3TransferUtility': instance.s3TransferUtility,
    };
