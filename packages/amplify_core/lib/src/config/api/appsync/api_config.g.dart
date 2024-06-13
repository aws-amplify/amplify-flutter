// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'api_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWSApiConfig _$AWSApiConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AWSApiConfig',
      json,
      ($checkedConvert) {
        final val = AWSApiConfig(
          endpointType: $checkedConvert(
              'endpointType', (v) => $enumDecode(_$EndpointTypeEnumMap, v)),
          endpoint: $checkedConvert('endpoint', (v) => v as String),
          region: $checkedConvert('region', (v) => v as String),
          authorizationType: $checkedConvert('authorizationType',
              (v) => $enumDecode(_$APIAuthorizationTypeEnumMap, v)),
          apiKey: $checkedConvert('apiKey', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$AWSApiConfigToJson(AWSApiConfig instance) {
  final val = <String, dynamic>{
    'endpointType': _$EndpointTypeEnumMap[instance.endpointType]!,
    'endpoint': instance.endpoint,
    'region': instance.region,
    'authorizationType':
        _$APIAuthorizationTypeEnumMap[instance.authorizationType]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiKey', instance.apiKey);
  return val;
}

const _$EndpointTypeEnumMap = {
  EndpointType.rest: 'REST',
  EndpointType.graphQL: 'GraphQL',
};

const _$APIAuthorizationTypeEnumMap = {
  APIAuthorizationType.none: 'NONE',
  APIAuthorizationType.apiKey: 'API_KEY',
  APIAuthorizationType.iam: 'AWS_IAM',
  APIAuthorizationType.oidc: 'OPENID_CONNECT',
  APIAuthorizationType.userPools: 'AMAZON_COGNITO_USER_POOLS',
  APIAuthorizationType.function: 'AWS_LAMBDA',
};
