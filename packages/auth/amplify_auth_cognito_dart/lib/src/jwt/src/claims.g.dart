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
      'iss': ?instance.issuer,
      'sub': ?instance.subject,
      'aud': ?instance.audience,
      'exp': ?encodeDateTime(instance.expiration),
      'nbf': ?encodeDateTime(instance.notBefore),
      'iat': ?encodeDateTime(instance.issuedAt),
      'jti': ?instance.jwtId,
    };
