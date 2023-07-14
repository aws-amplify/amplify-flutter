// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AWSApiConfig _$AWSApiConfigFromJson(Map<String, dynamic> json) => AWSApiConfig(
      endpointType: $enumDecode(_$EndpointTypeEnumMap, json['endpointType']),
      endpoint: json['endpoint'] as String,
      region: json['region'] as String?,
      authorizationType: $enumDecodeNullable(
              _$APIAuthorizationTypeEnumMap, json['authorizationType']) ??
          APIAuthorizationType.none,
      apiKey: json['apiKey'] as String?,
    );

Map<String, dynamic> _$AWSApiConfigToJson(AWSApiConfig instance) {
  final val = <String, dynamic>{
    'endpointType': _$EndpointTypeEnumMap[instance.endpointType]!,
    'endpoint': instance.endpoint,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('region', instance.region);
  val['authorizationType'] =
      _$APIAuthorizationTypeEnumMap[instance.authorizationType]!;
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
