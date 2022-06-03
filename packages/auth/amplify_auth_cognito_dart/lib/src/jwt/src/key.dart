// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'alg.dart';
import 'elliptic_curve.dart';
import 'exception.dart';
import 'key_ops.dart';
import 'key_type.dart';
import 'key_use.dart';
import 'keyset.dart';
import 'prefs.dart';
import 'util.dart';

part 'key.g.dart';

/// {@template amplify_auth_cognito.json_web_key}
/// A JSON Web Key (JWK) is a JSON object that represents a cryptographic key.
///
/// See also:
/// - [JSON Web Key (JWK)](https://datatracker.ietf.org/doc/html/rfc7517)
/// - [JSON Web Algorithm (JWA)](https://datatracker.ietf.org/doc/html/rfc7518)
/// {@endtemplate}
@immutable
@jwtSerializable
class JsonWebKey with AWSEquatable<JsonWebKey>, AWSSerializable {
  /// {@macro amplify_auth_cognito.json_web_key}
  JsonWebKey({
    required this.keyType,
    this.publicKeyUse,
    this.keyOperations,
    Algorithm? algorithm,
    this.keyId,
    this.x509Url,
    this.x509CertChain,
    this.x509Sha1Thumbprint,
    this.x509Sha256Thumbprint,
    this.ellipticCurve,
    this.x,
    this.y,
    this.n,
    this.e,
    this.k,
    this.d,
    this.p,
    this.q,
    this.dp,
    this.dq,
    this.qi,
    this.otherPrimes,
  }) : _algorithm = algorithm {
    isPrivate = _hasPrivateKeyInfo();
    assertValid();
  }

  /// {@macro amplify_auth_cognito.json_web_key}
  factory JsonWebKey.fromJson(Map<String, Object?> json) =>
      _$JsonWebKeyFromJson(json);

  /// Whether the key contains private key material.
  bool _hasPrivateKeyInfo() {
    switch (keyType) {
      case KeyType.ellipticCurve:
        return d != null;
      case KeyType.rsa:
        return d != null;
      case KeyType.octet:
        return true;
    }
  }

  /// Asserts that all required values are present in the JWK based on the
  /// [keyType] specified.
  void assertValid() {
    switch (keyType) {
      case KeyType.ellipticCurve:
        if (ellipticCurve == null) {
          throw const MissingParameterException('crv');
        }
        if (x == null) {
          throw const MissingParameterException('x');
        }
        if (y == null) {
          throw const MissingParameterException('y');
        }
        break;
      case KeyType.rsa:
        if (n == null) {
          throw const MissingParameterException('n');
        }
        if (e == null) {
          throw const MissingParameterException('e');
        }
        break;
      case KeyType.octet:
        if (k == null) {
          throw const MissingParameterException('k');
        }
    }
  }

  /// Whether the key has private key data.
  @JsonKey(ignore: true)
  late final bool isPrivate;

  /// The `kty` (key type) parameter identifies the cryptographic algorithm
  /// family used with the key, such as "RSA" or "EC".
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7517#section-4.1)
  @JsonKey(name: 'kty', toJson: KeyTypeX.toJson, fromJson: KeyTypeX.fromJson)
  final KeyType keyType;

  /// The `use` (public key use) parameter identifies the intended use of the
  /// public key.
  ///
  /// The `use` parameter is employed to indicate whether a public key is used
  /// for encrypting data or verifying the signature on data.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7517#section-4.2)
  @JsonKey(
    name: 'use',
    toJson: PublicKeyUseX.toJson,
    fromJson: PublicKeyUseX.fromJson,
  )
  final PublicKeyUse? publicKeyUse;

  /// The `key_ops` (key operations) parameter identifies the operation(s) for
  /// which the key is intended to be used.
  ///
  /// The `key_ops` parameter is intended for use cases in which public,
  /// private, or symmetric keys may be present.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7517#section-4.3)
  @JsonKey(name: 'key_ops')
  final List<KeyOperation>? keyOperations;

  /// The explicit algorithm value.
  final Algorithm? _algorithm;

  /// The `alg` (algorithm) parameter identifies the algorithm intended for use
  /// with the key.
  ///
  /// If not specified, it is inferred from the [keyType] and key material.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7517#section-4.4)
  @JsonKey(
    name: 'alg',
    fromJson: AlgorithmX.tryFromJson,
    toJson: AlgorithmX.toJson,
  )
  Algorithm? get algorithm => _algorithm ?? _inferAlgorithm();

  /// The `kid` (key ID) parameter is used to match a specific key.
  ///
  /// This s used, for instance, to choose among a set of keys within a
  /// [JsonWebKeySet] during key rollover.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7517#section-4.5)
  @JsonKey(name: 'kid')
  final String? keyId;

