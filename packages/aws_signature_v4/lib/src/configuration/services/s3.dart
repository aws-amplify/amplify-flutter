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
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';

/// Payload encoding for S3 requests.
enum S3PayloadEncoding {
  /// No encoding.
  none,
}

extension on S3PayloadEncoding {
  String get value => toString().split('.')[1];

  Codec<List<int>, List<int>> get encoding {
    switch (this) {
      case S3PayloadEncoding.none:
        return const IdentityCodec();
    }
  }
}

/// {@template aws_signature_v4.s3_service_configuration}
/// The base service configuration for AWS S3 requests.
/// {@endtemplate}
class S3ServiceConfiguration extends BaseServiceConfiguration {
  // 8 KB is the minimum chunk size.
  static const int _minChunkSize = 8 * 1024;

  // 64 KB is the recommended chunk size.
  static const int _defaultChunkSize = 64 * 1024;

  static const _chunkedPayloadSeedHash = 'STREAMING-AWS4-HMAC-SHA256-PAYLOAD';
  static const _unsignedChunkedPayloadSeedHash = 'UNSIGNED-PAYLOAD';
  static final _sigSep = Uint8List.fromList(';chunk-signature='.codeUnits);
  static final _sep = Uint8List.fromList('\r\n'.codeUnits);

  /// Whether to sign the payload (body).
  final bool signPayload;

  /// Whether the request should be chunked.
  final bool chunked;

  /// The chunk size, if [chunked].
  final int chunkSize;

  /// The encoding to use for the body.
  final S3PayloadEncoding encoding;

  /// {@macro aws_signature_v4.s3_service_configuration}
  S3ServiceConfiguration({
    this.signPayload = true,
    this.chunked = false,
    int chunkSize = _defaultChunkSize,
    this.encoding = S3PayloadEncoding.none,
  })  : chunkSize = max(chunkSize, _minChunkSize),
        super(
          normalizePath: false,
          omitSessionToken: false,
        );

  int _calculateContentLength(AWSBaseHttpRequest request, int decodedLength) {
    var chunkedLength = 0;
    var metadataLength = 0;
    var numChunks = (decodedLength / chunkSize).ceil() + 1;
    final hashLength = sha256.blockSize;
    for (var i = 0; i < numChunks; i++) {
      var chunkLength = min(decodedLength - chunkedLength, chunkSize);
      metadataLength += chunkLength.toRadixString(16).codeUnits.length +
          _sigSep.length +
          (2 * _sep.length) +
          hashLength;
      chunkedLength += chunkLength;
    }
    return decodedLength + metadataLength;
  }

  @override
  void applySigned(
    Map<String, String> headers, {
    required AWSBaseHttpRequest request,
    required AWSCredentialScope credentialScope,
    required AWSCredentials credentials,
    required String payloadHash,
    required int contentLength,
  }) {
    super.applySigned(
      headers,
      request: request,
      credentialScope: credentialScope,
      credentials: credentials,
      payloadHash: payloadHash,
      contentLength: contentLength,
    );

    if (chunked) {
      // Raw size of the data to be sent, before compression and without metadata.
      headers[AWSHeaders.decodedContentLength] = contentLength.toString();

      if (encoding == S3PayloadEncoding.none) {
        headers[AWSHeaders.contentEncoding] = 'aws-chunked';
        headers[AWSHeaders.contentLength] = _calculateContentLength(
          request,
          contentLength,
        ).toString();
      } else {
        headers[AWSHeaders.contentEncoding] = 'aws-chunked,${encoding.value}';
      }
    }

    if (signPayload) {
      headers[AWSHeaders.contentSHA256] = payloadHash;
    } else {
      headers[AWSHeaders.contentSHA256] = 'UNSIGNED-PAYLOAD';
    }
  }

  @override
  Future<String> hashPayload(
    AWSBaseHttpRequest request, {
    required bool presignedUrl,
  }) async {
    if (chunked || presignedUrl) {
      return hashPayloadSync(request, presignedUrl: presignedUrl);
    }
    return super.hashPayload(request, presignedUrl: presignedUrl);
  }

  @override
  String hashPayloadSync(
    AWSBaseHttpRequest request, {
    required bool presignedUrl,
  }) {
    if (presignedUrl) {
      return _unsignedChunkedPayloadSeedHash;
    }
    if (chunked) {
      if (signPayload) {
        return _chunkedPayloadSeedHash;
      }
      return _unsignedChunkedPayloadSeedHash;
    }
    return super.hashPayloadSync(request, presignedUrl: presignedUrl);
  }

  @override
  Stream<List<int>> signBody({
    required AWSAlgorithm algorithm,
    required int contentLength,
    required List<int> signingKey,
    required String seedSignature,
    required AWSCredentialScope credentialScope,
    required CanonicalRequest canonicalRequest,
  }) async* {
    if (canonicalRequest.presignedUrl || !signPayload || !chunked) {
      yield* super.signBody(
        algorithm: algorithm,
        contentLength: contentLength,
        signingKey: signingKey,
        seedSignature: seedSignature,
        credentialScope: credentialScope,
        canonicalRequest: canonicalRequest,
      );
      return;
    }

    final reader = ChunkedStreamReader(
      encoding == S3PayloadEncoding.none
          ? canonicalRequest.request.body
          : canonicalRequest.request.body.transform(encoding.encoding.encoder),
    );
    final decodedLength = contentLength;
    var previousSignature = seedSignature;
    var chunkedLength = 0;
    while (true) {
      var size = min(decodedLength - chunkedLength, chunkSize);
      var chunk = await reader.readBytes(size);
      final sb = StringBuffer()
        ..writeln('$algorithm-PAYLOAD')
        ..writeln(credentialScope.dateTime)
        ..writeln(credentialScope)
        ..writeln(previousSignature)
        ..writeln(emptyPayloadHash)
        ..write(payloadEncoder.convert(chunk));
      final stringToSign = sb.toString();

      final chunkSignature = algorithm.sign(stringToSign, signingKey);
      final bytes = BytesBuilder(copy: false)
        ..add(size.toRadixString(16).codeUnits)
        ..add(_sigSep)
        ..add(chunkSignature.codeUnits)
        ..add(_sep)
        ..add(chunk)
        ..add(_sep);
      yield bytes.takeBytes();

      previousSignature = chunkSignature;
      chunkedLength += size;

      if (size == 0) {
        break;
      }
    }
  }
}
