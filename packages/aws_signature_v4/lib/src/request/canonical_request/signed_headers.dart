// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'canonical_request.dart';

/// {@template aws_signature_v4.signed_headers}
/// The signed headers for a canonical request.
/// {@endtemplate}
class SignedHeaders extends DelegatingIterable<String> {
  /// {@macro aws_signature_v4.signed_headers}
  SignedHeaders(Map<String, String> headers)
      : super(headers.keys.where((key) => !_ignoredHeaders.contains(key)));

  /// Creates the signed headers string.
  @override
  String toString() {
    return map((header) => header.toLowerCase()).join(';');
  }
}
