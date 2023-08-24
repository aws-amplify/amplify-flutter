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
      authMode: $enumDecode(_$APIAuthorizationTypeEnumMap, json['AuthMode']),
      apiKey: json['ApiKey'] as String?,
      clientDatabasePrefix: json['ClientDatabasePrefix'] as String,
    );

Map<String, dynamic> _$CognitoAppSyncConfigToJson(
    CognitoAppSyncConfig instance) {
  final val = <String, dynamic>{
    'ApiUrl': instance.apiUrl,
    'Region': instance.region,
    'AuthMode': _$APIAuthorizationTypeEnumMap[instance.authMode]!,
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

const _$APIAuthorizationTypeEnumMap = {
  APIAuthorizationType.none: 'NONE',
  APIAuthorizationType.apiKey: 'API_KEY',
  APIAuthorizationType.iam: 'AWS_IAM',
  APIAuthorizationType.oidc: 'OPENID_CONNECT',
  APIAuthorizationType.userPools: 'AMAZON_COGNITO_USER_POOLS',
  APIAuthorizationType.function: 'AWS_LAMBDA',
};
