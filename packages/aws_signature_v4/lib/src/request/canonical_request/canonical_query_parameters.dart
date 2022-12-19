// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
    final map = SplayTreeMap<String, String>();
    for (final entry in queryParameters.entries) {
      final key = _safeEncode(entry.key);
      final value = _safeEncode(entry.value);
      map[key] = value;
    }
    return map;
  }

  /// Returns the sorted, encoded query string.
  @override
  String toString() {
    return entries.map((e) => '${e.key}=${e.value}').join('&');
  }
}
