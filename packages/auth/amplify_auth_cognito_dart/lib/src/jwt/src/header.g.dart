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
      if (AlgorithmX.toJson(instance.algorithm) case final value?) 'alg': value,
      if (instance.jwkSetUri?.toString() case final value?) 'jku': value,
      if (instance.jwk?.toJson() case final value?) 'jwk': value,
      if (instance.keyId case final value?) 'kid': value,
      if (instance.x509Uri?.toString() case final value?) 'x5u': value,
      if (instance.x509CertChain case final value?) 'x5c': value,
      if (instance.x509sha1Thumbprint case final value?) 'x5t': value,
      if (instance.x509sha256Thumbprint case final value?) 'x5t#S256': value,
      if (instance.type case final value?) 'typ': value,
      if (instance.contentType case final value?) 'cty': value,
      if (instance.critical case final value?) 'crit': value,
    };
