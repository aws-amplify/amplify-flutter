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

/// Valid JWK key types, as defined by
/// [RFC 7518](https://datatracker.ietf.org/doc/html/rfc7518#section-6.1).
enum KeyType {
  /// Elliptic Curve ([DSS](https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.186-4.pdf))
  ellipticCurve,

  /// RSA ([RFC 3447](https://datatracker.ietf.org/doc/html/rfc3447))
  rsa,

  /// Octet sequence (used to represent symmetric keys), e.g. for HMAC
  octet,
}

/// Key type helpers.
extension KeyTypeX on KeyType {
  /// The key type's JSON identifier.
  String get id {
    switch (this) {
      case KeyType.ellipticCurve:
        return 'EC';
      case KeyType.rsa:
        return 'RSA';
      case KeyType.octet:
        return 'oct';
    }
  }

  /// Converts the key type to JSON.
  static String? toJson(KeyType? kty) => kty?.id;

  /// Parses the key type from JSON.
  static KeyType fromJson(String kty) {
    return KeyType.values.firstWhere((element) => element.id == kty);
  }

  /// Tries to parse the key type from JSON.
  static KeyType? tryFromJson(String? kty) {
    if (kty == null) return null;
    try {
      return fromJson(kty);
    } on StateError {
      return null;
    }
  }
}
