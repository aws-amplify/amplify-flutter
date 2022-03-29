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

import 'dart:collection';
import 'dart:convert';

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:collection/collection.dart';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:path/path.dart';

part 'canonical_headers.dart';
part 'canonical_query_parameters.dart';
part 'signed_headers.dart';
part 'canonical_request_util.dart';

/// {@template aws_signature_v4.canonical_request}
/// A canonicalized request, used for signing via the SigV4 signing process.
/// {@endtemplate}
class CanonicalRequest {
  /// The original HTTP request.
  final AWSBaseHttpRequest request;

  /// The scope for the request.
  final AWSCredentialScope credentialScope;

  /// The canonicalized request path.
  late final String canonicalPath = _canonicalPath(
    request,
    normalizePath: normalizePath,
  );

  /// The request query parameters, with AWS values added, if necessary.
  late final Map<String, String> queryParameters;

  /// The canonicalized [queryParameters].
  late final CanonicalQueryParameters canonicalQueryParameters;

  /// The request headers, with AWS values added, if necessary.
  late final Map<String, String> headers;

  /// The canonicalized [headers].
  late final CanonicalHeaders canonicalHeaders;

  /// The list of signed headers.
  late final SignedHeaders signedHeaders;

  /// Whether or not to normalize the URI path.
  ///
  /// Defaults to `true`.
  final bool normalizePath;

  /// Whether to create a presigned URL.
  ///
  /// If `true`, authentication information is encoded in the query string
  /// instead of in the request headers.
  ///
  /// Defaults to `false`.
  final bool presignedUrl;

  /// Whether to omit the session token, if present, from the initial signing
  /// process.
  ///
  /// If `true`, the session token will be added to the request after the signing
  /// process.
  ///
  /// Defaults to `false`.
  final bool omitSessionTokenFromSigning;

  // Query-specific parameters

  /// The algorithm to use for signing.
  ///
  /// Must be provided if [presignedUrl] is `true`.
  final AWSAlgorithm? algorithm;

  /// The number of seconds the request is valid for.
  ///
  /// Only valid for presigned URLs, and must be provided if [presignedUrl]
  /// is `true`.
  late final int? expiresIn;

  /// The configuration to use for canonicalizing the request.
  final ServiceConfiguration configuration;

  /// The payload content length.
  final int contentLength;

  /// The computed hash of the canonical request.
  late final String hash = payloadEncoder.convert(utf8.encode(toString()));

  /// The payload hash.
  final String payloadHash;

  /// {@macro aws_signature_v4.canonical_request}
  CanonicalRequest({
    required this.request,
    required AWSCredentials credentials,
    required this.credentialScope,
    required this.algorithm,
    this.contentLength = 0,
    this.payloadHash = emptyPayloadHash,
    this.configuration = const BaseServiceConfiguration(),
    this.presignedUrl = false,
    Duration? expiresIn,
  })  : normalizePath = configuration.normalizePath,
        omitSessionTokenFromSigning = configuration.omitSessionToken {
    headers = Map.of(request.headers);
    queryParameters = Map.of(request.queryParameters);

    // Apply service configuration to appropriate values for request type.
    if (presignedUrl) {
      ArgumentError.checkNotNull(expiresIn, 'expiresIn');
      this.expiresIn = expiresIn!.inSeconds;
      // Per https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
      assert(
        expiresIn > const Duration(seconds: 1) &&
            expiresIn < const Duration(days: 7),
        'Expiration must be greater than 1 second and less than 7 days',
      );
      canonicalHeaders = CanonicalHeaders(headers);
      signedHeaders = SignedHeaders(canonicalHeaders);
      configuration.apply(
        queryParameters,
        this,
        credentials: credentials,
        payloadHash: payloadHash,
        contentLength: contentLength,
      );
    } else {
      this.expiresIn = null;
      configuration.apply(
        headers,
        this,
        credentials: credentials,
        payloadHash: payloadHash,
        contentLength: contentLength,
      );
      canonicalHeaders = CanonicalHeaders(headers);
      signedHeaders = SignedHeaders(canonicalHeaders);
    }
    canonicalQueryParameters = CanonicalQueryParameters(queryParameters);
  }

  /// Returns the normalized path with double-encoded path segments.
  ///
  /// Uses [url] to normalize the path.
  static String _canonicalPath(
    AWSBaseHttpRequest request, {
    required bool normalizePath,
  }) {
    var path = normalizePath ? url.normalize(request.path) : request.path;

    // `normalize` removes leading and trailing slashes which should be preserved.
    if (normalizePath) {
      if (request.path.endsWith('/')) {
        path = path.ensureEndsWith('/');
      }
      if (!request.path.startsWith('/')) {
        path = path.ensureStartsWith('/');
      }
    }

    return path.split('/').map(Uri.encodeComponent).join('/');
  }

  /// Creates the canonical request string.
  @override
  String toString() {
    final sb = StringBuffer();
    sb.writeln(request.method.value);
    sb.writeln(canonicalPath);
    sb.writeln(canonicalQueryParameters);
    sb.writeln(canonicalHeaders);
    sb.writeln(signedHeaders);
    sb.write(payloadHash);
    return sb.toString();
  }
}

extension on String {
  String ensureStartsWith(String s) {
    if (!startsWith(s)) {
      return '$s$this';
    }
    return this;
  }

  String ensureEndsWith(String s) {
    if (!endsWith(s)) {
      return '${this}$s';
    }
    return this;
  }
}
