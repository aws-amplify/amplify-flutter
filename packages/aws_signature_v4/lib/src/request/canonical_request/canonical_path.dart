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
