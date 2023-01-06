// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Elliptic curve values, as defined by
/// [RFC 7518](https://datatracker.ietf.org/doc/html/rfc7518#section-6.2.1.1)
enum EllipticCurve {
  /// P-256 curve
  p256,

  /// P-384 curve
  p384,

  /// P-521 curve
  p521
}

/// Elliptic curve helpers.
extension EllipticCurveX on EllipticCurve {
  /// The curve's JSON identifier.
  String get id {
    switch (this) {
      case EllipticCurve.p256:
        return 'P-256';
      case EllipticCurve.p384:
        return 'P-384';
      case EllipticCurve.p521:
        return 'P-521';
    }
  }

  /// Converts an elliptic curve to JSON.
  static String? toJson(EllipticCurve? crv) => crv?.id;

  /// Parses an elliptic curve from JSON.
  static EllipticCurve? fromJson(String? json) {
    if (json == null) return null;
    return EllipticCurve.values.firstWhere((element) => element.id == json);
  }
}
