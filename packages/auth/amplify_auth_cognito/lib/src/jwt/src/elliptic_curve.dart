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
