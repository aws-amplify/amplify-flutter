// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

/// Encodes [bytes] to a base64url string without padding.
///
/// Uses the standard base64url alphabet (RFC 4648) and strips trailing
/// `=` padding characters, matching the encoding used by WebAuthn and
/// Cognito APIs.
String base64UrlEncode(List<int> bytes) {
  return base64Url.encode(bytes).replaceAll('=', '');
}

/// Decodes a base64url-encoded [encoded] string to bytes.
///
/// Normalizes padding by appending `=` characters as needed so the
/// input length is a multiple of 4 before decoding with the standard
/// base64url codec.
List<int> base64UrlDecode(String encoded) {
  final remainder = encoded.length % 4;
  if (remainder != 0) {
    encoded = encoded.padRight(encoded.length + (4 - remainder), '=');
  }
  return base64Url.decode(encoded);
}
