// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';
import 'dart:convert';

import 'package:amplify_auth_cognito_dart/src/jwt/src/prefs.dart';
import 'package:amplify_auth_cognito_dart/src/jwt/src/token.dart';
import 'package:amplify_auth_cognito_dart/src/jwt/src/util.dart';
import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'claims.g.dart';

/// Standard claims, as defined by
/// [RFC 7519](https://datatracker.ietf.org/doc/html/rfc7519#section-4.1).
const _standardClaims = [
  'iss',
  'sub',
  'aud',
  'exp',
  'nbf',
  'iat',
  'jti',
];

/// {@template amplify_auth_cognito.json_web_claims}
/// The body of a [JsonWebToken].
///
/// The JWT Claims Set represents a JSON object whose members are the claims
/// conveyed by the JWT.
/// {@endtemplate}
@immutable
@jwtSerializable
class JsonWebClaims with AWSEquatable<JsonWebClaims>, AWSSerializable {
  /// {@macro amplify_auth_cognito.json_web_claims}
  const JsonWebClaims({
    this.issuer,
    this.subject,
    this.audience,
    this.expiration,
    this.notBefore,
    this.issuedAt,
    this.jwtId,
    Map<String, Object?>? customClaims,
  }) : customClaims = customClaims ?? const {};

  /// {@macro amplify_auth_cognito.json_web_claims}
  factory JsonWebClaims.fromJson(Map<String, Object?> json) {
    final instance = _$JsonWebClaimsFromJson(json);
    final customClaims =
        json.entries.where((entry) => !_standardClaims.contains(entry.key));
    return JsonWebClaims(
      issuer: instance.issuer,
      subject: instance.subject,
      audience: instance.audience,
      expiration: instance.expiration,
      notBefore: instance.notBefore,
      issuedAt: instance.issuedAt,
      jwtId: instance.jwtId,
      customClaims: Map.fromEntries(customClaims),
    );
  }

  /// The `iss` (issuer) claim identifies the principal that issued the JWT.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7519#section-4.1.1)
  @JsonKey(name: 'iss')
  final String? issuer;

  /// The `sub` (subject) claim identifies the principal that is the subject of
  /// the JWT.
  ///
  /// The claims in a JWT are normally statements about the subject.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7519#section-4.1.2)
  @JsonKey(name: 'sub')
  final String? subject;

  ///  The `aud` (audience) claim identifies the recipients that the JWT is
  /// intended for.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7519#section-4.1.3)
  @JsonKey(name: 'aud')
  final String? audience;

  /// The `exp` (expiration time) claim identifies the expiration time on or
  /// after which the JWT MUST NOT be accepted for processing.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7519#section-4.1.4)
  @JsonKey(name: 'exp', fromJson: decodeDateTime, toJson: encodeDateTime)
  final DateTime? expiration;

  /// The `nbf` (not before) claim identifies the time before which the JWT
  /// MUST NOT be accepted for processing.
  ///
  /// [Reference]()
  @JsonKey(name: 'nbf', fromJson: decodeDateTime, toJson: encodeDateTime)
  final DateTime? notBefore;

  /// The `iat` (issued at) claim identifies the time at which the JWT was
  /// issued.
  ///
  /// This claim can be used to determine the age of the JWT.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7519#section-4.1.5)
  @JsonKey(name: 'iat', fromJson: decodeDateTime, toJson: encodeDateTime)
  final DateTime? issuedAt;

  /// The `jti` (JWT ID) claim provides a unique identifier for the JWT.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7519#section-4.1.7)
  @JsonKey(name: 'jti')
  final String? jwtId;

  /// Non-standard token claims.
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Map<String, Object?> customClaims;

  @override
  List<Object?> get props => [
        issuer,
        subject,
        audience,
        expiration,
        notBefore,
        issuedAt,
        jwtId,
        customClaims,
      ];

  @override
  Map<String, Object?> toJson() {
    final map = _$JsonWebClaimsToJson(this);
    return SplayTreeMap.from(<String, Object?>{
      ...map,
      ...customClaims,
    });
  }

  /// Encodes the claims to UTF-8 JSON.
  List<int> encode() => utf8.encode(json.encode(toJson()));

  /// Encodes the claims to UTF-8 JSON, then to base64.
  String encodeBase64() => base64RawUrl.encode(encode());
}
