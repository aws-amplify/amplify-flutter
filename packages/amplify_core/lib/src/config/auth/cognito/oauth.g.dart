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
