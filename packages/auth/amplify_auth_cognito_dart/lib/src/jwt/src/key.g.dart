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

Map<String, dynamic> _$JsonWebKeyToJson(
  JsonWebKey instance,
) => <String, dynamic>{
  if (KeyTypeX.toJson(instance.keyType) case final value?) 'kty': value,
  if (PublicKeyUseX.toJson(instance.publicKeyUse) case final value?)
    'use': value,
  if (instance.keyOperations?.map((e) => _$KeyOperationEnumMap[e]!).toList()
      case final value?)
    'key_ops': value,
  if (AlgorithmX.toJson(instance.algorithm) case final value?) 'alg': value,
  if (instance.keyId case final value?) 'kid': value,
  if (instance.x509Url case final value?) 'x5u': value,
  if (instance.x509CertChain case final value?) 'x5c': value,
  if (instance.x509Sha1Thumbprint case final value?) 'x5t': value,
  if (instance.x509Sha256Thumbprint case final value?) 'x5t#S256': value,
  if (EllipticCurveX.toJson(instance.ellipticCurve) case final value?)
    'crv': value,
  if (base64UrlUintEncode(instance.x) case final value?) 'x': value,
  if (base64UrlUintEncode(instance.y) case final value?) 'y': value,
  if (base64UrlUintEncode(instance.n) case final value?) 'n': value,
  if (base64UrlUintEncode(instance.e) case final value?) 'e': value,
  if (symmetricKeyToJson(instance.k) case final value?) 'k': value,
  if (base64UrlUintEncode(instance.d) case final value?) 'd': value,
  if (base64UrlUintEncode(instance.p) case final value?) 'p': value,
  if (base64UrlUintEncode(instance.q) case final value?) 'q': value,
  if (base64UrlUintEncode(instance.dp) case final value?) 'dp': value,
  if (base64UrlUintEncode(instance.dq) case final value?) 'dq': value,
  if (base64UrlUintEncode(instance.qi) case final value?) 'qi': value,
  if (instance.otherPrimes?.map((e) => e.toJson()).toList() case final value?)
    'oth': value,
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
      if (base64UrlUintEncode(instance.r) case final value?) 'r': value,
      if (base64UrlUintEncode(instance.d) case final value?) 'd': value,
      if (base64UrlUintEncode(instance.t) case final value?) 't': value,
    };
