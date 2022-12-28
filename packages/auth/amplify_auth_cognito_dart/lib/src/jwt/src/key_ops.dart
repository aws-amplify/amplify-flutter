// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/jwt/src/key.dart';

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
