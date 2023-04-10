// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
import 'dart:convert';

import 'package:meta/meta.dart';

final _regexp = RegExp(r'^\?UTF-8\?B\?(.*)\?=$');

bool _hasNonAscii(String str) {
  return str.runes.any((rune) => rune > 127);
}

String _rfc2047UTF8Encode(String str) {
  if (_hasNonAscii(str)) {
    // https://datatracker.ietf.org/doc/html/rfc2047#section-2
    return '?UTF-8?B?${base64.encode(utf8.encode(str))}?=';
  }

  return str;
}

String _rfc2047UTF8Decode(String str) {
  final encodedStr = _regexp.firstMatch(str)?.group(1);

  if (encodedStr == null) {
    return str;
  }

  return utf8.decode(base64.decode(encodedStr));
}

/// Encode values of [metadata].
///
/// A value that contains non-ascii chars will be encoded.
/// Details see [Working with object metadata](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingMetadata.html).
Map<String, String> encodeMetadata(Map<String, String> metadata) {
  return Map.fromEntries(
    metadata.entries.map((e) => MapEntry(e.key, _rfc2047UTF8Encode(e.value))),
  );
}

/// Decode values of [metadata].
///
/// A value that is a utf8 encoded string will be decoded.
Map<String, String> decodeMetadata(Map<String, String> metadata) {
  return Map.fromEntries(
    metadata.entries.map((e) => MapEntry(e.key, _rfc2047UTF8Decode(e.value))),
  );
}
