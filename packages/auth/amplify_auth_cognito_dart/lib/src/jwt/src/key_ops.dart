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

import 'key.dart';

/// Valid key operations, as defined by
/// [RFC 7517](https://datatracker.ietf.org/doc/html/rfc7517#section-4.3).
///
/// Note that values intentionally match the `KeyUsage` values defined in the
/// Web Cryptography API specification.
///
/// See also:
/// - [JsonWebKey.keyOperations]
/// - [KeyUsage](https://www.w3.org/TR/WebCryptoAPI/#cryptokey-interface-types)
enum KeyOperation {
  /// Compute digital signature or MAC
  sign,

  /// Verify digital signature or MAC
  verify,

  /// Encrypt content
  encrypt,

  /// Decrypt content and validate decryption, if applicable
  decrypt,

  /// Encrypt key
  wrapKey,

  /// Decrypt key and validate decryption, if applicable
  unwrapKey,

  /// Derive key
  deriveKey,

  /// Derive bits not to be used as a key
  deriveBytes,
}
