// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoPluginConfig _$CognitoPluginConfigFromJson(Map<String, dynamic> json) =>
    CognitoPluginConfig(
      userAgent: json['UserAgent'] as String? ?? 'aws-amplify-cli/0.1.0',
      version: json['Version'] as String? ?? '0.1.0',
      identityManager: json['IdentityManager'] == null
          ? null
          : AWSConfigMap<CognitoIdentityManager>.fromJson(
              json['IdentityManager'] as Map<String, dynamic>,
              (value) => CognitoIdentityManager.fromJson(
                  value as Map<String, dynamic>)),
      credentialsProvider: json['CredentialsProvider'] == null
          ? null
          : CredentialsProviders.fromJson(
              json['CredentialsProvider'] as Map<String, dynamic>),
      cognitoUserPool: json['CognitoUserPool'] == null
          ? null
          : AWSConfigMap<CognitoUserPoolConfig>.fromJson(
              json['CognitoUserPool'] as Map<String, dynamic>,
              (value) => CognitoUserPoolConfig.fromJson(
                  value as Map<String, dynamic>)),
      auth: json['Auth'] == null
          ? null
          : AWSConfigMap<CognitoAuthConfig>.fromJson(
              json['Auth'] as Map<String, dynamic>,
              (value) =>
                  CognitoAuthConfig.fromJson(value as Map<String, dynamic>)),
      appSync: json['AppSync'] == null
          ? null
          : AWSConfigMap<CognitoAppSyncConfig>.fromJson(
              json['AppSync'] as Map<String, dynamic>,
              (value) =>
                  CognitoAppSyncConfig.fromJson(value as Map<String, dynamic>)),
      pinpointAnalytics: json['PinpointAnalytics'] == null
          ? null
          : AWSConfigMap<CognitoPinpointAnalyticsConfig>.fromJson(
              json['PinpointAnalytics'] as Map<String, dynamic>,
              (value) => CognitoPinpointAnalyticsConfig.fromJson(
                  value as Map<String, dynamic>)),
      pinpointTargeting: json['PinpointTargeting'] == null
          ? null
          : AWSConfigMap<CognitoPinpointTargetingConfig>.fromJson(
              json['PinpointTargeting'] as Map<String, dynamic>,
              (value) => CognitoPinpointTargetingConfig.fromJson(
                  value as Map<String, dynamic>)),
      s3TransferUtility: json['S3TransferUtility'] == null
          ? null
          : AWSConfigMap<S3TransferUtility>.fromJson(
              json['S3TransferUtility'] as Map<String, dynamic>,
              (value) =>
                  S3TransferUtility.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$CognitoPluginConfigToJson(CognitoPluginConfig instance) {
  final val = <String, dynamic>{
    'UserAgent': instance.userAgent,
    'Version': instance.version,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('IdentityManager', instance.identityManager?.toJson());
  writeNotNull('CredentialsProvider', instance.credentialsProvider?.toJson());
  writeNotNull('CognitoUserPool', instance.cognitoUserPool?.toJson());
  writeNotNull('Auth', instance.auth?.toJson());
  writeNotNull('AppSync', instance.appSync?.toJson());
  writeNotNull('PinpointAnalytics', instance.pinpointAnalytics?.toJson());
  writeNotNull('PinpointTargeting', instance.pinpointTargeting?.toJson());
  writeNotNull('S3TransferUtility', instance.s3TransferUtility?.toJson());
  return val;
}
