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

/// {@template aws_signature_v4.canonical_query_parameters}
/// A map of canonicalized query parameters.
/// {@endtemplate}
class CanonicalQueryParameters extends DelegatingMap<String, String> {
  /// {@macro aws_signature_v4.canonical_query_parameters}
  CanonicalQueryParameters(Map<String, String> queryParameters)
      : super(canonicalize(queryParameters));

  /// Encodes and sorts the query parameters.
  static Map<String, String> canonicalize(
    Map<String, String> queryParameters,
  ) {
    final encodedEntries = queryParameters.entries.map((e) => MapEntry(
          Uri.encodeComponent(_decodeIfNeeded(e.key)),
          Uri.encodeComponent(_decodeIfNeeded(e.value)),
        ));
    final sortedParameters = LinkedHashMap.fromEntries(
      encodedEntries.toList()
        ..sort(
          (a, b) {
            final keyCompare = a.key.compareTo(b.key);
            if (keyCompare != 0) {
              return keyCompare;
            }
            return a.value.compareTo(b.value);
          },
        ),
    );

    return sortedParameters;
  }

  /// Returns the sorted, encoded query string.
  @override
  String toString() {
    return entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}
