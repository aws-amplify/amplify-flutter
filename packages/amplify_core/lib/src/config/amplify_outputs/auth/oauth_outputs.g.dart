// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'oauth_outputs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OAuthOutputs _$OAuthOutputsFromJson(Map<String, dynamic> json) => OAuthOutputs(
      identityProviders: (json['identity_providers'] as List<dynamic>)
          .map((e) => $enumDecode(_$IdentityProviderEnumMap, e))
          .toList(),
      domain: json['domain'] as String,
      scopes:
          (json['scopes'] as List<dynamic>).map((e) => e as String).toList(),
      redirectSignInUri: (json['redirect_sign_in_uri'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      signInUri: json['sign_in_uri'] as String?,
      signInUriQueryParameters:
          (json['sign_in_uri_query_parameters'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      redirectSignOutUri: (json['redirect_sign_out_uri'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      signOutUri: json['sign_out_uri'] as String?,
      signOutUriQueryParameters:
          (json['sign_out_uri_query_parameters'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      tokenUri: json['token_uri'] as String?,
      tokenUriQueryParameters:
          (json['token_uri_query_parameters'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      responseType:
          $enumDecode(_$OAuthResponseTypeEnumMap, json['response_type']),
    );

Map<String, dynamic> _$OAuthOutputsToJson(OAuthOutputs instance) {
  final val = <String, dynamic>{
    'identity_providers': instance.identityProviders
        .map((e) => _$IdentityProviderEnumMap[e]!)
        .toList(),
    'domain': instance.domain,
    'scopes': instance.scopes,
    'redirect_sign_in_uri': instance.redirectSignInUri,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sign_in_uri', instance.signInUri);
  writeNotNull(
      'sign_in_uri_query_parameters', instance.signInUriQueryParameters);
  val['redirect_sign_out_uri'] = instance.redirectSignOutUri;
  writeNotNull('sign_out_uri', instance.signOutUri);
  writeNotNull(
      'sign_out_uri_query_parameters', instance.signOutUriQueryParameters);
  writeNotNull('token_uri', instance.tokenUri);
  writeNotNull('token_uri_query_parameters', instance.tokenUriQueryParameters);
  val['response_type'] = _$OAuthResponseTypeEnumMap[instance.responseType]!;
  return val;
}

const _$IdentityProviderEnumMap = {
  IdentityProvider.facebook: 'FACEBOOK',
  IdentityProvider.google: 'GOOGLE',
  IdentityProvider.amazon: 'LOGIN_WITH_AMAZON',
  IdentityProvider.apple: 'SIGN_IN_WITH_APPLE',
};

const _$OAuthResponseTypeEnumMap = {
  OAuthResponseType.code: 'code',
  OAuthResponseType.token: 'token',
};
