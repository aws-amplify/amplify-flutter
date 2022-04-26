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

// Headers to ignore during signing.
final _ignoredHeaders = CaseInsensitiveSet({
  AWSHeaders.userAgent,
});

/// {@template aws_signature_v4.canonical_headers}
/// A map of canonicalized headers.
/// {@endtemplate}
class CanonicalHeaders extends DelegatingMap<String, String> {
  /// {@macro aws_signature_v4.canonical_headers}
  CanonicalHeaders(Map<String, String> headers) : super(canonicalize(headers));

  /// Lowercases and sorts the headers.
  static Map<String, String> canonicalize(Map<String, String> headers) {
    final map = SplayTreeMap<String, String>();
    for (final entry in headers.entries) {
      final key = entry.key.toLowerCase();
      if (_ignoredHeaders.contains(key)) {
        continue;
      }
      map[key] = entry.value.trim().replaceAll(_whitespace, ' ');
    }
    return map;
  }

  /// Matches multiple sequential whitespace characters.
  static final _whitespace = RegExp(r'\s+');

  /// Returns the lowercased and sorted headers string.
  @override
  String toString() {
    return entries.map((e) => '${e.key}:${e.value}\n').join();
  }
}
