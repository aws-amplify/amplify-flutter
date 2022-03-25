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

part of 'amplify_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmplifyConfig _$AmplifyConfigFromJson(Map<String, dynamic> json) =>
    AmplifyConfig(
      userAgent: json['UserAgent'] as String? ?? 'aws-amplify-cli/2.0',
      version: json['Version'] as String? ?? '1.0',
      api: json['api'] == null
          ? null
          : ApiConfig.fromJson(json['api'] as Map<String, dynamic>),
      analytics: json['analytics'] == null
          ? null
          : AnalyticsConfig.fromJson(json['analytics'] as Map<String, dynamic>),
      auth: json['auth'] == null
          ? null
          : AuthConfig.fromJson(json['auth'] as Map<String, dynamic>),
      storage: json['storage'] == null
          ? null
          : StorageConfig.fromJson(json['storage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AmplifyConfigToJson(AmplifyConfig instance) {
  final val = <String, dynamic>{
    'UserAgent': instance.userAgent,
    'Version': instance.version,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('api', instance.api?.toJson());
  writeNotNull('analytics', instance.analytics?.toJson());
  writeNotNull('auth', instance.auth?.toJson());
  writeNotNull('storage', instance.storage?.toJson());
  return val;
}
