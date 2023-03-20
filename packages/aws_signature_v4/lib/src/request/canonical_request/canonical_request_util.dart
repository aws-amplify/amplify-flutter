// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'canonical_request.dart';

final RegExp _encodedComponent = RegExp('%[A-F0-9]{2}');

/// Encodes a query parameter while preventing double-encoding.
String _safeEncode(String queryComponent) {
  return queryComponent.contains(_encodedComponent)
      ? queryComponent
      // encodeQueryComponent percent-encodes all the characters we care about
      // except spaces, which it encodes as `+`. However, Sigv4 expects percent
      // encoding even for spaces.
      : Uri.encodeQueryComponent(queryComponent).replaceAll('+', '%20');
}

/// The SHA-256/Hex-encoded hash for empty requests.
const emptyPayloadHash =
    'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855';

/// Hashes payload bytes using SHA-256 and encodes using hex.
const payloadEncoder = _CanonicalPayloadEncoder();

class _CanonicalPayloadEncoder extends Converter<List<int>?, String> {
  const _CanonicalPayloadEncoder();

  @override
  String convert(List<int>? input) {
    if (input == null || input.isEmpty) {
      return emptyPayloadHash;
    }
    final hash = sha256.convert(input);
    final hexed = hex.encode(hash.bytes);
    return hexed.toLowerCase();
  }
}
