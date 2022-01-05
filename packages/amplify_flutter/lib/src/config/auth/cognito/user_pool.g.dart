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

part of 'user_pool.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoUserPoolConfig _$CognitoUserPoolConfigFromJson(
        Map<String, dynamic> json) =>
    CognitoUserPoolConfig(
      poolId: json['PoolId'] as String,
      appClientId: json['AppClientId'] as String,
      appClientSecret: json['AppClientSecret'] as String?,
      region: json['Region'] as String,
      hostedUI: json['HostedUI'] == null
          ? null
          : CognitoOAuthConfig.fromJson(
              json['HostedUI'] as Map<String, dynamic>),
      endpoint: json['Endpoint'] as String?,
    );

Map<String, dynamic> _$CognitoUserPoolConfigToJson(
    CognitoUserPoolConfig instance) {
  final val = <String, dynamic>{
    'PoolId': instance.poolId,
    'AppClientId': instance.appClientId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AppClientSecret', instance.appClientSecret);
  val['Region'] = instance.region;
  writeNotNull('HostedUI', instance.hostedUI?.toJson());
  writeNotNull('Endpoint', instance.endpoint);
  return val;
}
