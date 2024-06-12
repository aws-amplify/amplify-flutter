// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'appsync.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoAppSyncConfig _$CognitoAppSyncConfigFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CognitoAppSyncConfig',
      json,
      ($checkedConvert) {
        final val = CognitoAppSyncConfig(
          apiUrl: $checkedConvert('ApiUrl', (v) => v as String),
          region: $checkedConvert('Region', (v) => v as String),
          authMode: $checkedConvert(
              'AuthMode', (v) => $enumDecode(_$APIAuthorizationTypeEnumMap, v)),
          apiKey: $checkedConvert('ApiKey', (v) => v as String?),
          clientDatabasePrefix:
              $checkedConvert('ClientDatabasePrefix', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'apiUrl': 'ApiUrl',
        'region': 'Region',
        'authMode': 'AuthMode',
        'apiKey': 'ApiKey',
        'clientDatabasePrefix': 'ClientDatabasePrefix'
      },
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
