// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'data_outputs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataOutputs _$DataOutputsFromJson(Map<String, dynamic> json) => $checkedCreate(
  'DataOutputs',
  json,
  ($checkedConvert) {
    final val = DataOutputs(
      awsRegion: $checkedConvert('aws_region', (v) => v as String),
      url: $checkedConvert('url', (v) => v as String),
      apiKey: $checkedConvert('api_key', (v) => v as String?),
      defaultAuthorizationType: $checkedConvert(
        'default_authorization_type',
        (v) => $enumDecode(_$APIAuthorizationTypeEnumMap, v),
      ),
      authorizationTypes: $checkedConvert(
        'authorization_types',
        (v) => (v as List<dynamic>)
            .map((e) => $enumDecode(_$APIAuthorizationTypeEnumMap, e))
            .toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'awsRegion': 'aws_region',
    'apiKey': 'api_key',
    'defaultAuthorizationType': 'default_authorization_type',
    'authorizationTypes': 'authorization_types',
  },
);

Map<String, dynamic> _$DataOutputsToJson(DataOutputs instance) =>
    <String, dynamic>{
      'aws_region': instance.awsRegion,
      'url': instance.url,
      if (instance.apiKey case final value?) 'api_key': value,
      'default_authorization_type':
          _$APIAuthorizationTypeEnumMap[instance.defaultAuthorizationType]!,
      'authorization_types': instance.authorizationTypes
          .map((e) => _$APIAuthorizationTypeEnumMap[e]!)
          .toList(),
    };

const _$APIAuthorizationTypeEnumMap = {
  APIAuthorizationType.none: 'NONE',
  APIAuthorizationType.apiKey: 'API_KEY',
  APIAuthorizationType.iam: 'AWS_IAM',
  APIAuthorizationType.oidc: 'OPENID_CONNECT',
  APIAuthorizationType.userPools: 'AMAZON_COGNITO_USER_POOLS',
  APIAuthorizationType.function: 'AWS_LAMBDA',
};
