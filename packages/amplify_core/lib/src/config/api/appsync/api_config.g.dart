// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWSApiConfig _$AWSApiConfigFromJson(Map<String, dynamic> json) => AWSApiConfig(
      endpointType: $enumDecode(_$EndpointTypeEnumMap, json['endpointType']),
      endpoint: json['endpoint'] as String,
      region: json['region'] as String,
      authorizationType:
          $enumDecode(_$APIAuthorizationModeEnumMap, json['authorizationType']),
      apiKey: json['apiKey'] as String?,
    );

Map<String, dynamic> _$AWSApiConfigToJson(AWSApiConfig instance) {
  final val = <String, dynamic>{
    'endpointType': _$EndpointTypeEnumMap[instance.endpointType]!,
    'endpoint': instance.endpoint,
    'region': instance.region,
    'authorizationType':
        _$APIAuthorizationModeEnumMap[instance.authorizationType]!,
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

const _$APIAuthorizationModeEnumMap = {
  APIAuthorizationMode.none: 'NONE',
  APIAuthorizationMode.apiKey: 'API_KEY',
  APIAuthorizationMode.iam: 'AWS_IAM',
  APIAuthorizationMode.oidc: 'OPENID_CONNECT',
  APIAuthorizationMode.userPools: 'AMAZON_COGNITO_USER_POOLS',
  APIAuthorizationMode.function: 'AWS_LAMBDA',
};
