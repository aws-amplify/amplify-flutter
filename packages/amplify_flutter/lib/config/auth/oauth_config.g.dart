// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oauth_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OAuthConfig _$OAuthConfigFromJson(Map<String, dynamic> json) {
  return OAuthConfig(
    webDomain: json['WebDomain'] as String?,
    appClientId: json['AppClientId'] as String?,
    signInRedirectURI: json['SignInRedirectURI'] as String?,
    signOutRedirectURI: json['SignOutRedirectURI'] as String?,
    scopes: (json['Scopes'] as List<dynamic>?)
        ?.map((e) => _$enumDecode(_$OAuthScopesEnumMap, e))
        .toList(),
  );
}

Map<String, dynamic> _$OAuthConfigToJson(OAuthConfig instance) =>
    <String, dynamic>{
      'WebDomain': instance.webDomain,
      'AppClientId': instance.appClientId,
      'SignInRedirectURI': instance.signInRedirectURI,
      'SignOutRedirectURI': instance.signOutRedirectURI,
      'Scopes': instance.scopes?.map((e) => _$OAuthScopesEnumMap[e]).toList(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$OAuthScopesEnumMap = {
  OAuthScopes.phone: 'phone',
  OAuthScopes.email: 'email',
  OAuthScopes.openid: 'openid',
  OAuthScopes.profile: 'profile',
  OAuthScopes.awsCognitoSigninUserAdmin: 'aws.cognito.signin.user.admin',
};
