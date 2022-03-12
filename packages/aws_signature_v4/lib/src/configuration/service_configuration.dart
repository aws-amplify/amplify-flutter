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
import 'package:http/http.dart';
import 'package:meta/meta.dart';

/// {@template aws_signature_v4.service_configuration}
/// A description of an [AWSSigV4Signer] configuration.
/// {@endtemplate}
///
/// All requests made to AWS services must be processed in the precise way
/// that service expects. Since each service is different, this class provides
/// a way to override steps of the signing process which need precendence over
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
  })  : normalizePath = normalizePath ?? true,
        omitSessionToken = omitSessionToken ?? false;

  /// Whether to normalize paths in the canonical request.
  final bool normalizePath;

  /// Whether to omit the session token during signing.
  final bool omitSessionToken;

  /// Applies service-specific keys to [base] with values from [canonicalRequest]
  /// and [credentials].
  @mustCallSuper
  void apply(
    Map<String, String> base,
    CanonicalRequest canonicalRequest, {
    required AWSCredentials credentials,
    required String payloadHash,
    required int contentLength,
  });

  /// Whether to include the body hash in the signing process.
  bool includeBodyHash(
    CanonicalRequest request,
    int contentLength,
  );

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
    bool? normalizePath,
    bool? omitSessionToken,
  }) : super._(
          normalizePath: normalizePath,
          omitSessionToken: omitSessionToken,
        );

  @override
  void apply(
    Map<String, String> base,
    CanonicalRequest canonicalRequest, {
    required AWSCredentials credentials,
    required String payloadHash,
    required int contentLength,
  }) {
    final request = canonicalRequest.request;
    final presignedUrl = canonicalRequest.presignedUrl;
    final credentialScope = canonicalRequest.credentialScope;
    final algorithm = canonicalRequest.algorithm;
    final expiresIn = canonicalRequest.expiresIn;
    final omitSessionTokenFromSigning =
        canonicalRequest.omitSessionTokenFromSigning;

    base.addAll({
      if (!request.headers.containsKey(AWSHeaders.host))
        AWSHeaders.host: request.host,
      AWSHeaders.date: credentialScope.dateTime.formatFull(),
      if (presignedUrl)
        AWSHeaders.signedHeaders: canonicalRequest.signedHeaders.toString(),
      if (presignedUrl && algorithm != null) AWSHeaders.algorithm: algorithm.id,
      if (presignedUrl)
        AWSHeaders.credential: '${credentials.accessKeyId}/$credentialScope',
      if (presignedUrl && expiresIn != null)
        AWSHeaders.expires: expiresIn.toString(),
      if (includeBodyHash(canonicalRequest, contentLength))
        AWSHeaders.contentSHA256: canonicalRequest.payloadHash,
      if (credentials.sessionToken != null && !omitSessionTokenFromSigning)
        AWSHeaders.securityToken: credentials.sessionToken!,
    });
  }

  @override
  bool includeBodyHash(
    CanonicalRequest request,
    int contentLength,
  ) {
    return !request.presignedUrl && contentLength > 0;
  }

  @override
  Future<String> hashPayload(
    AWSBaseHttpRequest request, {
    required bool presignedUrl,
  }) async {
    if (request is AWSStreamedHttpRequest) {
      final payload = await ByteStream(request.split()).toBytes();
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
