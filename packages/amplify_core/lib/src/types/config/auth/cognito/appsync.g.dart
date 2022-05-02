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

part of 'appsync.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoAppSyncConfig _$CognitoAppSyncConfigFromJson(
        Map<String, dynamic> json) =>
    CognitoAppSyncConfig(
      apiUrl: json['ApiUrl'] as String,
      region: json['Region'] as String,
      authMode: $enumDecode(_$APIAuthorizationTypeEnumMap, json['AuthMode']),
      apiKey: json['ApiKey'] as String?,
      clientDatabasePrefix: json['ClientDatabasePrefix'] as String,
    );

Map<String, dynamic> _$CognitoAppSyncConfigToJson(
    CognitoAppSyncConfig instance) {
  final val = <String, dynamic>{
    'ApiUrl': instance.apiUrl,
    'Region': instance.region,
    'AuthMode': _$APIAuthorizationTypeEnumMap[instance.authMode],
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
