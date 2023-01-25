// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';
import 'dart:convert';

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:collection/collection.dart';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:path/path.dart';

part 'canonical_headers.dart';
part 'canonical_path.dart';
part 'canonical_query_parameters.dart';
part 'canonical_request_util.dart';
part 'signed_headers.dart';

/// {@template aws_signature_v4.canonical_request}
/// A canonicalized request, used for signing via the SigV4 signing process.
/// {@endtemplate}
class CanonicalRequest {
  /// {@macro aws_signature_v4.canonical_request}
  factory CanonicalRequest({
    required AWSBaseHttpRequest request,
    required AWSCredentials credentials,
    required AWSCredentialScope credentialScope,
    required int contentLength,
    required String payloadHash,
    ServiceConfiguration serviceConfiguration =
        const BaseServiceConfiguration(),
  }) {
    final headers = Map.of(request.headers);
    final queryParameters = Map.of(request.queryParameters);

    serviceConfiguration.applySigned(
      headers,
      request: request,
      credentialScope: credentialScope,
      credentials: credentials,
      payloadHash: payloadHash,
      contentLength: contentLength,
    );
    final canonicalQueryParameters = CanonicalQueryParameters(queryParameters);
    final canonicalHeaders = CanonicalHeaders(headers);
    final signedHeaders = SignedHeaders(canonicalHeaders);

    return CanonicalRequest._(
      request: request,
      queryParameters: queryParameters,
      canonicalQueryParameters: canonicalQueryParameters,
      headers: headers,
      canonicalHeaders: canonicalHeaders,
      signedHeaders: signedHeaders,
      credentialScope: credentialScope,
      presignedUrl: false,
      contentLength: contentLength,
      payloadHash: payloadHash,
      serviceConfiguration: serviceConfiguration,
    );
  }

  /// {@macro aws_signature_v4.canonical_request}
  factory CanonicalRequest.presignedUrl({
    required AWSBaseHttpRequest request,
    required AWSCredentials credentials,
    required AWSCredentialScope credentialScope,
    required AWSAlgorithm algorithm,
    required Duration expiresIn,
    int contentLength = 0,
    String payloadHash = emptyPayloadHash,
    ServiceConfiguration serviceConfiguration =
        const BaseServiceConfiguration(),
  }) {
    final headers = Map.of(request.headers);
    // Include header for signing since it will be included by the HTTP client
    // of the end user.
    if (!headers.containsKey(AWSHeaders.host)) {
      headers[AWSHeaders.host] = request.host;
    }
    final queryParameters = Map.of(request.queryParameters);

    // Per https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    assert(
      expiresIn >= const Duration(seconds: 1) &&
          expiresIn <= const Duration(days: 7),
      'Expiration must be greater than 1 second and less than 7 days',
    );

    final canonicalHeaders = CanonicalHeaders(headers);
    final signedHeaders = SignedHeaders(canonicalHeaders);
    serviceConfiguration.applyPresigned(
      queryParameters,
      request: request,
      credentialScope: credentialScope,
      algorithm: algorithm,
      expiresIn: expiresIn.inSeconds,
      signedHeaders: signedHeaders,
      credentials: credentials,
    );

    return CanonicalRequest._(
      request: request,
      queryParameters: queryParameters,
      canonicalQueryParameters: CanonicalQueryParameters(queryParameters),
      headers: headers,
      canonicalHeaders: canonicalHeaders,
      signedHeaders: signedHeaders,
      credentialScope: credentialScope,
      algorithm: algorithm,
      expiresIn: expiresIn,
      presignedUrl: true,
      contentLength: contentLength,
      payloadHash: payloadHash,
      serviceConfiguration: serviceConfiguration,
    );
  }

  /// {@macro aws_signature_v4.canonical_request}
  CanonicalRequest._({
    required this.request,
    required this.queryParameters,
    required this.canonicalQueryParameters,
    required this.headers,
    required this.canonicalHeaders,
    required this.signedHeaders,
    required this.credentialScope,
    required this.contentLength,
    required this.payloadHash,
    required this.serviceConfiguration,
    required this.presignedUrl,
    this.algorithm,
    Duration? expiresIn,
  })  : normalizePath = serviceConfiguration.normalizePath,
        omitSessionTokenFromSigning = serviceConfiguration.omitSessionToken,
        expiresIn = expiresIn?.inSeconds;

  /// The original HTTP request.
  final AWSBaseHttpRequest request;

  /// The scope for the request.
  final AWSCredentialScope credentialScope;

  /// The canonicalized request path.
  late final String canonicalPath = CanonicalPath.canonicalize(
    request.path,
    serviceConfiguration: serviceConfiguration,
  );

  /// The request query parameters, with AWS values added, if necessary.
  final Map<String, String> queryParameters;

  /// The canonicalized [queryParameters].
  final CanonicalQueryParameters canonicalQueryParameters;

  /// The request headers, with AWS values added, if necessary.
  final Map<String, String> headers;

  /// The canonicalized [headers].
  final CanonicalHeaders canonicalHeaders;

  /// The list of signed headers.
  final SignedHeaders signedHeaders;

  /// Whether or not to normalize the URI path.
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
  /// If `true`, the session token will be added to the request after the
  /// signing process.
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
  final int? expiresIn;

  /// The configuration to use for canonicalizing the request.
  final ServiceConfiguration serviceConfiguration;

  /// The payload content length.
  final int contentLength;

  /// The computed hash of the canonical request.
  late final String hash = payloadEncoder.convert(utf8.encode(toString()));

  /// The payload hash.
  final String payloadHash;

  /// Creates the canonical request string.
  @override
  String toString() {
    final sb = StringBuffer()
      ..writeln(request.method.value)
      ..writeln(canonicalPath)
      ..writeln(canonicalQueryParameters)
      ..writeln(canonicalHeaders)
      ..writeln(signedHeaders)
      ..write(payloadHash);
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
