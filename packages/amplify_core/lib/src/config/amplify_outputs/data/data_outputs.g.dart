// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'data_outputs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataOutputs _$DataOutputsFromJson(Map<String, dynamic> json) => DataOutputs(
      awsRegion: json['aws_region'] as String,
      url: json['url'] as String,
      apiKey: json['api_key'] as String?,
      defaultAuthorizationType: $enumDecode(
          _$APIAuthorizationTypeEnumMap, json['default_authorization_type']),
      authorizationTypes: (json['authorization_types'] as List<dynamic>)
          .map((e) => $enumDecode(_$APIAuthorizationTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$DataOutputsToJson(DataOutputs instance) {
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
  val['default_authorization_type'] =
      _$APIAuthorizationTypeEnumMap[instance.defaultAuthorizationType]!;
  val['authorization_types'] = instance.authorizationTypes
      .map((e) => _$APIAuthorizationTypeEnumMap[e]!)
      .toList();
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
