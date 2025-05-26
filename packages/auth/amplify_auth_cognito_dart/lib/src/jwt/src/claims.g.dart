// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claims.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsonWebClaims _$JsonWebClaimsFromJson(Map<String, dynamic> json) =>
    JsonWebClaims(
      issuer: json['iss'] as String?,
      subject: json['sub'] as String?,
      audience: json['aud'] as String?,
      expiration: decodeDateTime(json['exp'] as num?),
      notBefore: decodeDateTime(json['nbf'] as num?),
      issuedAt: decodeDateTime(json['iat'] as num?),
      jwtId: json['jti'] as String?,
    );

Map<String, dynamic> _$JsonWebClaimsToJson(JsonWebClaims instance) =>
    <String, dynamic>{
      if (instance.issuer case final value?) 'iss': value,
      if (instance.subject case final value?) 'sub': value,
      if (instance.audience case final value?) 'aud': value,
      if (encodeDateTime(instance.expiration) case final value?) 'exp': value,
      if (encodeDateTime(instance.notBefore) case final value?) 'nbf': value,
      if (encodeDateTime(instance.issuedAt) case final value?) 'iat': value,
      if (instance.jwtId case final value?) 'jti': value,
    };
