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

import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:amplify_auth_cognito/src/crypto/crypto.dart';

/// Decodes [base64] as a JSON-encoded [Map].
Map<String, Object?> decodeBase64(String base64) {
  final json = utf8.decode(base64RawUrl.decode(base64));
  return jsonDecode(json) as Map<String, Object?>;
}

/// {@macro amplify_auth_cognito.base64_raw_url}
const base64RawUrl = Base64RawUrlCodec();

/// {@macro amplify_auth_cognito.base64_url_uint}
const base64UrlUint = Base64UrlUintCodec();

/// Tries to decode [input] using [base64UrlUint] encoding.
BigInt? base64UrlUintTryDecode(String? input) {
  try {
    return base64UrlUint.decode(input);
  } on FormatException {
    return null;
  }
}

/// Encodes [input] using [base64UrlUint] encoding.
String? base64UrlUintEncode(BigInt? input) => base64UrlUint.encode(input);

/// Decodes [input] using [base64UrlUint] encoding.
BigInt base64UrlUintDecode(String input) => base64UrlUint.decode(input)!;

/// {@template amplify_auth_cognito.base64_url_uint}
///
/// {@endtemplate}
class Base64UrlUintCodec extends Codec<BigInt?, String?> {
  /// {@macro amplify_auth_cognito.base64_url_uint}
  const Base64UrlUintCodec();

  @override
  Converter<String?, BigInt?> get decoder => const Base64UrlUintDecoder();

  @override
  Converter<BigInt?, String?> get encoder => const Base64UrlUintEncoder();
}

/// {@macro amplify_auth_cognito.base64_url_uint}
class Base64UrlUintEncoder extends Converter<BigInt?, String?> {
  /// {@macro amplify_auth_cognito.base64_url_uint}
  const Base64UrlUintEncoder();

  @override
  String? convert(BigInt? input) {
    if (input == null) {
      return null;
    }

    var bytes = encodeBigIntUnsigned(input);
    if (bytes.isEmpty) {
      return base64RawUrl.encode(const [0]);
    }

    // Add padding when specifying a length.
    final length = Zone.current[#octetLength] as int?;
    if (length != null && bytes.length < length) {
      final padding = max(0, length - bytes.length);
      bytes = Uint8List.fromList([
        for (var i = 0; i < padding; i++) 0,
        ...bytes,
      ]);
    }

    return base64RawUrl.encode(bytes);
  }
}

/// {@macro amplify_auth_cognito.base64_url_uint}
class Base64UrlUintDecoder extends Converter<String?, BigInt?> {
  /// {@macro amplify_auth_cognito.base64_url_uint}
  const Base64UrlUintDecoder();

  @override
  BigInt? convert(String? input) {
    if (input == null || input == '') {
      return null;
    }

    final decoded = base64RawUrl.decode(input);
    return decodeBigInt(Uint8List.fromList(decoded));
  }
}

/// {@template amplify_auth_cognito.base64_raw_url}
/// base64url encoding without padding, as defined by
/// [RFC 7515](https://datatracker.ietf.org/doc/html/rfc7515#appendix-C).
/// {@endtemplate}
class Base64RawUrlCodec extends Codec<List<int>, String> {
  /// {@macro amplify_auth_cognito.base64_raw_url}
  const Base64RawUrlCodec();

  @override
  Converter<String, List<int>> get decoder =>
      const _StripPaddingDecoder().fuse(const Base64Decoder());

  @override
  Converter<List<int>, String> get encoder =>
      const Base64Encoder.urlSafe().fuse(const _StripPaddingEncoder());
}

/// Strips padding from a base64-encoded string.
class _StripPaddingEncoder extends Converter<String, String> {
  const _StripPaddingEncoder();

  @override
  String convert(String input) {
    return input.split('=')[0];
  }
}

/// Adds back stripped padding to a base64-encoded string.
class _StripPaddingDecoder extends Converter<String, String> {
  const _StripPaddingDecoder();

  @override
  String convert(String input) {
    final len = input.length;
    return input + '=' * ((4 - len % 4) % 4);
  }
}

/// Decodes epoch-time seconds to a [DateTime].
///
/// Decode from [num] instead of [int] since JSON does not distinguish and
/// values may have trailing `.0` which will lead to parse errors.
///
/// See the `package:jose` issue: https://github.com/appsup-dart/jose/pull/33
DateTime? decodeDateTime(num? json) {
  if (json == null) return null;
  return DateTime.fromMillisecondsSinceEpoch(
    (json * 1000).truncate(),
    isUtc: true,
  );
}

/// Encodes [dt] to epoch-time seconds.
int? encodeDateTime(DateTime? dt) {
  if (dt == null) return null;
  return dt.millisecondsSinceEpoch ~/ 1000;
}

/// Decodes a symmetric key from JSON.
List<int>? symmetricKeyFromJson(String? json) {
  if (json == null) return null;
  return base64RawUrl.decode(json);
}

/// Encodes a symmetric key to JSON.
String? symmetricKeyToJson(List<int>? key) {
  if (key == null) return null;
  return base64RawUrl.encode(key);
}
