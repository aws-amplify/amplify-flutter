// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'oauth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoOAuthConfig _$CognitoOAuthConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CognitoOAuthConfig',
      json,
      ($checkedConvert) {
        final val = CognitoOAuthConfig(
          appClientId: $checkedConvert('AppClientId', (v) => v as String),
          appClientSecret: $checkedConvert(
            'AppClientSecret',
            (v) => v as String?,
          ),
          scopes: $checkedConvert(
            'Scopes',
            (v) => (v as List<dynamic>).map((e) => e as String).toList(),
          ),
          signInRedirectUri: $checkedConvert(
            'SignInRedirectURI',
            (v) => v as String,
          ),
          signOutRedirectUri: $checkedConvert(
            'SignOutRedirectURI',
            (v) => v as String,
          ),
          webDomain: $checkedConvert('WebDomain', (v) => v as String),
          signInUri: $checkedConvert('SignInURI', (v) => v as String?),
          signOutUri: $checkedConvert('SignOutURI', (v) => v as String?),
          tokenUri: $checkedConvert('TokenURI', (v) => v as String?),
          signInUriQueryParameters: $checkedConvert(
            'SignInURIQueryParameters',
            (v) => (v as Map<String, dynamic>?)?.map(
              (k, e) => MapEntry(k, e as String),
            ),
          ),
          signOutUriQueryParameters: $checkedConvert(
            'SignOutURIQueryParameters',
            (v) => (v as Map<String, dynamic>?)?.map(
              (k, e) => MapEntry(k, e as String),
            ),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'appClientId': 'AppClientId',
        'appClientSecret': 'AppClientSecret',
        'scopes': 'Scopes',
        'signInRedirectUri': 'SignInRedirectURI',
        'signOutRedirectUri': 'SignOutRedirectURI',
        'webDomain': 'WebDomain',
        'signInUri': 'SignInURI',
        'signOutUri': 'SignOutURI',
        'tokenUri': 'TokenURI',
        'signInUriQueryParameters': 'SignInURIQueryParameters',
        'signOutUriQueryParameters': 'SignOutURIQueryParameters',
      },
    );

Map<String, dynamic> _$CognitoOAuthConfigToJson(CognitoOAuthConfig instance) =>
    <String, dynamic>{
      'WebDomain': instance.webDomain,
      'AppClientId': instance.appClientId,
      if (instance.appClientSecret case final value?) 'AppClientSecret': value,
      'SignInRedirectURI': instance.signInRedirectUri,
      if (instance.signInUri case final value?) 'SignInURI': value,
      if (instance.signInUriQueryParameters case final value?)
        'SignInURIQueryParameters': value,
      'SignOutRedirectURI': instance.signOutRedirectUri,
      if (instance.signOutUri case final value?) 'SignOutURI': value,
      if (instance.signOutUriQueryParameters case final value?)
        'SignOutURIQueryParameters': value,
      if (instance.tokenUri case final value?) 'TokenURI': value,
      'Scopes': instance.scopes,
    };
