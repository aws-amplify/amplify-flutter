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

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:meta/meta.dart';

part 'zone.dart';

/// Zone value flag for signer tests, used to determine behavior of header
/// inclusion on Web, for example.
@internal
const zSigningTest = #_signingTest;

/// {@template aws_signature_v4.aws_sig_v4_signer}
/// The main class for signing requests made to AWS services.
///
/// This signer supports the V4 signing process and, by default, uses
/// the `AWS4-HMAC-SHA256` signing algorithm.
/// {@endtemplate}
class AWSSigV4Signer {
  /// {@macro aws_signature_v4.aws_sig_v4_signer}
  const AWSSigV4Signer({
    this.credentialsProvider = const AWSCredentialsProvider.environment(),
    this.algorithm = AWSAlgorithm.hmacSha256,
  });

  /// Common termination string for different parts of the signing process.
  static const terminationString = 'aws4_request';

  /// The algorithm to use for signing.
  ///
  /// Defaults to [AWSAlgorithm.hmacSha256].
  final AWSAlgorithm algorithm;

  /// The credentials provider for the signer to use.
  final AWSCredentialsProvider credentialsProvider;

  /// Creates a presigned URL for the given [request].
  Future<Uri> presign(
    AWSHttpRequest request, {
    required AWSCredentialScope credentialScope,
    ServiceConfiguration serviceConfiguration =
        const BaseServiceConfiguration(),
    required Duration expiresIn,
  }) async {
    return signZoned(() async {
      final credentials = await credentialsProvider.retrieve();
      final payloadHash = await serviceConfiguration.hashPayload(
        request,
        presignedUrl: true,
      );
      final contentLength = request.contentLength;
      return _sign(
        credentials,
        request,
        credentialScope: credentialScope,
        serviceConfiguration: serviceConfiguration,
        payloadHash: payloadHash,
        contentLength: contentLength,
        expiresIn: expiresIn,
        presignedUrl: true,
      ).uri;
    });
  }

  /// Creates a presigned URL synchronously for the given [request].
  Uri presignSync(
    AWSHttpRequest request, {
    required AWSCredentialScope credentialScope,
    ServiceConfiguration serviceConfiguration =
        const BaseServiceConfiguration(),
    required Duration expiresIn,
  }) {
    return signZoned(() {
      final credentials = credentialsProvider.retrieve();
      if (credentials is! AWSCredentials) {
        throw ArgumentError('Must use presign');
      }
      final payloadHash = serviceConfiguration.hashPayloadSync(
        request,
        presignedUrl: true,
      );
      final contentLength = request.contentLength;
      return _sign(
        credentials,
        request,
        credentialScope: credentialScope,
        serviceConfiguration: serviceConfiguration,
        payloadHash: payloadHash,
        contentLength: contentLength,
        expiresIn: expiresIn,
        presignedUrl: true,
      ).uri;
    });
  }

  /// Signs the given [request] using authorization headers.
  Future<AWSSignedRequest> sign(
    AWSBaseHttpRequest request, {
    required AWSCredentialScope credentialScope,
    ServiceConfiguration serviceConfiguration =
        const BaseServiceConfiguration(),
  }) async {
    return signZoned(() async {
      final credentials = await credentialsProvider.retrieve();
      final payloadHash = await serviceConfiguration.hashPayload(
        request,
        presignedUrl: false,
      );
      final contentLength = await request.contentLength;
      return _sign(
        credentials,
        request,
        credentialScope: credentialScope,
        serviceConfiguration: serviceConfiguration,
        payloadHash: payloadHash,
        contentLength: contentLength,
        presignedUrl: false,
      );
    });
  }

  /// Signs the given [request] synchronously using authorization headers.
  AWSSignedRequest signSync(
    AWSBaseHttpRequest request, {
    required AWSCredentialScope credentialScope,
    ServiceConfiguration serviceConfiguration =
        const BaseServiceConfiguration(),
  }) {
    return signZoned(() {
      final credentials = credentialsProvider.retrieve();
      if (credentials is! AWSCredentials) {
        throw ArgumentError('Must use sign');
      }
      final contentLength = request.hasContentLength
          ? request.contentLength as int
          : throw ArgumentError('Must use sign');
      final payloadHash = serviceConfiguration.hashPayloadSync(
        request,
        presignedUrl: false,
      );
      return _sign(
        credentials,
        request,
        credentialScope: credentialScope,
        serviceConfiguration: serviceConfiguration,
        payloadHash: payloadHash,
        contentLength: contentLength,
        presignedUrl: false,
      );
    });
  }

