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
          appClientSecret:
              $checkedConvert('AppClientSecret', (v) => v as String?),
          scopes: $checkedConvert('Scopes',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          signInRedirectUri:
              $checkedConvert('SignInRedirectURI', (v) => v as String),
          signOutRedirectUri:
              $checkedConvert('SignOutRedirectURI', (v) => v as String),
          webDomain: $checkedConvert('WebDomain', (v) => v as String),
          signInUri: $checkedConvert('SignInURI', (v) => v as String?),
          signOutUri: $checkedConvert('SignOutURI', (v) => v as String?),
          tokenUri: $checkedConvert('TokenURI', (v) => v as String?),
          signInUriQueryParameters: $checkedConvert(
              'SignInURIQueryParameters',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          signOutUriQueryParameters: $checkedConvert(
              'SignOutURIQueryParameters',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          tokenUriQueryParameters: $checkedConvert(
              'TokenURIQueryParameters',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
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
        'tokenUriQueryParameters': 'TokenURIQueryParameters'
      },
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
