// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsonWebHeader _$JsonWebHeaderFromJson(Map<String, dynamic> json) =>
    JsonWebHeader(
      algorithm: AlgorithmX.fromJson(json['alg'] as String),
      jwkSetUri: json['jku'] == null ? null : Uri.parse(json['jku'] as String),
      jwk: json['jwk'] == null
          ? null
          : JsonWebKey.fromJson(json['jwk'] as Map<String, dynamic>),
      keyId: json['kid'] as String?,
      x509CertChain: (json['x5c'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      x509sha1Thumbprint: (json['x5t'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      x509sha256Thumbprint: json['x5t#S256'] as String?,
      x509Uri: json['x5u'] == null ? null : Uri.parse(json['x5u'] as String),
      type: json['typ'] as String?,
      contentType: json['cty'] as String?,
      critical: (json['crit'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$JsonWebHeaderToJson(JsonWebHeader instance) =>
    <String, dynamic>{
      'alg': ?AlgorithmX.toJson(instance.algorithm),
      'jku': ?instance.jwkSetUri?.toString(),
      'jwk': ?instance.jwk?.toJson(),
      'kid': ?instance.keyId,
      'x5u': ?instance.x509Uri?.toString(),
      'x5c': ?instance.x509CertChain,
      'x5t': ?instance.x509sha1Thumbprint,
      'x5t#S256': ?instance.x509sha256Thumbprint,
      'typ': ?instance.type,
      'cty': ?instance.contentType,
      'crit': ?instance.critical,
    };
