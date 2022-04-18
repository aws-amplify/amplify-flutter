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
final _ignoreHeaders = CaseInsensitiveSet({
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
    final lowerCaseHeaders = headers.map(
      (k, v) => MapEntry(
        k.toLowerCase(),
        v.trim().replaceAll(RegExp(r'\s+'), ' '),
      ),
    );
    return LinkedHashMap.fromEntries(
      lowerCaseHeaders.entries
          .where((e) => !_ignoreHeaders.contains(e.key))
          .toList()
        ..sort((a, b) => a.key.compareTo(b.key)),
    );
  }

  /// Returns the lowercased and sorted headers string.
  @override
  String toString() {
    return entries.map((e) => '${e.key}:${e.value}\n').join();
  }
}
