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

import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';

/// Secure random number generator.
final secureRandom = Random.secure();

/// Generates a random byte array of [length] bytes.
Uint8List getRandomBytes(int length) {
  final bytes = Uint8List(length);
  for (var i = 0; i < length; i++) {
    bytes[i] = secureRandom.nextInt(256);
  }
  return bytes;
}

/// Byte sink for use with crypto converters'
/// [Converter.startChunkedConversion].
class DigestSink implements Sink<Digest> {
  late final Digest _digest;

  /// The digest's output bytes.
  List<int> get bytes => _digest.bytes;

  @override
  void add(Digest data) => _digest = data;

  @override
  void close() => _digest; // assert digest is set
}

final _byteMask = BigInt.from(0xff);
final _negativeFlag = BigInt.from(0x80);

/// Decodes a big-endian byte array as an unsigned [BigInt].
BigInt decodeBigInt(Uint8List bytes) {
  var result = BigInt.zero;
  for (var i = 0; i < bytes.length; i++) {
    final byte = bytes[bytes.length - i - 1];
    result |= BigInt.from(byte) << (8 * i);
  }
  return result;
}

/// Encodes a [number] as a big-endian byte array, with padding.
Uint8List encodeBigInt(BigInt number) {
  if (number == BigInt.zero) {
    return Uint8List(0);
  }
  if (number < BigInt.zero) {
    throw AssertionError('Cannot handle negative BigInts');
  }

  final rawSize = (number.bitLength + 7) >> 3;
  final needsPaddingByte =
      ((number >> (rawSize - 1) * 8) & _negativeFlag) == _negativeFlag ? 1 : 0;

  final size = rawSize + needsPaddingByte;
  final result = Uint8List(size);
  for (var i = 0; i < rawSize; i++) {
    result[size - i - 1] = (number & _byteMask).toInt();
    number >>= 8;
  }

  return result;
}

/// Encodes a [number] as an unsigned big-endian byte array, without padding.
Uint8List encodeBigIntUnsigned(BigInt number) {
  if (number == BigInt.zero) {
    return Uint8List(0);
  }
  if (number < BigInt.zero) {
    throw AssertionError('Cannot handle negative BigInts');
  }
  final size = (number.bitLength + 7) >> 3;
  final result = Uint8List(size);
  for (var i = 0; i < size; i++) {
    result[size - i - 1] = (number & _byteMask).toInt();
    number >>= 8;
  }
  return result;
}
