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

import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

import 'claims.dart';
import 'header.dart';
import 'util.dart';

/// {@template amplify_auth_cognito.json_web_token}
/// A JSON Web Token (JWT) is a compact, URL-safe means of representing claims
/// to be transferred between two parties.
///
/// The claims in a JWT are encoded as a JSON object that is used as the payload
/// of a JSON Web Signature (JWS) structure or as the plaintext of a JSON Web
/// Encryption (JWE) structure, enabling the claims to be digitally signed or
/// integrity protected with a Message Authentication Code (MAC) and/or
/// encrypted.
/// {@endtemplate}
@immutable
class JsonWebToken with AWSEquatable<JsonWebToken>, AWSSerializable {
  /// {@macro amplify_auth_cognito.json_web_token}
  const JsonWebToken({
    String? raw,
    required this.header,
    required this.claims,
    required this.signature,
  }) : _raw = raw;

  /// Parses a JSON Web Token.
  ///
  /// {@macro amplify_auth_cognito.json_web_token}
  factory JsonWebToken.parse(String token) {
    final parts = token.split('.');
    if (parts.length != 3) {
      throw const FormatException('Invalid token');
    }

    final header = decodeBase64(parts[0]);
    final claims = decodeBase64(parts[1]);

    return JsonWebToken(
      raw: token,
      header: JsonWebHeader.fromJson(header),
      claims: JsonWebClaims.fromJson(claims),
      signature: base64RawUrl.decode(parts[2]),
    );
  }

  /// Parses a JSON Web Token, returning `null` if unsuccessful.
  ///
  /// {@macro amplify_auth_cognito.json_web_token}
  static JsonWebToken? tryParse(String token) {
    try {
      return JsonWebToken.parse(token);
    } on FormatException {
      return null;
    }
  }

  final String? _raw;

  /// The raw, encoded JWT string.
  String get raw => _raw ?? encode();

  /// The JOSE (JSON Object Signing and Encryption) header.
  final JsonWebHeader header;

  /// The payload, or set of claims, embodied by this JWT.
  final JsonWebClaims claims;

  /// The signature bytes for this token.
  final List<int> signature;

  @override
  List<Object?> get props => [
        raw,
        header,
        claims,
        signature,
      ];

  @override
  String toJson() => raw;

  /// Encodes the JWT to a `.`-delimited string.
  String encode() => '${header.encodeBase64()}.'
      '${claims.encodeBase64()}.'
      '${base64RawUrl.encode(signature)}';
}
