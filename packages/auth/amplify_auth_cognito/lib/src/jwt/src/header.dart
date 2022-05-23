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

import 'dart:convert';

import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'alg.dart';
import 'key.dart';
import 'keyset.dart';
import 'prefs.dart';
import 'util.dart';

part 'header.g.dart';

/// {@template amplify_auth_cognito.json_web_header}
/// JSON object containing the parameters describing the cryptographic
/// operations and parameters employed.
///
/// For a signed JWT (JWS), the members of the JSON object(s) representing the
/// header describe the digital signature or MAC applied to the JWS
/// Protected Header and the JWS Payload and optionally additional properties of
/// the JWS.
/// {@endtemplate}
@immutable
@jwtSerializable
class JsonWebHeader with AWSEquatable<JsonWebHeader>, AWSSerializable {
  /// {@macro amplify_auth_cognito.json_web_header}
  const JsonWebHeader({
    required this.algorithm,
    this.jwkSetUri,
    this.jwk,
    this.keyId,
    this.x509CertChain,
    this.x509sha1Thumbprint,
    this.x509sha256Thumbprint,
    this.x509Uri,
    this.type,
    this.contentType,
    this.critical,
  });

  /// {@macro amplify_auth_cognito.json_web_header}
  factory JsonWebHeader.fromJson(Map<String, Object?> json) =>
      _$JsonWebHeaderFromJson(json);

  /// The `alg` (algorithm) Header Parameter identifies the cryptographic
  /// algorithm used to secure the JWS.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7515#section-4.1.1)
  @JsonKey(
    name: 'alg',
    fromJson: AlgorithmX.fromJson,
    toJson: AlgorithmX.toJson,
  )
  final Algorithm algorithm;

  /// The `jku` (JWK Set URL) Header Parameter is a URI that refers to a
  /// resource for a set of JSON-encoded public keys, one of which corresponds
  /// to the key used to digitally sign the JWS.
  ///
  /// The keys MUST be encoded as a [JsonWebKeySet].
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7515#section-4.1.2)
  @JsonKey(name: 'jku')
  final Uri? jwkSetUri;

  /// The `jwk` (JSON Web Key) Header Parameter is the public key that
  /// corresponds to the key used to digitally sign the JWS.
  ///
  /// This key is represented as a [JsonWebKey].
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7515#section-4.1.3)
  @JsonKey(name: 'jwk')
  final JsonWebKey? jwk;

  /// The `kid` (key ID) Header Parameter is a hint indicating which key was
  /// used to secure the JWS.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7515#section-4.1.4)
  @JsonKey(name: 'kid')
  final String? keyId;

  /// The `x5u` (X.509 URL) Header Parameter is a URI that refers to a
  /// resource for the X.509 public key certificate or certificate chain
  /// corresponding to the key used to digitally sign the JWS.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7515#section-4.1.5)
  @JsonKey(name: 'x5u')
  final Uri? x509Uri;

  /// The `x5c` (X.509 certificate chain) Header Parameter contains the X.509
  /// public key certificate or certificate chain corresponding to the key used
  /// to digitally sign the JWS.
  ///
  /// The certificate or certificate chain is represented as a JSON array of
  /// certificate value strings. Each string in the array is a base64-encoded
  /// (not base64url-encoded) DER PKIX certificate value.
  ///
  /// The certificate containing the public key corresponding to the key used to
  /// digitally sign the JWS MUST be the first certificate. This MAY be followed
  /// by additional certificates, with each subsequent certificate being the one
  /// used to certify the previous one.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7515#section-4.1.6)
  @JsonKey(name: 'x5c')
  final List<String>? x509CertChain;

  /// The `x5t` (X.509 certificate SHA-1 thumbprint) Header Parameter is a
  /// base64url-encoded SHA-1 thumbprint (a.k.a. digest) of the DER encoding of
  /// the X.509 certificate corresponding to the key used to digitally sign the
  /// JWS.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7515#section-4.1.7)
  @JsonKey(name: 'x5t')
  final List<String>? x509sha1Thumbprint;

  /// The `x5t#S256` (X.509 certificate SHA-256 thumbprint) Header Parameter is
  /// a base64url-encoded SHA-256 thumbprint (a.k.a. digest) of the DER encoding
  /// of the X.509 certificate corresponding to the key used to digitally sign
  /// the JWS.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7515#section-4.1.8)
  @JsonKey(name: 'x5t#S256')
  final String? x509sha256Thumbprint;

  /// The `typ` (type) Header Parameter  JWT applications to declare the media
  /// type of the JWT.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7515#section-4.1.9)
  @JsonKey(name: 'typ')
  final String? type;

  /// The `cty` (content type) Header Parameter is used to convey structural
  /// information about the JWT.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7515#section-4.1.10)
  @JsonKey(name: 'cty')
  final String? contentType;

  /// The `crit` (critical) Header Parameter indicates that extensions that MUST
  /// be understood and processed.
  ///
  /// Its value is an array listing the Header Parameter names present in the
  /// JOSE Header that use those extensions. If any of the listed extension
  /// Header Parameters are not understood and supported by the recipient,
  /// then the JWS is invalid.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7515#section-4.1.11)
  @JsonKey(name: 'crit')
  final List<String>? critical;

  @override
  List<Object?> get props => [
        algorithm,
        jwkSetUri,
        jwk,
        keyId,
        x509CertChain,
        x509sha1Thumbprint,
        x509sha256Thumbprint,
        x509Uri,
        type,
        contentType,
        critical,
      ];

  @override
  Map<String, Object?> toJson() => _$JsonWebHeaderToJson(this);

  /// Encodes the header to UTF-8 JSON.
  List<int> encode() => utf8.encode(json.encode(toJson()));

  /// Encodes the header to UTF-8 JSON, then to base64.
  String encodeBase64() => base64RawUrl.encode(encode());
}
