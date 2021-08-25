// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oauth_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OAuthConfig _$OAuthConfigFromJson(Map<String, dynamic> json) {
  return OAuthConfig(
    webDomain: json['WebDomain'] as String,
    appClientId: json['AppClientId'] as String,
    signInRedirectURI: json['SignInRedirectURI'] as String,
    signOutRedirectURI: json['SignOutRedirectURI'] as String,
    scopes: (json['Scopes'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$OAuthConfigToJson(OAuthConfig instance) =>
    <String, dynamic>{
      'WebDomain': instance.webDomain,
      'AppClientId': instance.appClientId,
      'SignInRedirectURI': instance.signInRedirectURI,
      'SignOutRedirectURI': instance.signOutRedirectURI,
      'Scopes': instance.scopes,
    };
