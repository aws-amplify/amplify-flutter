// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';

import 'package:http_parser/http_parser.dart';

/// The type of a callback that parses parameters from an HTTP response.
typedef GetParameters = Map<String, dynamic> Function(
  MediaType? contentType,
  String body,
);

/// Parses parameters from a response with a JSON body, as per the
/// [OAuth2 spec][].
///
/// [OAuth2 spec]: https://tools.ietf.org/html/rfc6749#section-5.1
Map<String, dynamic> parseJsonParameters(MediaType? contentType, String body) {
  // The spec requires a content-type of application/json, but some endpoints
  // (e.g. Dropbox) serve it as text/javascript instead.
  if (contentType == null ||
      (contentType.mimeType != 'application/json' &&
          contentType.mimeType != 'text/javascript')) {
    throw FormatException(
      'Content-Type was "$contentType", expected "application/json"',
    );
  }

  final untypedParameters = jsonDecode(body);
  if (untypedParameters is Map<String, dynamic>) {
    return untypedParameters;
  }

  throw FormatException('Parameters must be a map, was "$untypedParameters"');
}
