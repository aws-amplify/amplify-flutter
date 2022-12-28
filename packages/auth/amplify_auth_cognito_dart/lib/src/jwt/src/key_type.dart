// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