  /// The `x5u` (X.509 URL) Header Parameter is a URI that refers to a
  /// resource for an X.509 public key certificate or certificate chain.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7517#section-4.6)
  @JsonKey(name: 'x5u')
  final String? x509Url;

  /// The `x5c` (X.509 certificate chain) parameter contains a chain of one or
  /// more PKIX certificates.
  ///
  /// The certificate chain is represented as a JSON array of certificate value
  /// strings. Each string in the array is a base64-encoded
  /// (not base64url-encoded) DER PKIX certificate value. The PKIX certificate
  /// containing the key value MUST be the first certificate. This MAY be
  /// followed by additional certificates, with each subsequent certificate
  /// being the one used to certify the previous one. The key in the first
  /// certificate MUST match the public key represented by other members of the
  /// JWK.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7517#section-4.7)
  @JsonKey(name: 'x5c')
  final List<String>? x509CertChain;

  /// The `x5t` (X.509 certificate SHA-1 thumbprint) Header Parameter is a
  /// base64url-encoded SHA-1 thumbprint (a.k.a. digest) of the DER encoding of
  /// an X.509 certificate.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7517#section-4.8)
  @JsonKey(name: 'x5t')
  final String? x509Sha1Thumbprint;

  /// The `x5t#S256` (X.509 certificate SHA-256 thumbprint) parameter is a
  /// base64url-encoded SHA-256 thumbprint (a.k.a. digest) of the DER encoding
  /// of an X.509 certificate.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7517#section-4.9)
  @JsonKey(name: 'x5t#S256')
  final String? x509Sha256Thumbprint;

  /// `EC` keys: The `crv` (curve) parameter identifies the cryptographic curve
  /// used with the key.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7518#section-6.2.1.1)
  @JsonKey(
    name: 'crv',
    fromJson: EllipticCurveX.fromJson,
    toJson: EllipticCurveX.toJson,
  )
  final EllipticCurve? ellipticCurve;

  /// `EC` keys: The `x` (x coordinate) parameter contains the x coordinate for
  /// the Elliptic Curve point.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7518#section-6.2.1.2)
  @JsonKey(fromJson: base64UrlUintTryDecode, toJson: base64UrlUintEncode)
  final BigInt? x;

  /// `EC` keys: The `y` (y coordinate) parameter contains the y coordinate for
  /// the Elliptic Curve point.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7518#section-6.2.1.3)
  @JsonKey(fromJson: base64UrlUintTryDecode, toJson: base64UrlUintEncode)
  final BigInt? y;

  /// `RSA` keys: The `n` (modulus) parameter contains the modulus value for the
  /// RSA public key.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7518#section-6.3.1.1)
  @JsonKey(fromJson: base64UrlUintTryDecode, toJson: base64UrlUintEncode)
  final BigInt? n;

  /// `RSA` keys: The `e` (exponent) parameter contains the exponent value for
  /// the RSA public key.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7518#section-6.3.1.2)
  @JsonKey(fromJson: base64UrlUintTryDecode, toJson: base64UrlUintEncode)
  final BigInt? e;

  /// `oct` keys: The `k` (key value) parameter contains the value of the
  /// symmetric (or other single-valued) key.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7518#section-6.4.1)
  @JsonKey(fromJson: symmetricKeyFromJson, toJson: symmetricKeyToJson)
  final List<int>? k;

  /// `EC` keys: The `d` (ECC private key) parameter contains the Elliptic Curve
  /// private key value.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7518#section-6.2.2.1)
  ///
  /// `RSA` keys: The `d` (private exponent) parameter contains the private
  /// exponent value for the RSA private key.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7518#section-6.3.2.1)
  @JsonKey(fromJson: base64UrlUintTryDecode, toJson: base64UrlUintEncode)
  final BigInt? d;

  /// `RSA` keys: The `p` (first prime factor) parameter contains the first
  /// prime factor.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7518#section-6.3.2.2)
  @JsonKey(fromJson: base64UrlUintTryDecode, toJson: base64UrlUintEncode)
  final BigInt? p;

  /// `RSA` keys: The `q` (second prime factor) parameter contains the second
  /// prime factor.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7518#section-6.3.2.3)
  @JsonKey(fromJson: base64UrlUintTryDecode, toJson: base64UrlUintEncode)
  final BigInt? q;

  /// `RSA` keys: The `dp` (first factor CRT exponent) parameter contains the
  /// Chinese Remainder Theorem (CRT) exponent of the first factor.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7518#section-6.3.2.4)
  @JsonKey(fromJson: base64UrlUintTryDecode, toJson: base64UrlUintEncode)
  final BigInt? dp;

  /// `RSA` keys: The `dq` (second factor CRT exponent) parameter contains the
  /// CRT exponent of the second factor.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7518#section-6.3.2.5)
  @JsonKey(fromJson: base64UrlUintTryDecode, toJson: base64UrlUintEncode)
  final BigInt? dq;

