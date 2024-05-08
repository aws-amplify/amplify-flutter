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
      redirectSignOutUri: (json['redirect_sign_out_uri'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      responseType: $enumDecode(_$ResponseTypeEnumMap, json['response_type']),
    );

Map<String, dynamic> _$OAuthOutputsToJson(OAuthOutputs instance) =>
    <String, dynamic>{
      'identity_providers': instance.identityProviders
          .map((e) => _$IdentityProviderEnumMap[e]!)
          .toList(),
      'domain': instance.domain,
      'scopes': instance.scopes,
      'redirect_sign_in_uri': instance.redirectSignInUri,
      'redirect_sign_out_uri': instance.redirectSignOutUri,
      'response_type': _$ResponseTypeEnumMap[instance.responseType]!,
    };

const _$IdentityProviderEnumMap = {
  IdentityProvider.facebook: 'FACEBOOK',
  IdentityProvider.google: 'GOOGLE',
  IdentityProvider.amazon: 'LOGIN_WITH_AMAZON',
  IdentityProvider.apple: 'SIGN_IN_WITH_APPLE',
};

const _$ResponseTypeEnumMap = {
  ResponseType.code: 'code',
  ResponseType.token: 'token',
};
