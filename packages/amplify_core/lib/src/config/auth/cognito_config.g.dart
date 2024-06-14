// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'cognito_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoPluginConfig _$CognitoPluginConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CognitoPluginConfig',
      json,
      ($checkedConvert) {
        final val = CognitoPluginConfig(
          userAgent: $checkedConvert(
              'UserAgent', (v) => v as String? ?? 'aws-amplify-cli/0.1.0'),
          version: $checkedConvert('Version', (v) => v as String? ?? '0.1.0'),
          identityManager: $checkedConvert(
              'IdentityManager',
              (v) => v == null
                  ? null
                  : AWSConfigMap<CognitoIdentityManager>.fromJson(
                      v as Map<String, dynamic>,
                      (value) => CognitoIdentityManager.fromJson(
                          value as Map<String, dynamic>))),
          credentialsProvider: $checkedConvert(
              'CredentialsProvider',
              (v) => v == null
                  ? null
                  : CredentialsProviders.fromJson(v as Map<String, dynamic>)),
          cognitoUserPool: $checkedConvert(
              'CognitoUserPool',
              (v) => v == null
                  ? null
                  : AWSConfigMap<CognitoUserPoolConfig>.fromJson(
                      v as Map<String, dynamic>,
                      (value) => CognitoUserPoolConfig.fromJson(
                          value as Map<String, dynamic>))),
          auth: $checkedConvert(
              'Auth',
              (v) => v == null
                  ? null
                  : AWSConfigMap<CognitoAuthConfig>.fromJson(
                      v as Map<String, dynamic>,
                      (value) => CognitoAuthConfig.fromJson(
                          value as Map<String, dynamic>))),
          appSync: $checkedConvert(
              'AppSync',
              (v) => v == null
                  ? null
                  : AWSConfigMap<CognitoAppSyncConfig>.fromJson(
                      v as Map<String, dynamic>,
                      (value) => CognitoAppSyncConfig.fromJson(
                          value as Map<String, dynamic>))),
          pinpointAnalytics: $checkedConvert(
              'PinpointAnalytics',
              (v) => v == null
                  ? null
                  : AWSConfigMap<CognitoPinpointAnalyticsConfig>.fromJson(
                      v as Map<String, dynamic>,
                      (value) => CognitoPinpointAnalyticsConfig.fromJson(
                          value as Map<String, dynamic>))),
          pinpointTargeting: $checkedConvert(
              'PinpointTargeting',
              (v) => v == null
                  ? null
                  : AWSConfigMap<CognitoPinpointTargetingConfig>.fromJson(
                      v as Map<String, dynamic>,
                      (value) => CognitoPinpointTargetingConfig.fromJson(
                          value as Map<String, dynamic>))),
          s3TransferUtility: $checkedConvert(
              'S3TransferUtility',
              (v) => v == null
                  ? null
                  : AWSConfigMap<S3TransferUtility>.fromJson(
                      v as Map<String, dynamic>,
                      (value) => S3TransferUtility.fromJson(
                          value as Map<String, dynamic>))),
        );
        return val;
      },
      fieldKeyMap: const {
        'userAgent': 'UserAgent',
        'version': 'Version',
        'identityManager': 'IdentityManager',
        'credentialsProvider': 'CredentialsProvider',
        'cognitoUserPool': 'CognitoUserPool',
        'auth': 'Auth',
        'appSync': 'AppSync',
        'pinpointAnalytics': 'PinpointAnalytics',
        'pinpointTargeting': 'PinpointTargeting',
        's3TransferUtility': 'S3TransferUtility'
      },
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
