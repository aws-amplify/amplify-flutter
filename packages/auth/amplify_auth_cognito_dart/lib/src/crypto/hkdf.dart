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

import 'dart:math';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito.hkdf_sha_256}
/// Implementation of the HMAC-based Extract-and-Expand Key Derivation Function
/// (HKDF) protocol using HMAC/SHA-256.
///
/// See: https://datatracker.ietf.org/doc/html/rfc5869
/// {@endtemplate}
class HkdfSha256 {
  /// {@macro amplify_auth_cognito.hkdf_sha_256}
  factory HkdfSha256(List<int> salt, List<int> internalKeyMaterial) {
    // Perform the "extract" portion of the HKDF protocol to derive the
    // pseudorandom key.
    final hmac = Hmac(sha256, salt);
    return HkdfSha256._(hmac.convert(internalKeyMaterial).bytes);
  }

  const HkdfSha256._(this.prk);

  /// The length of the hash function output in bytes.
  static const int hashLen = 32;

  /// The pseudorandom key for the HKDF protocol.
  @visibleForTesting
  final List<int> prk;

  /// Performs the "expand" portion of the HKDF protocol to make the output key
  /// material the desired length.
  Uint8List expand(List<int> info, int length) {
    RangeError.checkValueInInterval(length, 0, hashLen * 255);

    final hmac = Hmac(sha256, prk);

    final numHashes = (length / hashLen).ceil(); // <= 255
    var hashedBlock = <int>[]; // T

    final outputKeyMaterial = Uint8List(length);
    for (var i = 1; i <= numHashes; i++) {
      final block = BytesBuilder()
        ..add(hashedBlock)
        ..add(info)
        ..addByte(i);
      hashedBlock = hmac.convert(block.toBytes()).bytes;

      outputKeyMaterial.setRange(
        (i - 1) * hashLen,
        min(i * hashLen, length),
        hashedBlock,
      );
    }

    return outputKeyMaterial;
  }
}
