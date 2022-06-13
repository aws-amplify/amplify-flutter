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
      x509CertChain:
          (json['x5c'] as List<dynamic>?)?.map((e) => e as String).toList(),
      x509sha1Thumbprint:
          (json['x5t'] as List<dynamic>?)?.map((e) => e as String).toList(),
      x509sha256Thumbprint: json['x5t#S256'] as String?,
      x509Uri: json['x5u'] == null ? null : Uri.parse(json['x5u'] as String),
      type: json['typ'] as String?,
      contentType: json['cty'] as String?,
      critical:
          (json['crit'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$JsonWebHeaderToJson(JsonWebHeader instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('alg', AlgorithmX.toJson(instance.algorithm));
  writeNotNull('jku', instance.jwkSetUri?.toString());
  writeNotNull('jwk', instance.jwk?.toJson());
  writeNotNull('kid', instance.keyId);
  writeNotNull('x5u', instance.x509Uri?.toString());
  writeNotNull('x5c', instance.x509CertChain);
  writeNotNull('x5t', instance.x509sha1Thumbprint);
  writeNotNull('x5t#S256', instance.x509sha256Thumbprint);
  writeNotNull('typ', instance.type);
  writeNotNull('cty', instance.contentType);
  writeNotNull('crit', instance.critical);
  return val;
}
