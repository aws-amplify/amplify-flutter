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
import 'package:aws_signature_v4/src/version.dart';
import 'package:meta/meta.dart';

/// {@template aws_signature_v4.service_configuration}
/// A description of an [AWSSigV4Signer] configuration.
/// {@endtemplate}
///
/// All requests made to AWS services must be processed in the precise way
/// that service expects. Since each service is different, this class provides
/// a way to override steps of the signing process which need precedence over
/// the [BaseServiceConfiguration].
@sealed
abstract class ServiceConfiguration {
  /// {@macro aws_signature_v4.service_configuration}
  const factory ServiceConfiguration({
    bool? normalizePath,
    bool? omitSessionToken,
  }) = BaseServiceConfiguration;

  const ServiceConfiguration._({
    bool? normalizePath,
    bool? omitSessionToken,
    bool? doubleEncodePathSegments,
  })  : normalizePath = normalizePath ?? true,
        omitSessionToken = omitSessionToken ?? false,
        doubleEncodePathSegments = doubleEncodePathSegments ?? true;

  /// Whether to normalize paths in the canonical request.
  ///
  /// Defaults to `true`.
  final bool normalizePath;

  /// Whether to omit the session token during signing.
  ///
  /// Defaults to `false`.
  final bool omitSessionToken;

  /// Whether path segments should be encoded twice.
  ///
  /// If `false`, path segments are only encoded once.
  ///
  /// Defaults to `true`.
  final bool doubleEncodePathSegments;

  /// Applies service-specific keys to [headers] for signed header requests.
  @mustCallSuper
  void applySigned(
    Map<String, String> headers, {
    required AWSBaseHttpRequest request,
    required AWSCredentialScope credentialScope,
    required AWSCredentials credentials,
    required String payloadHash,
    required int contentLength,
  });

  /// Applies service-specific keys to [queryParameters] for pre-signed URL
  /// requests.
  @mustCallSuper
  void applyPresigned(
    Map<String, String> queryParameters, {
    required AWSBaseHttpRequest request,
    required AWSCredentialScope credentialScope,
    required AWSAlgorithm algorithm,
    required SignedHeaders signedHeaders,
    required int expiresIn,
    required AWSCredentials credentials,
  });

  /// Hashes the request payload for the canonical request.
  Future<String> hashPayload(
    AWSBaseHttpRequest request, {
    required bool presignedUrl,
  });

  /// Hashes the request payload for the canonical request synchronously.
  String hashPayloadSync(
    AWSBaseHttpRequest request, {
    required bool presignedUrl,
  });

  /// Transforms the request body using the [signingKey] and [seedSignature].
  Stream<List<int>> signBody({
    required AWSAlgorithm algorithm,
    required int contentLength,
    required List<int> signingKey,
    required String seedSignature,
    required AWSCredentialScope credentialScope,
    required CanonicalRequest canonicalRequest,
  });
}

/// {@template aws_signature_v4.base_service_configuration}
/// The base service configuration for AWS services.
/// {@endtemplate}
class BaseServiceConfiguration extends ServiceConfiguration {
  /// {@macro aws_signature_v4.base_service_configuration}
  const BaseServiceConfiguration({
    super.normalizePath,
    super.omitSessionToken,
    super.doubleEncodePathSegments,
  }) : super._();

  @override
  void applySigned(
    Map<String, String> headers, {
    required AWSBaseHttpRequest request,
    required AWSCredentialScope credentialScope,
    required AWSCredentials credentials,
    required String payloadHash,
    required int contentLength,
  }) {
    final includeBodyHash = contentLength > 0;
    headers.addAll({
      if (!request.headers.containsKey(AWSHeaders.host))
        AWSHeaders.host: request.host,
      AWSHeaders.date: credentialScope.dateTime.formatFull(),
      if (includeBodyHash) AWSHeaders.contentSHA256: payloadHash,
      if (credentials.sessionToken != null && !omitSessionToken)
        AWSHeaders.securityToken: credentials.sessionToken!,
    });

    // Add user agent header
    final isSigningTest = Zone.current[zSigningTest] as bool? ?? false;
    if (!isSigningTest) {
      const userAgent = 'aws-sdk-dart/$packageVersion';
      headers.update(
        zIsWeb ? AWSHeaders.amzUserAgent : AWSHeaders.userAgent,
        (value) => '$value $userAgent',
        ifAbsent: () => userAgent,
      );
    }
  }

  @override
  void applyPresigned(
    Map<String, String> queryParameters, {
    required AWSBaseHttpRequest request,
    required AWSCredentialScope credentialScope,
    required AWSAlgorithm algorithm,
    required SignedHeaders signedHeaders,
    required int expiresIn,
    required AWSCredentials credentials,
  }) {
    queryParameters.addAll({
      if (!request.headers.containsKey(AWSHeaders.host))
        AWSHeaders.host: request.host,
      AWSHeaders.date: credentialScope.dateTime.formatFull(),
      AWSHeaders.signedHeaders: signedHeaders.toString(),
      AWSHeaders.algorithm: algorithm.id,
      AWSHeaders.credential: '${credentials.accessKeyId}/$credentialScope',
      AWSHeaders.expires: expiresIn.toString(),
      if (credentials.sessionToken != null && !omitSessionToken)
        AWSHeaders.securityToken: credentials.sessionToken!,
    });
  }

  @override
  Future<String> hashPayload(
    AWSBaseHttpRequest request, {
    required bool presignedUrl,
  }) async {
    if (request is AWSStreamedHttpRequest) {
      final payload = await request.bodyBytes;
      return payloadEncoder.convert(payload);
    }
    return hashPayloadSync(request, presignedUrl: presignedUrl);
  }

  @override
  String hashPayloadSync(
    AWSBaseHttpRequest request, {
    required bool presignedUrl,
  }) {
    if (request is! AWSHttpRequest) {
      throw ArgumentError('Streaming requests cannot be hashed synchronously.');
    }
    return payloadEncoder.convert(request.bodyBytes);
  }

  @override
  Stream<List<int>> signBody({
    required AWSAlgorithm algorithm,
    required int contentLength,
    required List<int> signingKey,
    required String seedSignature,
    required AWSCredentialScope credentialScope,
    required CanonicalRequest canonicalRequest,
  }) {
    // By default, the body is not signed.
    return canonicalRequest.request.body;
  }
}
