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

/// Valid public key use values, as defined by
/// [RFC 7517](https://datatracker.ietf.org/doc/html/rfc7517#section-4.2).
enum PublicKeyUse {
  /// Signature
  signature,

  /// Encryption
  ///
  /// When a key is used to wrap another key and a public key use designation
  /// for the first key is desired, the `enc` (encryption) key use value is
  /// used, since key wrapping is a kind of encryption. The `enc` value is also
  /// to be used for public keys used for key agreement operations.
  encryption,
}

/// Public key use helpers.
extension PublicKeyUseX on PublicKeyUse {
  /// The public key use's JSON identifier.
  String get id {
    switch (this) {
      case PublicKeyUse.signature:
        return 'sig';
      case PublicKeyUse.encryption:
        return 'enc';
    }
  }

  /// Converts a public key use to JSON.
  static String? toJson(PublicKeyUse? use) => use?.id;

  /// Parses a public key use from JSON.
  static PublicKeyUse? fromJson(String? use) {
    if (use == null) return null;
    return PublicKeyUse.values.firstWhere((element) => element.id == use);
  }
}
