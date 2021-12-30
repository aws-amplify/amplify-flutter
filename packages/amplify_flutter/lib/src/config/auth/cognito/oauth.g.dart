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

part of 'oauth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoOAuthConfig _$CognitoOAuthConfigFromJson(Map<String, dynamic> json) =>
    CognitoOAuthConfig(
      appClientId: json['AppClientId'] as String,
      appClientSecret: json['AppClientSecret'] as String?,
      scopes:
          (json['Scopes'] as List<dynamic>).map((e) => e as String).toList(),
      signInRedirectUri: json['SignInRedirectURI'] as String,
      signOutRedirectUri: json['SignOutRedirectURI'] as String,
      webDomain: json['WebDomain'] as String,
      signInUri: json['SignInURI'] as String?,
      signOutUri: json['SignOutURI'] as String?,
      tokenUri: json['TokenURI'] as String?,
      signInUriQueryParameters:
          (json['SignInURIQueryParameters'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      signOutUriQueryParameters:
          (json['SignOutURIQueryParameters'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      tokenUriQueryParameters:
          (json['TokenURIQueryParameters'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$CognitoOAuthConfigToJson(CognitoOAuthConfig instance) {
  final val = <String, dynamic>{
    'WebDomain': instance.webDomain,
    'AppClientId': instance.appClientId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AppClientSecret', instance.appClientSecret);
  val['SignInRedirectURI'] = instance.signInRedirectUri;
  writeNotNull('SignInURI', instance.signInUri);
  writeNotNull('SignInURIQueryParameters', instance.signInUriQueryParameters);
  val['SignOutRedirectURI'] = instance.signOutRedirectUri;
  writeNotNull('SignOutURI', instance.signOutUri);
  writeNotNull('SignOutURIQueryParameters', instance.signOutUriQueryParameters);
  writeNotNull('TokenURI', instance.tokenUri);
  writeNotNull('TokenURIQueryParameters', instance.tokenUriQueryParameters);
  val['Scopes'] = instance.scopes;
  return val;
}
