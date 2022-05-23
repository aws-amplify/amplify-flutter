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

Map<String, dynamic> _$JsonWebClaimsToJson(JsonWebClaims instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('iss', instance.issuer);
  writeNotNull('sub', instance.subject);
  writeNotNull('aud', instance.audience);
  writeNotNull('exp', encodeDateTime(instance.expiration));
  writeNotNull('nbf', encodeDateTime(instance.notBefore));
  writeNotNull('iat', encodeDateTime(instance.issuedAt));
  writeNotNull('jti', instance.jwtId);
  return val;
}