  /// `RSA` keys: The `qi` (first CRT coefficient) parameter contains the CRT
  /// coefficient of the second factor.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7518#section-6.3.2.6)
  @JsonKey(fromJson: base64UrlUintTryDecode, toJson: base64UrlUintEncode)
  final BigInt? qi;

  /// `RSA` keys: The `oth` (other primes info) parameter contains an array of
  /// information about any third and subsequent primes, should they exist.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7518#section-6.3.2.7)
  @JsonKey(name: 'oth')
  final List<OtherPrime>? otherPrimes;

  /// The public key derived from this key.
  JsonWebKey get publicKey {
    switch (keyType) {
      case KeyType.ellipticCurve:
        if (!isPrivate) {
          return this;
        }
        return JsonWebKey(
          keyType: keyType,
          publicKeyUse: publicKeyUse,
          algorithm: algorithm,
          keyId: keyId,
          x: x,
          y: y,
        );
      case KeyType.rsa:
        if (!isPrivate) {
          return this;
        }
        return JsonWebKey(
          keyType: keyType,
          publicKeyUse: publicKeyUse,
          algorithm: algorithm,
          keyId: keyId,
          n: n,
          e: e,
        );
      case KeyType.octet:
        return this;
    }
  }

  /// Infers the algorithm to use based off the [keyType] and key material.
  Algorithm _inferAlgorithm() {
    switch (keyType) {
      case KeyType.ellipticCurve:
        if (ellipticCurve == null) {
          throw const MissingParameterException('crv');
        }
        switch (ellipticCurve!) {
          case EllipticCurve.p256:
            return Algorithm.ecdsaSha256;
          case EllipticCurve.p384:
            return Algorithm.ecdsaSha384;
          case EllipticCurve.p521:
            return Algorithm.ecdsaSha512;
        }
      case KeyType.rsa:
        return Algorithm.rsaSha256;
      case KeyType.octet:
        return Algorithm.hmacSha256;
    }
  }

  @override
  List<Object?> get props => [
        keyType,
        publicKeyUse,
        keyOperations,
        algorithm,
        keyId,
        x509Url,
        x509CertChain,
        x509Sha1Thumbprint,
        x509Sha256Thumbprint,
        ellipticCurve,
        x,
        y,
        n,
        e,
        k,
        d,
        p,
        q,
        dp,
        dq,
        qi,
        otherPrimes,
      ];

  @override
  Map<String, Object?> toJson() {
    // P-521 values need padding to ensure a certain length:
    // https://datatracker.ietf.org/doc/html/rfc7518#section-6.2.1.2
    int? length;
    if (keyType == KeyType.ellipticCurve) {
      switch (ellipticCurve!) {
        case EllipticCurve.p521:
          length = 66;
          break;
        case EllipticCurve.p256:
        case EllipticCurve.p384:
          break;
      }
    }
    final map = runZoned(
      () => _$JsonWebKeyToJson(this),
      zoneValues: {#octetLength: length},
    );

    // Strip if not included originally.
    if (_algorithm == null) {
      map.remove('alg');
    }
    return map;
  }
}

/// {@template amplify_auth_cognito.other_prime}
/// An additional prime, for use with `RSA` JWKs.
///
/// See also:
/// - [JsonWebKey.otherPrimes]
/// {@endtemplate}
@immutable
@jwtSerializable
class OtherPrime with AWSEquatable<OtherPrime>, AWSSerializable {
  /// {@macro amplify_auth_cognito.other_prime}
  const OtherPrime({
    required this.r,
    required this.d,
    required this.t,
  });

  /// {@macro amplify_auth_cognito.other_prime}
  factory OtherPrime.fromJson(Map<String, Object?> json) =>
      _$OtherPrimeFromJson(json);

  /// The `r` (prime factor) parameter within an "oth" array member represents
  /// the value of a subsequent prime factor.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7518#section-6.3.2.7.1)
  @JsonKey(fromJson: base64UrlUintDecode, toJson: base64UrlUintEncode)
  final BigInt r;

  /// The `d` (factor CRT exponent) parameter within an "oth" array member
  /// represents the CRT exponent of the corresponding prime factor.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7518#section-6.3.2.7.2)
  @JsonKey(fromJson: base64UrlUintDecode, toJson: base64UrlUintEncode)
  final BigInt d;

  /// The `t` (factor CRT coefficient) parameter within an "oth" array member
  /// represents the CRT coefficient of the corresponding prime factor.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7518#section-6.3.2.7.3)
  @JsonKey(fromJson: base64UrlUintDecode, toJson: base64UrlUintEncode)
  final BigInt t;

  @override
  List<Object?> get props => [r, d, t];

  @override
  Map<String, Object?> toJson() => _$OtherPrimeToJson(this);
}
