// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appsync.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoAppSyncConfig _$CognitoAppSyncConfigFromJson(
        Map<String, dynamic> json) =>
    CognitoAppSyncConfig(
      apiUrl: json['ApiUrl'] as String,
      region: json['Region'] as String,
      authMode: $enumDecode(_$APIAuthorizationModeEnumMap, json['AuthMode']),
      apiKey: json['ApiKey'] as String?,
      clientDatabasePrefix: json['ClientDatabasePrefix'] as String,
    );

Map<String, dynamic> _$CognitoAppSyncConfigToJson(
    CognitoAppSyncConfig instance) {
  final val = <String, dynamic>{
    'ApiUrl': instance.apiUrl,
    'Region': instance.region,
    'AuthMode': _$APIAuthorizationModeEnumMap[instance.authMode]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ApiKey', instance.apiKey);
  val['ClientDatabasePrefix'] = instance.clientDatabasePrefix;
  return val;
}

const _$APIAuthorizationModeEnumMap = {
  APIAuthorizationMode.none: 'NONE',
  APIAuthorizationMode.apiKey: 'API_KEY',
  APIAuthorizationMode.iam: 'AWS_IAM',
  APIAuthorizationMode.oidc: 'OPENID_CONNECT',
  APIAuthorizationMode.userPools: 'AMAZON_COGNITO_USER_POOLS',
  APIAuthorizationMode.function: 'AWS_LAMBDA',
};