  AWSSignedRequest _sign(
    AWSCredentials credentials,
    AWSBaseHttpRequest request, {
    required AWSCredentialScope credentialScope,
    required String payloadHash,
    required int contentLength,
    ServiceConfiguration serviceConfiguration =
        const BaseServiceConfiguration(),
    Duration? expiresIn,
    required bool presignedUrl,
  }) {
    final canonicalRequest = presignedUrl
        ? CanonicalRequest.presignedUrl(
            request: request,
            credentials: credentials,
            credentialScope: credentialScope,
            algorithm: algorithm,
            expiresIn: expiresIn!,
            contentLength: contentLength,
            payloadHash: payloadHash,
            serviceConfiguration: serviceConfiguration,
          )
        : CanonicalRequest(
            request: request,
            credentials: credentials,
            credentialScope: credentialScope,
            contentLength: contentLength,
            payloadHash: payloadHash,
            serviceConfiguration: serviceConfiguration,
          );
    final signingKey = algorithm.deriveSigningKey(
      credentials,
      credentialScope,
    );
    final sts = stringToSign(
      algorithm: algorithm,
      credentialScope: credentialScope,
      canonicalRequest: canonicalRequest,
    );
    final seedSignature = algorithm.sign(sts, signingKey);
    final signedBody = serviceConfiguration.signBody(
      algorithm: algorithm,
      contentLength: contentLength,
      signingKey: signingKey,
      seedSignature: seedSignature,
      credentialScope: credentialScope,
      canonicalRequest: canonicalRequest,
    );

    return _buildSignedRequest(
      credentials: credentials,
      credentialScope: credentialScope,
      signature: seedSignature,
      body: signedBody,
      contentLength: contentLength,
      canonicalRequest: canonicalRequest,
    );
  }

  /// Creates the string-to-sign (STS) for the canonical request.
  @visibleForTesting
  String stringToSign({
    required AWSAlgorithm algorithm,
    required AWSCredentialScope credentialScope,
    required CanonicalRequest canonicalRequest,
  }) {
    final sb = StringBuffer()
      ..writeln(algorithm)
      ..writeln(credentialScope.dateTime)
      ..writeln(credentialScope)
      ..write(canonicalRequest.hash);

    return sb.toString();
  }

  /// Creates an authorization header for a signed request.
  @visibleForTesting
  String createAuthorizationHeader({
    required AWSCredentials credentials,
    required AWSCredentialScope credentialScope,
    required SignedHeaders signedHeaders,
    required String signature,
  }) {
    return [
      algorithm.id,
      'Credential=${credentials.accessKeyId}/$credentialScope,',
      'SignedHeaders=$signedHeaders,',
      'Signature=$signature',
    ].join(' ');
  }

  /// Builds a signed request from [canonicalRequest] and [signature].
  AWSSignedRequest _buildSignedRequest({
    required AWSCredentials credentials,
    required CanonicalRequest canonicalRequest,
    required String signature,
    required Stream<List<int>> body,
    required int contentLength,
    required AWSCredentialScope credentialScope,
  }) {
    // The signing process requires component keys be encoded. However, the
    // actual HTTP request should have the pre-encoded keys.
    final queryParameters = Map.of(canonicalRequest.queryParameters);

    // Similar to query parameters, some header values are canonicalized for
    // signing. However their original values should be included in the
    // headers map of the HTTP request.
    final headers = Map.of(canonicalRequest.headers);

    // If the session token was omitted from signing, include it now.
    final sessionToken = credentials.sessionToken;
    final includeSessionToken =
        sessionToken != null && canonicalRequest.omitSessionTokenFromSigning;
    if (canonicalRequest.presignedUrl) {
      queryParameters[AWSHeaders.signature] = signature;
      if (includeSessionToken) {
        queryParameters[AWSHeaders.securityToken] = sessionToken;
      }
    } else {
      headers[AWSHeaders.authorization] = createAuthorizationHeader(
        credentials: credentials,
        credentialScope: credentialScope,
        signedHeaders: canonicalRequest.signedHeaders,
        signature: signature,
      );
      if (includeSessionToken) {
        headers[AWSHeaders.securityToken] = sessionToken;
      }
    }

    // On Web, sign the `Host` and `Content-Length` headers, but do not send
    // them as part of the request, since these will be included automatically
    // by the browser and most now restrict the ability to set them via code.
    final isSigningTest = Zone.current[zSigningTest] as bool? ?? false;
    if (zIsWeb && !isSigningTest) {
      headers
        ..remove(AWSHeaders.host)
        ..remove(AWSHeaders.contentLength);
    }

    final originalRequest = canonicalRequest.request;
    return AWSSignedRequest(
      canonicalRequest: canonicalRequest,
      signature: signature,
      method: originalRequest.method,
      host: originalRequest.host,
      path: originalRequest.path,
      body: body,
      contentLength: contentLength,
      headers: headers,
      queryParameters: queryParameters,
    );
  }
}
