// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'canonical_request.dart';

/// Helper methods for canonicalizing paths of a [CanonicalRequest].
abstract class CanonicalPath {
  CanonicalPath._();

  /// Returns the normalized path with double-encoded path segments.
  ///
  /// Uses [url] to normalize the path.
  static String canonicalize(
    final String path, {
    required ServiceConfiguration serviceConfiguration,
  }) {
    var canonicalPath = path;

    // `normalize` removes leading and trailing slashes which should be
    // preserved.
    if (serviceConfiguration.normalizePath) {
      canonicalPath = canonicalPath.ensureStartsWith('/');
      canonicalPath = url.normalize(canonicalPath);
      if (path.endsWith('/')) {
        canonicalPath = canonicalPath.ensureEndsWith('/');
      }
    }

    return canonicalPath.split('/').map((segment) {
      segment = _safeEncode(segment);
      if (serviceConfiguration.doubleEncodePathSegments) {
        segment = Uri.encodeComponent(segment);
      }
      return segment;
    }).join('/');
  }
}
