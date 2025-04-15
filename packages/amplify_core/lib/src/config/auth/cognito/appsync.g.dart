// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'appsync.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoAppSyncConfig _$CognitoAppSyncConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'CognitoAppSyncConfig',
  json,
  ($checkedConvert) {
    final val = CognitoAppSyncConfig(
      apiUrl: $checkedConvert('ApiUrl', (v) => v as String),
      region: $checkedConvert('Region', (v) => v as String),
      authMode: $checkedConvert(
        'AuthMode',
        (v) => $enumDecode(_$APIAuthorizationTypeEnumMap, v),
      ),
      apiKey: $checkedConvert('ApiKey', (v) => v as String?),
      clientDatabasePrefix: $checkedConvert(
        'ClientDatabasePrefix',
        (v) => v as String,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'apiUrl': 'ApiUrl',
    'region': 'Region',
    'authMode': 'AuthMode',
    'apiKey': 'ApiKey',
    'clientDatabasePrefix': 'ClientDatabasePrefix',
  },
);

Map<String, dynamic> _$CognitoAppSyncConfigToJson(
  CognitoAppSyncConfig instance,
) => <String, dynamic>{
  'ApiUrl': instance.apiUrl,
  'Region': instance.region,
  'AuthMode': _$APIAuthorizationTypeEnumMap[instance.authMode]!,
  if (instance.apiKey case final value?) 'ApiKey': value,
  'ClientDatabasePrefix': instance.clientDatabasePrefix,
};

const _$APIAuthorizationTypeEnumMap = {
  APIAuthorizationType.none: 'NONE',
  APIAuthorizationType.apiKey: 'API_KEY',
  APIAuthorizationType.iam: 'AWS_IAM',
  APIAuthorizationType.oidc: 'OPENID_CONNECT',
  APIAuthorizationType.userPools: 'AMAZON_COGNITO_USER_POOLS',
  APIAuthorizationType.function: 'AWS_LAMBDA',
};
