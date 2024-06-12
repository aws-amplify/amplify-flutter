// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'rest_api_outputs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestApiOutputs _$RestApiOutputsFromJson(Map<String, dynamic> json) =>
    RestApiOutputs(
      awsRegion: json['aws_region'] as String,
      url: json['url'] as String,
      apiKey: json['api_key'] as String?,
      authorizationType: $enumDecode(
          _$APIAuthorizationTypeEnumMap, json['authorization_type']),
    );

Map<String, dynamic> _$RestApiOutputsToJson(RestApiOutputs instance) {
  final val = <String, dynamic>{
    'aws_region': instance.awsRegion,
    'url': instance.url,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('api_key', instance.apiKey);
  val['authorization_type'] =
      _$APIAuthorizationTypeEnumMap[instance.authorizationType]!;
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
