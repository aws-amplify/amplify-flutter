// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsonWebKey _$JsonWebKeyFromJson(Map<String, dynamic> json) => JsonWebKey(
  keyType: KeyTypeX.fromJson(json['kty'] as String),
  publicKeyUse: PublicKeyUseX.fromJson(json['use'] as String?),
  keyOperations: (json['key_ops'] as List<dynamic>?)
      ?.map((e) => $enumDecode(_$KeyOperationEnumMap, e))
      .toList(),
  algorithm: AlgorithmX.tryFromJson(json['alg'] as String?),
  keyId: json['kid'] as String?,
  x509Url: json['x5u'] as String?,
  x509CertChain: (json['x5c'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  x509Sha1Thumbprint: json['x5t'] as String?,
  x509Sha256Thumbprint: json['x5t#S256'] as String?,
  ellipticCurve: EllipticCurveX.fromJson(json['crv'] as String?),
  x: base64UrlUintTryDecode(json['x'] as String?),
  y: base64UrlUintTryDecode(json['y'] as String?),
  n: base64UrlUintTryDecode(json['n'] as String?),
  e: base64UrlUintTryDecode(json['e'] as String?),
  k: symmetricKeyFromJson(json['k'] as String?),
  d: base64UrlUintTryDecode(json['d'] as String?),
  p: base64UrlUintTryDecode(json['p'] as String?),
  q: base64UrlUintTryDecode(json['q'] as String?),
  dp: base64UrlUintTryDecode(json['dp'] as String?),
  dq: base64UrlUintTryDecode(json['dq'] as String?),
  qi: base64UrlUintTryDecode(json['qi'] as String?),
  otherPrimes: (json['oth'] as List<dynamic>?)
      ?.map((e) => OtherPrime.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$JsonWebKeyToJson(JsonWebKey instance) =>
    <String, dynamic>{
      'kty': ?KeyTypeX.toJson(instance.keyType),
      'use': ?PublicKeyUseX.toJson(instance.publicKeyUse),
      'key_ops': ?instance.keyOperations
          ?.map((e) => _$KeyOperationEnumMap[e]!)
          .toList(),
      'alg': ?AlgorithmX.toJson(instance.algorithm),
      'kid': ?instance.keyId,
      'x5u': ?instance.x509Url,
      'x5c': ?instance.x509CertChain,
      'x5t': ?instance.x509Sha1Thumbprint,
      'x5t#S256': ?instance.x509Sha256Thumbprint,
      'crv': ?EllipticCurveX.toJson(instance.ellipticCurve),
      'x': ?base64UrlUintEncode(instance.x),
      'y': ?base64UrlUintEncode(instance.y),
      'n': ?base64UrlUintEncode(instance.n),
      'e': ?base64UrlUintEncode(instance.e),
      'k': ?symmetricKeyToJson(instance.k),
      'd': ?base64UrlUintEncode(instance.d),
      'p': ?base64UrlUintEncode(instance.p),
      'q': ?base64UrlUintEncode(instance.q),
      'dp': ?base64UrlUintEncode(instance.dp),
      'dq': ?base64UrlUintEncode(instance.dq),
      'qi': ?base64UrlUintEncode(instance.qi),
      'oth': ?instance.otherPrimes?.map((e) => e.toJson()).toList(),
    };

const _$KeyOperationEnumMap = {
  KeyOperation.sign: 'sign',
  KeyOperation.verify: 'verify',
  KeyOperation.encrypt: 'encrypt',
  KeyOperation.decrypt: 'decrypt',
  KeyOperation.wrapKey: 'wrapKey',
  KeyOperation.unwrapKey: 'unwrapKey',
  KeyOperation.deriveKey: 'deriveKey',
  KeyOperation.deriveBytes: 'deriveBytes',
};

OtherPrime _$OtherPrimeFromJson(Map<String, dynamic> json) => OtherPrime(
  r: base64UrlUintDecode(json['r'] as String),
  d: base64UrlUintDecode(json['d'] as String),
  t: base64UrlUintDecode(json['t'] as String),
);

Map<String, dynamic> _$OtherPrimeToJson(OtherPrime instance) =>
    <String, dynamic>{
      'r': ?base64UrlUintEncode(instance.r),
      'd': ?base64UrlUintEncode(instance.d),
      't': ?base64UrlUintEncode(instance.t),
    };
