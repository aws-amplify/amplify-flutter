// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'rest_api_outputs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestApiOutputs _$RestApiOutputsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'RestApiOutputs',
      json,
      ($checkedConvert) {
        final val = RestApiOutputs(
          awsRegion: $checkedConvert('aws_region', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          apiKey: $checkedConvert('api_key', (v) => v as String?),
          authorizationType: $checkedConvert('authorization_type',
              (v) => $enumDecode(_$APIAuthorizationTypeEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {
        'awsRegion': 'aws_region',
        'apiKey': 'api_key',
        'authorizationType': 'authorization_type'
      },
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
