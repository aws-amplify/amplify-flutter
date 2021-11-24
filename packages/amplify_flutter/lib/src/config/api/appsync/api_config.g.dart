//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwsApiConfig _$AwsApiConfigFromJson(Map<String, dynamic> json) => AwsApiConfig(
      endpointType: $enumDecode(_$EndpointTypeEnumMap, json['endpointType']),
      endpoint: json['endpoint'] as String,
      region: json['region'] as String,
      authorizationType:
          $enumDecode(_$ApiAuthorizationTypeEnumMap, json['authorizationType']),
      apiKey: json['apiKey'] as String?,
    );

Map<String, dynamic> _$AwsApiConfigToJson(AwsApiConfig instance) {
  final val = <String, dynamic>{
    'endpointType': _$EndpointTypeEnumMap[instance.endpointType],
    'endpoint': instance.endpoint,
    'region': instance.region,
    'authorizationType':
        _$ApiAuthorizationTypeEnumMap[instance.authorizationType],
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

const _$ApiAuthorizationTypeEnumMap = {
  ApiAuthorizationType.none: 'NONE',
  ApiAuthorizationType.apiKey: 'API_KEY',
  ApiAuthorizationType.iam: 'AWS_IAM',
  ApiAuthorizationType.oidc: 'OPENID_CONNECT',
  ApiAuthorizationType.userPools: 'AMAZON_COGNITO_USER_POOLS',
  ApiAuthorizationType.function: 'AWS_LAMBDA',
};
