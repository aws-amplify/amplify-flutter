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

import 'key_type.dart';

/// Valid JWT algorthms, as defined by
/// [RFC 7518](https://datatracker.ietf.org/doc/html/rfc7518#section-3.1).
enum Algorithm {
  /// HMAC using SHA-256
  hmacSha256,

  /// HMAC using SHA-384
  hmacSha384,

  /// HMAC using SHA-512
  hmacSha512,

  /// RSASSA-PKCS1-v1_5 using SHA-256
  rsaSha256,

  /// RSASSA-PKCS1-v1_5 using SHA-384
  rsaSha384,

  /// RSASSA-PKCS1-v1_5 using SHA-512
  rsaSha512,

  /// ECDSA using P-256 and SHA-256
  ecdsaSha256,

  /// ECDSA using P-384 and SHA-384
  ecdsaSha384,

  /// ECDSA using P-521 and SHA-512
  ecdsaSha512,

  /// RSASSA-PSS using SHA-256 and MGF1 with SHA-256
  pssSha256,

  /// RSASSA-PSS using SHA-384 and MGF1 with SHA-384
  pssSha384,

  /// RSASSA-PSS using SHA-512 and MGF1 with SHA-512
  pssSha512,

  /// No digital signature or MAC performed
  none,
}

/// Algorithm helpers.
extension AlgorithmX on Algorithm {
  /// The algorithm's identifier.
  String get id {
    switch (this) {
      case Algorithm.hmacSha256:
        return 'HS256';
      case Algorithm.hmacSha384:
        return 'HS384';
      case Algorithm.hmacSha512:
        return 'HS512';
      case Algorithm.rsaSha256:
        return 'RS256';
      case Algorithm.rsaSha384:
        return 'RS384';
      case Algorithm.rsaSha512:
        return 'RS512';
      case Algorithm.ecdsaSha256:
        return 'ES256';
      case Algorithm.ecdsaSha384:
        return 'ES384';
      case Algorithm.ecdsaSha512:
        return 'ES512';
      case Algorithm.pssSha256:
        return 'PS256';
      case Algorithm.pssSha384:
        return 'PS384';
      case Algorithm.pssSha512:
        return 'PS512';
      case Algorithm.none:
        return 'none';
    }
  }

  /// Converts an algorithm to JSON.
  static String? toJson(Algorithm? alg) => alg?.id;

  /// Parses an algorithm from JSON.
  static Algorithm fromJson(String json) {
    return Algorithm.values.firstWhere(
      (element) => element.id.toLowerCase() == json.toLowerCase(),
    );
  }

  /// Parses an algorithm from JSON, returning `null` if unsuccessful.
  static Algorithm? tryFromJson(String? json) {
    if (json == null) return null;
    try {
      return fromJson(json);
    } on StateError {
      return null;
    }
  }

  /// The key type for this algorithm.
  KeyType? get keyType {
    switch (this) {
      case Algorithm.hmacSha256:
      case Algorithm.hmacSha384:
      case Algorithm.hmacSha512:
        return KeyType.octet;
      case Algorithm.ecdsaSha256:
      case Algorithm.ecdsaSha384:
      case Algorithm.ecdsaSha512:
        return KeyType.ellipticCurve;
      case Algorithm.rsaSha256:
      case Algorithm.rsaSha384:
      case Algorithm.rsaSha512:
      case Algorithm.pssSha256:
      case Algorithm.pssSha384:
      case Algorithm.pssSha512:
        return KeyType.rsa;
      case Algorithm.none:
        return null;
    }
  }

  /// Whether the algorithm is valid.
  ///
  /// JWTs with an algorithm of `NONE` are considered invalid, due to the
  /// many security risks associated with their usage.
  bool get isValid {
    switch (this) {
      case Algorithm.rsaSha256:
      case Algorithm.rsaSha384:
      case Algorithm.rsaSha512:
      case Algorithm.hmacSha256:
      case Algorithm.hmacSha384:
      case Algorithm.hmacSha512:
      case Algorithm.ecdsaSha256:
      case Algorithm.ecdsaSha384:
      case Algorithm.ecdsaSha512:
      case Algorithm.pssSha256:
      case Algorithm.pssSha384:
      case Algorithm.pssSha512:
        return true;
      case Algorithm.none:
        return false;
    }
  }
}
